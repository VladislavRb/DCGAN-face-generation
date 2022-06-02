using System;
using Python.Runtime;

namespace FaceGenerator.Dcgan
{
    public class PyEnv
    {
        public static void Setup()
        {
            string envPythonHome = @"C:\Users\Vlad\AppData\Local\Programs\Python\Python37\";
            SetEnvironmentVariables(envPythonHome);

            PythonEngine.PythonHome = envPythonHome;
            PythonEngine.PythonPath = Environment.GetEnvironmentVariable("PYTHONPATH", EnvironmentVariableTarget.User);
        }

        private static void SetEnvironmentVariables(string envPythonHome)
        {
            string envPythonLib = envPythonHome + "Lib\\;" + envPythonHome + @"Lib\site-packages\";

            if (Environment.GetEnvironmentVariable("PYTHONHOME", EnvironmentVariableTarget.Process) == null)
            {
                Environment.SetEnvironmentVariable("PYTHONHOME", envPythonHome, EnvironmentVariableTarget.Process);
            }

            if (Environment.GetEnvironmentVariable("PATH", EnvironmentVariableTarget.Process) == null)
            {
                Environment.SetEnvironmentVariable("PATH", envPythonHome + ";" + envPythonLib + ";" + Environment.GetEnvironmentVariable("PATH", EnvironmentVariableTarget.Machine), EnvironmentVariableTarget.Process);
            }

            if (Environment.GetEnvironmentVariable("PYTHONPATH", EnvironmentVariableTarget.User) == null)
            {
                Environment.SetEnvironmentVariable("PYTHONPATH", envPythonLib, EnvironmentVariableTarget.User);
            }
        }
    }
}
