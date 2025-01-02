using System;
using System.Collections.Generic;
using System.Configuration;
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
using System.Windows.Navigation;
using System.Windows.Shapes;
using TrackSpace.ViewModel;
using TrackSpace.ViewModel.Shared;

namespace TrackSpace.Forms.Pages
{
    
    public partial class AddUserPage : UserControl
    {
        public AddUserPage()
        {
            InitializeComponent();
            ViewModelLocator.AdminViewModel = new AdminViewModel();
            DataContext = ViewModelLocator.AdminViewModel;
        }

        private void PasswordBox_PasswordChanged(object sender, RoutedEventArgs e)
        {
            PasswordBox pb = sender as PasswordBox; 
           
            ViewModelLocator.AdminViewModel.Password = pb.Password; 
               
        }
        private void PasswordBoxRepeat_PasswordChanged(object sender, RoutedEventArgs e)
        {
            PasswordBox pb = sender as PasswordBox;
          
            ViewModelLocator.AdminViewModel.RepeatedPassword = pb.Password;
               
        }


        private void UsernameTextBox_TextChanged(object sender, TextChangedEventArgs e)
        {
            var textBox = sender as TextBox;
            if (textBox != null)
            {

                string filteredText = new string(textBox.Text.Where((c) => char.IsLetter(c) || char.IsNumber(c)).ToArray());

                if (filteredText.Length > int.Parse(ConfigurationManager.AppSettings[5]!))
                {
                    filteredText = filteredText.Substring(0, int.Parse(ConfigurationManager.AppSettings[5]!));
                }
                textBox.Text = filteredText;
                textBox.CaretIndex = filteredText.Length;
            }
        }

        private void MailTextBox_TextChanged(object sender, TextChangedEventArgs e)
        {
            var textBox = sender as TextBox;
            if (textBox != null)
            {

                string filteredText = new string(textBox.Text.Where((c) => char.IsLetter(c) || char.IsNumber(c) || c=='@' || c=='.').ToArray());

                if (filteredText.Length > int.Parse(ConfigurationManager.AppSettings[4]!))
                {
                    filteredText = filteredText.Substring(0,int.Parse(ConfigurationManager.AppSettings[4]!));
                }
                textBox.Text = filteredText;
                textBox.CaretIndex = filteredText.Length;
            }
        }

    }
}
