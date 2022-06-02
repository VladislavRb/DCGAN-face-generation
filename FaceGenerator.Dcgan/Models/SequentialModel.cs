using System.Collections.Generic;
using Tensorflow;
using Tensorflow.Keras.ArgsDefinition;
using Tensorflow.Keras.Engine;

namespace FaceGenerator.Dcgan.Models
{
    public class SequentialModel : Sequential
    {
        public SequentialModel(SequentialArgs args) : base(args)
        {
        }

        public override List<IVariableV1> trainable_variables
        {
            get
            {
                var trainableVariables = new List<IVariableV1>();
                foreach (var layer in _layers)
                {
                    if (layer.Trainable)
                    {
                        trainableVariables.AddRange(layer.trainable_variables);
                    }
                }
                return trainableVariables;
            }
        }
    }
}
