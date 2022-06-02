using System.Windows;
using System.Windows.Controls;
using FaceGenerator.Dcgan;
using FaceGenerator.UI.Components;
using FaceGenerator.UI.Helpers;
using FaceGenerator.UI.Extensions;

namespace FaceGenerator.UI.Views
{
    public partial class ImageGridPage : GridPage
    {
        private const int ButtonVerticalMargin = 20;

        public ImageGridPage()
        {
            InitializeComponent();
            ConfigureImagesGrid();
        }

        private void ConfigureImagesGrid()
        {
            var gridLength = Cells * CellSize;

            container.Width = gridLength + generateButton.Width;
            container.Height = gridLength + ButtonVerticalMargin + generateButton.Height;

            imagesGrid.Width = imagesGrid.Height = gridLength;

            for (var i = 0; i < Cells; i++)
            {
                var col = new ColumnDefinition();
                imagesGrid.ColumnDefinitions.Add(col);

                var row = new RowDefinition
                {
                    Height = new GridLength(CellSize)
                };
                imagesGrid.RowDefinitions.Add(row);
            }
        }

        private void DrawNew(object sender, RoutedEventArgs e)
        {
            try
            {
                var newImages = ModelSnapshot.Instance
                    .SampleImages(Cells * Cells);

                for (int i = 0; i < Cells; i++)
                {
                    for (int j = 0; j < Cells; j++)
                    {
                        var imageIndex = i * Cells + j;
                        var bitmap = ImageHelper.WriteableBitmapFrom(newImages, imageIndex, Factor);

                        imagesGrid.EraseAt(i, j);
                        imagesGrid.DrawAt(bitmap, i, j);
                    }
                }
            }
            catch
            {
            }
        }
    }
}
