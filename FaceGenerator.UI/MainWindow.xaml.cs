using System;
using System.Windows;
using FaceGenerator.UI.Components;

namespace FaceGenerator.UI
{
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            WindowState = WindowState.Maximized;

            InitializeComponent();

            Navigate("Views/ImageGridPage.xaml");
        }

        private void Navigate(object sender, RoutedEventArgs e)
        {
            if (sender is NavigationButton button)
            {
                Navigate(button.PageUri);
            }
        }

        private void Navigate(string uri)
        {
            mainFrame.Navigate(new Uri(uri, UriKind.Relative));
        }
    }
}
