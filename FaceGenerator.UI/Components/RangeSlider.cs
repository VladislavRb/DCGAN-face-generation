using System;
using System.Windows.Controls;
using System.Windows.Input;
using FaceGenerator.Dcgan;
using FaceGenerator.UI.Extensions;
using FaceGenerator.UI.Helpers;

namespace FaceGenerator.UI.Components
{
    public class RangeSlider : Slider
    {
        private readonly Grid _imagePanel;
        private readonly float[] _latentVector;
        private readonly int _rangeInputIndex;
        private readonly int _factor;

        public RangeSlider(Grid imagePanel, float[] latentVector, int rangeInputIndex, int factor)
        {
            _imagePanel = imagePanel;
            _latentVector = latentVector;
            _rangeInputIndex = rangeInputIndex;
            _factor = factor;

            if (_rangeInputIndex < 0 || _rangeInputIndex >= _latentVector.Length)
            {
                throw new IndexOutOfRangeException(
                    $"Range input has index {_rangeInputIndex}, but length of latent vector is {_latentVector.Length}");
            }

            AddHandler(MouseLeftButtonUpEvent, new MouseButtonEventHandler(RangeInputValueChanged), true);
        }

        private void RangeInputValueChanged(object sender, MouseButtonEventArgs args)
        {
            var rangeValue = (float) (args.GetPosition(this).Y / ActualHeight);
            _latentVector[_rangeInputIndex] = rangeValue;

            try
            {
                var pixels = ModelSnapshot.Instance
                    .ImageFromRanges(_latentVector);
                var bitmap = ImageHelper.WriteableBitmapFrom(pixels, 0, _factor);

                _imagePanel.EraseAt(0, 0);
                _imagePanel.DrawAt(bitmap, 0, 0);
            }
            catch
            {
            }
        }
    }
}
