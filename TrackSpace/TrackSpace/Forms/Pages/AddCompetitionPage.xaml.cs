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
using TrackSpace.ViewModel.Shared;

namespace TrackSpace.Forms.Pages
{
  
    public partial class AddCompetitionPage : UserControl
    {
        public AddCompetitionPage()
        {
           
            DataContext = ViewModelLocator.AddCompetitionViewModel;
            ViewModelLocator.AddCompetitionPage = this;
            ViewModelLocator.AddCompetitionViewModel.AddEventsPage = new AddEventsPage();
            ViewModelLocator.AddCompetitionViewModel.Loaded = false;
            InitializeComponent();
           
        }

        private void NameTextBox_TextChanged(object sender, TextChangedEventArgs e)
        {
            var textBox = sender as TextBox;
            if (textBox != null)
            {

                string filteredText = new string(textBox.Text.Where((c) => char.IsLetter(c) || char.IsWhiteSpace(c) || c == '"').ToArray());

                if (filteredText.Length > int.Parse(ConfigurationManager.AppSettings[7]!))
                {
                    filteredText = filteredText.Substring(0, int.Parse(ConfigurationManager.AppSettings[7]!));
                }
                textBox.Text = filteredText;
                textBox.CaretIndex = filteredText.Length;
            }
        }

        private void DescriptionTextBox_TextChanged(object sender, TextChangedEventArgs e)
        {
            var textBox = sender as TextBox;
            if (textBox != null)
            {

                string filteredText = textBox.Text;

                if (filteredText.Length > int.Parse(ConfigurationManager.AppSettings[8]!))
                {
                    filteredText = filteredText.Substring(0, int.Parse(ConfigurationManager.AppSettings[8]!));
                    textBox.Text = filteredText;
                    textBox.CaretIndex = filteredText.Length;
                }
               
            }
        }
    }
}
