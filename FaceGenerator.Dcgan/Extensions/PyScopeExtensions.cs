using System.Globalization;
using Python.Runtime;

namespace FaceGenerator.Dcgan.Extensions
{
    public static class PyScopeExtensions
    {
        public static PyObject CreatePyMatrix(this PyScope scope, float[][] csMatrix)
        {
            scope.Exec("pyMatrix = []");
            foreach (var row in csMatrix)
            {
                scope.Exec("row = []");

                foreach (var element in row)
                {
                    var pyElement = element.ToString(CultureInfo.InvariantCulture)
                        .Replace(',', '.');
                    
                    scope.Exec($"row.append({pyElement})");
                }

                scope.Exec("pyMatrix.append(row)");
            }

            scope.Exec("matrixAsTensor = tf.convert_to_tensor(pyMatrix)");
            var pyMatrix = scope.Get("matrixAsTensor");

            scope.Exec("del row");
            scope.Exec("del pyMatrix");
            scope.Exec("del matrixAsTensor");

            return pyMatrix;
        }
    }
}
