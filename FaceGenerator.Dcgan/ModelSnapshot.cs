using FaceGenerator.Dcgan.Extensions;
using Python.Runtime;

namespace FaceGenerator.Dcgan
{
    public class ModelSnapshot
    {
        private static readonly PyScope PyScope;

        private readonly dynamic _modelSnapshot;
        private readonly int _latentDim;

        public static ModelSnapshot Instance { get; private set; }

        static ModelSnapshot()
        {
            PythonEngine.Initialize();
            PythonEngine.ImportModule("tensorflow");

            PyScope = Py.CreateScope();
            PyScope.Exec("import tensorflow as tf");
        }

        public static void InitInstance(string checkpointPath, int latentDim)
        {
            if (Instance != null)
            {
                return;
            }

            Instance = new ModelSnapshot(checkpointPath, latentDim);
        }

        private ModelSnapshot(string checkpointPath, int latentDim)
        {
            _latentDim = latentDim;

            PyScope.Exec($"model = tf.keras.models.load_model('{checkpointPath}')");
            _modelSnapshot = PyScope.Get("model");
        }

        public float[][][][] SampleImages(int images)
        {
            PyScope.Exec($"input = tf.random.normal(shape=({images}, {_latentDim}))");
            var input = PyScope.Get("input");

            return GenerateAsPixels(input);
        }

        public float[][][][] ImageFromRanges(float[] latentVector)
        {
            if (latentVector.Length != _latentDim)
            {
                return null;
            }

            var input = PyScope.CreatePyMatrix(new[] {latentVector});
            return GenerateAsPixels(input);
        }

        private float[][][][] GenerateAsPixels(PyObject input)
        {
            var output = (_modelSnapshot(input) * 255).numpy();
            var outputList = new PyList(output.Handle).As<float[][][][]>();

            return outputList;
        }
    }
}
