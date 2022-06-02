using System;
using System.Collections.Generic;
using System.Linq;
using Tensorflow;
using Tensorflow.Keras;
using Tensorflow.Keras.ArgsDefinition;
using Tensorflow.Keras.Engine;

namespace FaceGenerator.Dcgan.Layers
{
    public class DenseLayer : Layer
    {
        public override List<IVariableV1> trainable_variables =>
            _useBias ? new List<IVariableV1> { kernel, bias } : new List<IVariableV1> { kernel };

        private DenseArgs args;
        private IVariableV1 kernel;
        private IVariableV1 bias;
        private readonly bool _useBias;

        private Activation activation => args.Activation;

        public DenseLayer(Tensor input, DenseArgs args)
          : base(args)
        {
            this.args = args;
            SupportsMasking = true;
            inputSpec = new InputSpec(min_ndim: 2);
            _useBias = args.UseBias;

            build(new Tensors(input));
        }

        protected override void build(Tensors inputs)
        {
            var num = inputs.shape.dims.Last();
            inputSpec = new InputSpec(min_ndim: 2, axes: new Dictionary<int, int>
            {
                [-1] = (int)num
            });

            var kernelShape = new Shape(num, args.Units);
            kernel = add_weight("kernel", kernelShape, DType, args.KernelInitializer);
            if (args.UseBias)
            {
                var biasShape = new Shape(args.Units);
                bias = add_weight("bias", biasShape, DType, args.BiasInitializer);
            }
            
            built = true;
        }

        protected override Tensors Call(Tensors inputs, Tensor state = null, bool? training = null)
        {
            var rank = inputs.rank;
            var features = rank > 2 ?
                Binding.tf.linalg.tensordot(inputs, kernel.AsTensor(), new int[2, 1] {{rank - 1}, {0}}) :
                gen_math_ops.mat_mul(inputs, kernel.AsTensor());

            if (args.UseBias)
            {
                features = Binding.tf.nn.bias_add(features, bias);
            }

            if (args.Activation != null)
            {
                features = activation(features);
            }

            return features;
        }
    }
}
