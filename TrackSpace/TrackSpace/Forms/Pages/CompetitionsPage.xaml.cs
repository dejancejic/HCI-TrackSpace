using MaterialDesignThemes.Wpf;
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
using System.Windows.Navigation;
using System.Windows.Shapes;
using TrackSpace.Models;
using TrackSpace.ViewModel;
using TrackSpace.ViewModel.Shared;

namespace TrackSpace.Forms.Pages
{
   
    public partial class CompetitionsPage : UserControl
    {
        public bool OrganizersCompetition { get; set; }
        public CompetitionsPage(bool organizersCompetition=false)
        {
            OrganizersCompetition = organizersCompetition;
            if(organizersCompetition==false)
            SetPage(false);
            else
                SetPage(true);

            InitializeComponent();
          

            ViewModelLocator.CompetitionsPage = this;

        }
        public void SetPage(bool OrganizersCompetition)
        {

            if (OrganizersCompetition == true)
            {
                ViewModelLocator.CompetitionsViewModel = new CompetitionsViewModel(true);

            }
            else
            {
                ViewModelLocator.CompetitionsViewModel = new CompetitionsViewModel();

            }

            DataContext = ViewModelLocator.CompetitionsViewModel;
        }


        private void AutoSuggestBox_TextChanged(object sender, RoutedEventArgs e)
        {
            var autoSuggestBox = sender as AutoSuggestBox;
            if (autoSuggestBox != null)
            {
                var viewModel = DataContext as CompetitionsViewModel;
                if (viewModel != null)
                {
                    var selectedItem = viewModel.AutoSuggestBox1Suggestions
                        .FirstOrDefault(item => item.Value == autoSuggestBox.Text);

                    if (!string.IsNullOrEmpty(selectedItem.Key) &&
                        viewModel.ShowCompetitionCommand.CanExecute(selectedItem))
                    {
                        viewModel.ShowCompetitionCommand.Execute(selectedItem.Key);
                        autoSuggestBox.Text = "";
                    }
                }
            }
        }
     


    }
}
