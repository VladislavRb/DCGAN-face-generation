using System;
using System.Collections.Generic;
using Tensorflow;
using Tensorflow.Keras;
using Tensorflow.Keras.ArgsDefinition;
using Tensorflow.Keras.Engine;
using Tensorflow.Keras.Utils;
using Tensorflow.Operations;

namespace FaceGenerator.Dcgan.Layers
{
    public class Conv2DLayer : Layer
    {
        private ConvolutionalArgs args;
        protected IVariableV1 kernel;
        protected IVariableV1 bias;
        private ConvolutionInternal _convolution_op;
        protected string _tf_data_format;

        protected int rank => args.Rank;

        protected int filters => args.Filters;

        protected Shape kernel_size => args.KernelSize;

        protected Shape strides => args.Strides;

        protected string padding => args.Padding;

        protected string data_format => args.DataFormat;

        protected Shape dilation_rate => args.DilationRate;

        protected Activation activation => args.Activation;

        protected bool use_bias => args.UseBias;

        protected IInitializer kernel_initializer => args.KernelInitializer;

        protected IRegularizer kernel_regularizer => args.KernelRegularizer;

        protected IInitializer bias_initializer => args.BiasInitializer;

        public override List<IVariableV1> trainable_variables => new List<IVariableV1> { kernel };

        public Conv2DLayer(int inputFeatureMaps, ConvolutionalArgs args)
          : base(args)
        {
            this.args = args;
            args.KernelSize = conv_utils.normalize_tuple(args.KernelSize.as_int_list(), args.Rank, nameof(kernel_size));
            args.Strides = conv_utils.normalize_tuple(args.Strides.as_int_list(), args.Rank, nameof(strides));
            args.Padding = conv_utils.normalize_padding(args.Padding);
            args.DataFormat = conv_utils.normalize_data_format(args.DataFormat);
            args.DilationRate = conv_utils.normalize_tuple(args.DilationRate.as_int_list(), args.Rank, nameof(dilation_rate));
            inputSpec = new InputSpec(ndim: new int?(this.rank + 2));
            _tf_data_format = conv_utils.convert_data_format(this.data_format, this.rank + 2);

            build(inputFeatureMaps);
        }

        protected void build(int inputFeatureMaps)
        {
            var kernelShape = new Shape(kernel_size[0], kernel_size[1], inputFeatureMaps, filters);
            kernel = add_weight("kernel", kernelShape, DType, kernel_initializer, kernel_regularizer);
            if (use_bias)
            {
                bias = add_weight("bias", filters, DType, bias_initializer);
            }
            
            inputSpec = new InputSpec(min_ndim: rank + 2, axes: new Dictionary<int, int>()
            {
                {-1, inputFeatureMaps }
            });
            var padding = !(this.padding == "causal") ? this.padding.ToUpper() : "VALID";
            
            _convolution_op = nn_ops.convolution_internal(padding, strides, dilation_rate, rank, GetType().Name, _tf_data_format);
            built = true;
        }

        protected override Tensors Call(Tensors inputs, Tensor state = null, bool? training = false)
        {
            var features = _convolution_op.Apply(inputs, kernel.AsTensor());
            if (use_bias)
            {
                if (data_format == "channels_first")
                {
                    throw new NotImplementedException("call channels_first");
                }

                features = nn_ops.bias_add(features, bias, "NHWC");
            }
            if (activation != null)
            {
                features = activation(features);
            }

            return features;
        }
    }
}
