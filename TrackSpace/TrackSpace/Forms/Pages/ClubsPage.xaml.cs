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
using TrackSpace.ViewModel;
using TrackSpace.ViewModel.Shared;

namespace TrackSpace.Forms.Pages
{
    /// <summary>
    /// Interaction logic for ClubsPage.xaml
    /// </summary>
    public partial class ClubsPage : Page
    {

        public ClubsPage()
        {
            InitializeComponent();
            DataContext = ViewModelLocator.ClubsViewModel;
        }





        private void AutoSuggestBox_TextChanged(object sender, RoutedEventArgs e)
        {
            var autoSuggestBox = sender as AutoSuggestBox;
            if (autoSuggestBox != null)
            {
                var viewModel = DataContext as ClubsViewModel;
                if (viewModel != null)
                {
                    var selectedItem = viewModel.AutoSuggestBox1Suggestions
                        .FirstOrDefault(item => item.Value == autoSuggestBox.Text);

                    if (!string.IsNullOrEmpty(selectedItem.Key) &&
                        viewModel.ShowClubCommand.CanExecute(selectedItem))
                    {
                        viewModel.ShowClubCommand.Execute(selectedItem);
                    }
                }
            }
        }



    }
}
