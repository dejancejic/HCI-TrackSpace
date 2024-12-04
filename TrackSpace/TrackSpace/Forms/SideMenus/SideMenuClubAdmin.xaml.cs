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

namespace TrackSpace.Forms.SideMenus
{

    public partial class SideMenuClubAdmin : UserControl
    {
        public SideMenuClubAdmin()
        {
            InitializeComponent();
            DataContext = ViewModelLocator.ClubAdminViewModel;
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

                    ViewModelLocator.ClubAdminViewModel.NavigateCommand.Execute(selectedItem.Tag);
                }
            }
        }
    }
}
