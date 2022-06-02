using System.Collections.Generic;
using System.Drawing;
using System.IO;
using System.Linq;
using FaceGenerator.Dcgan.Layers;
using FaceGenerator.Dcgan.Models;
using Tensorflow;
using Tensorflow.Keras;
using Tensorflow.Keras.ArgsDefinition;
using Tensorflow.Keras.Layers;
using Tensorflow.Keras.Optimizers;
using static FaceGenerator.Dcgan.TensorflowUtils;

#pragma warning disable CA1416
namespace FaceGenerator.Dcgan
{
    public class Dcgan
    {
        private const int Epochs = 30;
        private const int EpochTestImages = 10;
        private const int ImageWidth = 64;
        private const int ImageHeight = 64;
        private const int BatchSize = 32;
        private const int LatentDim = 128;
        private const string ImagesDirectoryPath = "img_align_celeba_shortened";

        private readonly SequentialModel _generator;
        private readonly SequentialModel _discriminator;

        private readonly Adam _discriminatorOptimizer;
        private readonly Adam _generatorOptimizer;

        public static int Ldim => LatentDim;

        public Dcgan()
        {
            _generator = GeneratorModel();
            _discriminator = DiscriminatorModel();

            _generatorOptimizer = new Adam(learning_rate: 0.0001f);
            _discriminatorOptimizer = new Adam(learning_rate: 0.0001f);
        }

        public void Train()
        {
            if (!Directory.Exists("checkpoints"))
            {
                Directory.CreateDirectory("checkpoints");
            }

            var imagesDataset = ReadImagesFromDirectory().ToList();

            for (int epoch = 0; epoch < Epochs; epoch++)
            {
                var batchIndex = 0;
                foreach (var imagesBatch in imagesDataset)
                {
                    var randomLatentVectors = Normal(new Shape(BatchSize, LatentDim));

                    var generatedImages = _generator.predict(randomLatentVectors)[0];
                    var realImages = imagesBatch.Item1 / 255.0f;

                    var labels = Concat(OnesTensorForBatch(BatchSize), ZerosTensorForBatch(BatchSize));
                    labels += 0.05 * RandomUniform(labels.shape);

                    var discriminatorPredictions = Concat(_discriminator.predict(generatedImages)[0],
                        _discriminator.predict(realImages)[0]);

                    UpdateWeights(_discriminator,
                        discriminatorPredictions,
                        labels,
                        _discriminatorOptimizer);

                    randomLatentVectors = Normal(new Shape(BatchSize, LatentDim));
                    var misleadingLabels = ZerosTensorForBatch(BatchSize);

                    UpdateWeights(_generator,
                        _discriminator.predict(_generator.predict(randomLatentVectors)),
                        misleadingLabels,
                        _generatorOptimizer);

                    batchIndex++;
                }

                OnEpochEnd(epoch, (epoch + 1) % 5 == 0);
            }
        }

        private void OnEpochEnd(int epoch, bool createCheckpoint)
        {
            var randomLatentVectors = Normal(new Shape(EpochTestImages, LatentDim));
            var generatedImages = _generator.predict(randomLatentVectors).FirstOrDefault();

            if (generatedImages == null)
            {
                return;
            }

            var imagePixels = generatedImages.numpy().ToMultiDimArray<float>() as float[,,,];

            if (!Directory.Exists($"{epoch + 1}"))
            {
                Directory.CreateDirectory($"{epoch + 1}");
            }
            for (int i = 0; i < EpochTestImages; i++)
            {
                CreateImage($"{epoch + 1}/image_{epoch + 1}_{i + 1}.jpg", imagePixels, i);
            }

            if (createCheckpoint)
            {
                _generator.save($"checkpoints/epoch_checkpoint_{epoch + 1}");
            }
        }

        private IDatasetV2 ReadImagesFromDirectory()
        {
            return KerasApi.keras.layers.preprocessing.image_dataset_from_directory(ImagesDirectoryPath,
                label_mode: "None",
                image_size: new Shape(ImageWidth, ImageHeight),
                batch_size: BatchSize);
        }

        private void CreateImage(string filename, float[,,,] imagePixels, int imageIndex)
        {
            using var bmp = new Bitmap(ImageWidth, ImageHeight);

            for (int i = 0; i < ImageWidth; i++)
            {
                for (int j = 0; j < ImageHeight; j++)
                {
                    var r = imagePixels[imageIndex, i, j, 0] * 255;
                    var g = imagePixels[imageIndex, i, j, 1] * 255;
                    var b = imagePixels[imageIndex, i, j, 2] * 255;

                    bmp.SetPixel(i, j, Color.FromArgb((byte)r, (byte)g, (byte)b));
                }
            }

            bmp.Save(filename);
        }

        private static SequentialModel GeneratorModel()
        {
            var seq = new SequentialModel(new SequentialArgs
            {
                Layers = new List<ILayer>
                {
                    new DenseLayer(ZerosTensorOfShape(new Shape(LatentDim)), new DenseArgs
                    {
                        Units = 8 * 8 * LatentDim
                    }),
                    new Reshape(new ReshapeArgs
                    {
                        TargetShape = new Shape(8, 8, LatentDim)
                    }),
                    new Conv2DTransposeLayer(LatentDim, new Conv2DArgs
                    {
                        Filters = 128,
                        KernelSize = 4,
                        Strides = new Shape(2, 2),
                        Padding = "same"
                    }),
                    new LeakyReLu(new LeakyReLuArgs
                    {
                        Alpha = 0.2f
                    }),
                    new Conv2DTransposeLayer(128, new Conv2DArgs
                    {
                        Filters = 256,
                        KernelSize = 4,
                        Strides = new Shape(2, 2),
                        Padding = "same"
                    }),
                    new LeakyReLu(new LeakyReLuArgs
                    {
                        Alpha = 0.2f
                    }),
                    new Conv2DTransposeLayer(256, new Conv2DArgs
                    {
                        Filters = 512,
                        KernelSize = 4,
                        Strides = new Shape(2, 2),
                        Padding = "same"
                    }),
                    new LeakyReLu(new LeakyReLuArgs
                    {
                        Alpha = 0.2f
                    }),
                    new Conv2DTransposeLayer(512, new Conv2DArgs
                    {
                        Filters = 3,
                        KernelSize = 5,
                        Padding = "same",
                        Activation = KerasApi.keras.activations.Sigmoid
                    }),
                }
            });

            return seq;
        }

        private static SequentialModel DiscriminatorModel()
        {
            var seq = new SequentialModel(new SequentialArgs
            {
                Layers = new List<ILayer>
                {
                    new Conv2DLayer(3, new Conv2DArgs
                    {
                        Filters = 64,
                        KernelSize = 4,
                        Strides = new Shape(2, 2),
                        Padding = "same"
                    }),
                    new LeakyReLu(new LeakyReLuArgs
                    {
                        Alpha = 0.2f
                    }),
                    new Conv2DLayer(64, new Conv2DArgs
                    {
                        Filters = 128,
                        KernelSize = 4,
                        Strides = new Shape(2, 2),
                        Padding = "same"
                    }),
                    new LeakyReLu(new LeakyReLuArgs
                    {
                        Alpha = 0.2f
                    }),
                    new Conv2DLayer(128, new Conv2DArgs
                    {
                        Filters = 128,
                        KernelSize = 4,
                        Strides = new Shape(2, 2),
                        Padding = "same"
                    }),
                    new LeakyReLu(new LeakyReLuArgs
                    {
                        Alpha = 0.2f
                    }),
                    new Flatten(new FlattenArgs()),
                    new Dropout(new DropoutArgs
                    {
                        Rate = 0.2f
                    }),
                    new DenseLayer(ZerosTensorOfShape(new Shape(8 * 8 * 128)), new DenseArgs
                    {
                        Units = 1,
                        Activation = KerasApi.keras.activations.Sigmoid
                    })
                }
            });

            return seq;
        }
    }
}
