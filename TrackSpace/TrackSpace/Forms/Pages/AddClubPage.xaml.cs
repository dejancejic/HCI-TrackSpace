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
  
    public partial class AddClubPage : UserControl
    {
        public AddClubPage()
        {
            InitializeComponent();
            ViewModelLocator.AdminViewModel = new AdminViewModel();
            DataContext = ViewModelLocator.AdminViewModel;
        }

        private void ClubCodeTextBox_TextChanged(object sender, TextChangedEventArgs e)
        {
            var textBox = sender as TextBox;
            if (textBox != null)
            {
                
                string filteredText = new string(textBox.Text.Where(char.IsLetter).ToArray()); 
                filteredText = filteredText.ToUpper();

                if (filteredText.Length > int.Parse(ConfigurationManager.AppSettings[3]!)) { 
                    filteredText = filteredText.Substring(0, int.Parse(ConfigurationManager.AppSettings[3]!));
                }
                textBox.Text = filteredText;
                 textBox.CaretIndex = filteredText.Length;
            } 
        }

        private void PhoneTextBox_TextChanged(object sender, TextChangedEventArgs e)
        {
            var textBox = sender as TextBox;
            if (textBox != null)
            {

                string filteredText = new string(textBox.Text.Where(c=>char.IsNumber(c) || char.IsWhiteSpace(c)).ToArray());

                if (filteredText.Length > int.Parse(ConfigurationManager.AppSettings[6]!))
                {
                    filteredText = filteredText.Substring(0, int.Parse(ConfigurationManager.AppSettings[6]!));
                }
                textBox.Text = filteredText;
                textBox.CaretIndex = filteredText.Length;
            }
        }
        private void NameTextBox_TextChanged(object sender, TextChangedEventArgs e)
        {
            var textBox = sender as TextBox;
            if (textBox != null)
            {

                string filteredText = new string(textBox.Text.Where((c)=>char.IsLetter(c) || char.IsWhiteSpace(c) || c=='"').ToArray());

                if (filteredText.Length > int.Parse(ConfigurationManager.AppSettings[4]!))
                {
                    filteredText = filteredText.Substring(0, int.Parse(ConfigurationManager.AppSettings[4]!));
                }
                textBox.Text = filteredText;
                textBox.CaretIndex = filteredText.Length;
            }
        }




    }
}
