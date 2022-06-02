using System.Windows.Controls;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using FaceGenerator.UI.Helpers;

namespace FaceGenerator.UI.Extensions
{
    public static class GridExtensions
    {
        public static void DrawAt(this Grid grid, int[,,] pixels, int factor, int row, int col)
        {
            if (pixels == null)
            {
                return;
            }

            DrawAt(grid, ImageHelper.WriteableBitmapFrom(pixels, factor), row, col);
        }

        public static void DrawAt(this Grid grid, WriteableBitmap wb, int row, int col)
        {
            var newBorder = new Border
            {
                Background = new ImageBrush(wb)
            };

            newBorder.SetValue(Grid.RowProperty, row);
            newBorder.SetValue(Grid.ColumnProperty, col);

            grid.Children.Add(newBorder);
        }

        public static void EraseAt(this Grid grid, int row, int col)
        {
            var removedDrawing = grid.Children.FirstOrDefault(e =>
            {
                var elRow = (int)e.GetValue(Grid.RowProperty);
                var elCol = (int)e.GetValue(Grid.ColumnProperty);

                return elRow == row && elCol == col;
            });

            if (removedDrawing == null)
            {
                return;
            }

            grid.Children.Remove(removedDrawing);
        }
    }
}
