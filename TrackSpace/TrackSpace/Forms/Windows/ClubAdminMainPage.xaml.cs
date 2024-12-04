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
using TrackSpace.Models;
using TrackSpace.ViewModel;
using TrackSpace.ViewModel.Shared;

namespace TrackSpace.Forms.Windows
{
    /// <summary>
    /// Interaction logic for ClubAdminMainPage.xaml
    /// </summary>
    public partial class ClubAdminMainPage : Window
    {
        private ClubAdmin admin;
        private ClubAdminViewModel _clubAdminViewModel;
        public ClubAdminMainPage(ClubAdmin admin)
        {
            InitializeComponent();
            this.admin = admin;
            _clubAdminViewModel = ViewModelLocator.ClubAdminViewModel;
            DataContext = _clubAdminViewModel;

            ViewModelLocator.ObserverViewModel.User = admin.IdUserNavigation;
            
            
            _clubAdminViewModel.Admin = admin;
            ViewModelLocator.ObserverViewModel.UpdateViewModel();
           
        }

        private void ListView_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            if (DataContext is ClubAdminViewModel viewModel)
            {
                if (sender is ListView listView && listView.SelectedItem is ListViewItem selectedItem)
                {
                    if (selectedItem.Tag.ToString().Equals("Logout"))
                    {
                        viewModel.LogoutCommand.Execute(this);
                        return;
                    }

                    _clubAdminViewModel.NavigateCommand.Execute(selectedItem.Tag);
                }
            }
        }
        private void MouseDownHandler(object sender, System.Windows.Input.MouseButtonEventArgs e)
        {
            if (e.LeftButton == MouseButtonState.Pressed)
            {
                this.DragMove();
            }

        }


    }
}
