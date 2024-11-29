using System.Windows;
using System.Windows.Controls;

using TrackSpace.ViewModel;
using TrackSpace.ViewModel.Shared;

namespace TrackSpace.Forms.Windows
{
    
    public partial class ObserverMainPage : Window
    {
        private ObserverViewModel observerViewModel=ViewModelLocator.ObserverViewModel;
        public ObserverMainPage()
        {
            InitializeComponent();
            DataContext = observerViewModel;

            observerViewModel.MainFrame = mainFrame;
            mainFrame.Navigate(new Uri("Forms/Pages/ClubsPage.xaml", UriKind.Relative));

        }


        private void ListView_SelectionChanged(object sender, SelectionChangedEventArgs e)
        { 
            if (DataContext is ObserverViewModel viewModel)
            {
                if (sender is ListView listView && listView.SelectedItem is ListViewItem selectedItem)
                {
                    if (selectedItem.Tag.ToString().Equals("Logout"))
                    { 
                        viewModel.LogoutCommand.Execute(this);
                        return;
                    }

                    observerViewModel.NavigateCommand.Execute(selectedItem.Tag);
                }
            }
        }
       

    }
}
