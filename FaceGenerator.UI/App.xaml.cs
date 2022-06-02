using System.Windows;
using FaceGenerator.Dcgan;

namespace FaceGenerator.UI
{
    /// <summary>
    /// Interaction logic for App.xaml
    /// </summary>
    public partial class App : Application
    {
        private const string CheckpointPath = "../../../checkpoints/checkpoint_25";

        private void ApplicationStartup(object sender, StartupEventArgs e)
        {
            ModelSnapshot.InitInstance(CheckpointPath, Dcgan.Dcgan.Ldim);
        }
    }
}
