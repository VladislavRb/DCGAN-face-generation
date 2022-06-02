using System.Collections.ObjectModel;
using System.Linq;
using FaceGenerator.Dcgan.Models;
using Tensorflow;
using Tensorflow.Gradients;
using Tensorflow.Keras.Optimizers;
using Tensorflow.NumPy;

#pragma warning disable CA1416
namespace FaceGenerator.Dcgan
{
    public static class TensorflowUtils
    {
        private static tensorflow tf = Binding.tf;

        public static void UpdateWeights(SequentialModel model, Tensor predictions, Tensor labels, Adam optimizer)
        {
            using var tape = tf.GradientTape();

            var loss = BinaryCrossEntropy(predictions, labels);

            var trainableWeights = model.trainable_variables
                .Select(tv => tv.AsTensor())
                .ToArray();
            var grads = Gradient(tape, tf.constant(loss, TF_DataType.TF_FLOAT), trainableWeights);

            optimizer.apply_gradients(grads.Zip(trainableWeights.Select(tw => new ResourceVariable(tw))));
        }

        public static Tensor Concat(Tensor t1, Tensor t2)
        {
            return tf.concat(new Collection<Tensor> { t1, t2 }, axis: 0);
        }

        public static Tensor OnesTensorForBatch(int batchSize)
        {
            return tf.ones(new Shape(batchSize, 1));
        }

        public static Tensor ZerosTensorOfShape(Shape shape)
        {
            return tf.zeros(shape);
        }

        public static Tensor ZerosTensorForBatch(int batchSize)
        {
            return ZerosTensorOfShape(new Shape(batchSize, 1));
        }

        public static Tensor RandomUniform(Shape shape)
        {
            return tf.random.uniform(shape);
        }

        public static Tensor Normal(Shape shape)
        {
            return tf.random.normal(shape);
        }

        private static float BinaryCrossEntropy(Tensor predictions, Tensor labels)
        {
            var losses = -(labels * tf.math.log(predictions) + (1 - labels) * tf.math.log(1 - predictions));
            return losses.numpy().Average(NDArrayConverter.Scalar<float>);
        }

        private static Tensor[] Gradient(GradientTape t, Tensor target, Tensor[] sources)
        {
            var tape = t.stop_recording();
            foreach (var source in sources)
            {
                t.watch(source);
            }

            return tf.Runner.TFE_TapeGradient(tape, new[] { target }, sources, null);
        }
    }
}
