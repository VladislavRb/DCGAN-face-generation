using System;
using System.Windows;
using System.Windows.Media;
using System.Windows.Media.Imaging;

namespace FaceGenerator.UI.Helpers
{
    public class ImageHelper
    {
        public static WriteableBitmap WriteableBitmapFrom(int[,,] pixels, int factor)
        {
            var width = pixels.GetLength(0);
            var height = pixels.GetLength(1);

            return WriteableBitmapFrom(width, height, factor, (i, j) =>
            {
                var r = pixels[i, j, 0];
                var g = pixels[i, j, 1];
                var b = pixels[i, j, 2];

                return (r, g, b);
            });
        }

        public static WriteableBitmap WriteableBitmapFrom(float[][][][] pixels, int imageIndex, int factor)
        {
            var width = pixels[0].Length;
            var height = pixels[0][0].Length;

            return WriteableBitmapFrom(width, height, factor, (i, j) =>
            {
                var r = (int)pixels[imageIndex][i][j][0];
                var g = (int)pixels[imageIndex][i][j][1];
                var b = (int)pixels[imageIndex][i][j][2];

                return (r, g, b);
            });
        }

        private static WriteableBitmap WriteableBitmapFrom(int width, int height, int factor, Func<int, int, (int r, int g, int b)> rgbFunc)
        {
            var writeableBitmap = new WriteableBitmap(width * factor, height * factor, 96, 96, PixelFormats.Bgr32, null);

            for (int ii = 0; ii < width; ii++)
            {
                for (int jj = 0; jj < height; jj++)
                {
                    var (r, g, b) = rgbFunc(ii, jj);

                    for (int i = 0; i < factor; i++)
                    {
                        for (int j = 0; j < factor; j++)
                        {
                            var rowIndex = jj * factor + j;
                            var colIndex = ii * factor + i;

                            DrawPixel(writeableBitmap, rowIndex, colIndex, r, g, b);
                        }
                    }
                }
            }

            return writeableBitmap;
        }

        private static void DrawPixel(WriteableBitmap writeableBitmap, int x, int y, int r, int g, int b)
        {
            try
            {
                writeableBitmap.Lock();

                unsafe
                {
                    var pBackBuffer = writeableBitmap.BackBuffer;

                    pBackBuffer += y * writeableBitmap.BackBufferStride;
                    pBackBuffer += x * 4;

                    var colorData = r << 16;
                    colorData |= g << 8;
                    colorData |= b << 0;

                    *((int*)pBackBuffer) = colorData;
                }

                writeableBitmap.AddDirtyRect(new Int32Rect(x, y, 1, 1));
            }
            finally
            {
                writeableBitmap.Unlock();
            }
        }
    }
}
