using System;
using System.Windows;
using System.Windows.Controls;

namespace FaceGenerator.UI.Extensions
{
    public static class UIElementExtensions
    {
        public static UIElement FirstOrDefault(this UIElementCollection elements, Func<UIElement, bool> predicate)
        {
            foreach (UIElement element in elements)
            {
                if (predicate(element))
                {
                    return element;
                }
            }

            return null;
        }
    }
}
