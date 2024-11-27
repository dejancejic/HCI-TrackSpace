using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace TrackSpace.Forms.Windows
{
  
    public partial class LoginWindow : Window
    {
        public LoginWindow()
        {
            InitializeComponent();
        }

        private void CloseFormClick(object sender, MouseButtonEventArgs e)
        {
            if (e.ChangedButton == MouseButton.Left && e.Source is MaterialDesignThemes.Wpf.PackIcon)
            {
                this.Close();
            }
        }
        private void Border_Mouse_Down(object sender, MouseButtonEventArgs e)
        {
            if (e.ChangedButton == MouseButton.Left && e.Source is Border)
            {
                this.DragMove();
            }
        }

        private void Observer_Label_Click(object sender, MouseButtonEventArgs e)
        {
            if (e.ChangedButton == MouseButton.Left && e.Source is Label)
            {
               
                ObserverMainPage observerPage = new ObserverMainPage();

                observerPage.Closed +=(a,b)=>this.Show();
                observerPage.Show();
                this.Hide();
            }
        }

        

        private void Choose_Language_Changed(object sender, SelectionChangedEventArgs e)
        {
            if (languageComboBox.SelectedItem is ComboBoxItem selectedItem)
            {
                string languageTag = (languageComboBox.SelectedItem as ComboBoxItem).Tag.ToString();
                SetLanguage(languageTag);
            }
        }

        private void SetLanguage(string language)
        {
            Thread.CurrentThread.CurrentCulture = new System.Globalization.CultureInfo(language);
            Thread.CurrentThread.CurrentUICulture = new System.Globalization.CultureInfo(language);

            Application.Current.Resources.MergedDictionaries.RemoveAt(Application.Current.Resources.MergedDictionaries.Count - 1);
            ResourceDictionary resdict = new ResourceDictionary()
            {
                Source = new Uri($"Resources/Dictionary-{language}.xaml", UriKind.Relative)
            };

            Application.Current.Resources.MergedDictionaries.Add(resdict);


        }

        private void LoginButton_Click(object sender, RoutedEventArgs e)
        {
            //TODO
        }



    }
}
