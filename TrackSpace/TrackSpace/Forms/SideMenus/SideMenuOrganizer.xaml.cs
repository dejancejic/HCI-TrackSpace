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
using TrackSpace.ViewModel.Shared;
using TrackSpace.ViewModel;

namespace TrackSpace.Forms.SideMenus
{
    public partial class SideMenuOrganizer : UserControl
    {
        public SideMenuOrganizer()
        {
            InitializeComponent();
        }
        private void ListView_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            if (DataContext is OrganizerViewModel viewModel)
            {
                if (sender is ListView listView && listView.SelectedItem is ListViewItem selectedItem)
                {
                    if (selectedItem.Tag.ToString().Equals("Logout"))
                    {
                        viewModel.LogoutCommand.Execute(this);
                        return;
                    }

                    ViewModelLocator.OrganizerViewModel.NavigateCommand.Execute(selectedItem.Tag);
                }
            }
        }
    }

}
