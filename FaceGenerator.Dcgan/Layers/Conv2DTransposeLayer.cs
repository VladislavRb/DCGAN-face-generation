using System.Collections.Generic;
using Tensorflow;
using Tensorflow.Keras.ArgsDefinition;
using Tensorflow.Keras.Layers;

namespace FaceGenerator.Dcgan.Layers
{
    public class Conv2DTransposeLayer : Conv2DTranspose
    {
        public override List<IVariableV1> trainable_variables => new List<IVariableV1>{ kernel };

        public Conv2DTransposeLayer(int inputFeatureMaps, Conv2DArgs args) : base(args)
        {
            var shape = new Shape(kernel_size[0], kernel_size[1], filters, inputFeatureMaps);

            kernel = add_weight("kernel", shape, TF_DataType.TF_FLOAT, kernel_initializer, kernel_regularizer);
            if (use_bias)
            {
                bias = add_weight("bias", filters, TF_DataType.TF_FLOAT, bias_initializer);
            }
            built = true;
        }
    }
}
