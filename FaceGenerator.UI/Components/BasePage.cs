using System.Windows.Controls;

namespace FaceGenerator.UI.Components
{
    public abstract class BasePage : Page
    {
        protected const int ImageSize = 64;

        public int Factor { get; set; }

        protected int CellSize => ImageSize * Factor;
    }
}
