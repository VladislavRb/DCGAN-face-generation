using System.Linq;
using System.Windows;
using System.Windows.Controls;
using FaceGenerator.UI.Components;
using FaceGenerator.UI.Helpers;
using FaceGenerator.UI.Extensions;
using static FaceGenerator.Dcgan.Dcgan;

namespace FaceGenerator.UI.Views
{
    public partial class ImageGenerationPage : BasePage
    {
        private const int RangeInputAmount = 16;
        private const int RangeInputRows = 2;
        private const int RangeInputWidth = 20;
        private const int RangeInputsRowMargin = 20;

        private float[] _latentVector;

        public ImageGenerationPage()
        {
            InitializeComponent();

            SetInitialLatentVector();
            SetPanelSizes();
            SetRangeInputs();

            imagePanel.DrawAt(new int[ImageSize, ImageSize, 3], Factor, 0, 0);
        }

        private void SetPanelSizes()
        {
            imagePanel.Width = imagePanel.Height = CellSize;
            var margin = (container.Width - imageContainer.Width - rangesContainer.Width) / 2;
            rangesContainer.Margin = new Thickness(margin, 0, margin, 0);
        }

        private void SetRangeInputs()
        {
            var rangesPerRow = RangeInputAmount / RangeInputRows;
            var rowStackPanelHeight = RangeInputRowHeight();

            AddRangeInputsRow(0);
            for (int i = 1; i < RangeInputRows; i++)
            {
                var rangeInputsRow = AddRangeInputsRow(i);
                rangeInputsRow.Margin = new Thickness(0, RangeInputsRowMargin, 0, 0);
            }

            StackPanel AddRangeInputsRow(int rowIndex)
            {
                var rangeInputMargin = RangeInputMargin(rangesPerRow);

                var rowStackPanel = new StackPanel
                {
                    Width = rangesContainer.Width,
                    Height = rowStackPanelHeight,
                    Orientation = Orientation.Horizontal
                };

                AddRangeInputToRow(rowStackPanel, rowIndex * rangesPerRow);
                for (int rangeInputIndex = 1; rangeInputIndex < rangesPerRow; rangeInputIndex++)
                {
                    var rangeInput = AddRangeInputToRow(rowStackPanel, rowIndex * rangesPerRow + rangeInputIndex);
                    rangeInput.Margin = new Thickness(rangeInputMargin, 0, 0, 0);
                }

                rangesContainer.Children.Add(rowStackPanel);
                return rowStackPanel;
            }

            RangeSlider AddRangeInputToRow(StackPanel rowStackPanel, int rangeInputIndex)
            {
                var rangeInput = new RangeSlider(imagePanel, _latentVector, rangeInputIndex, Factor)
                {
                    Orientation = Orientation.Vertical,
                    Width = RangeInputWidth,
                    Height = rowStackPanelHeight,
                    Minimum = 0,
                    Maximum = 1,
                    Value = _latentVector[rangeInputIndex]
                };

                rowStackPanel.Children.Add(rangeInput);
                return rangeInput;
            }
        }

        private void SetInitialLatentVector()
        {
            _latentVector = EnumerableHelper.GenerateRandom(Ldim).ToArray();
        }

        private int RangeInputMargin(int rangesPerRow)
        {
            return rangesPerRow == 1 ? 0 :
                ((int) rangesContainer.Width - rangesPerRow * RangeInputWidth) / (rangesPerRow - 1);
        }

        private int RangeInputRowHeight()
        {
            return ((int)rangesContainer.Height - (RangeInputRows - 1) * RangeInputsRowMargin) / RangeInputRows;
        }
    }
}
