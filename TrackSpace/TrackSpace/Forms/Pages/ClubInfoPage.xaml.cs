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
using TrackSpace.Services.Shared;
using TrackSpace.ViewModel;
using TrackSpace.ViewModel.Shared;

namespace TrackSpace.Forms.Pages
{
    
    public partial class ClubInfoPage : UserControl
    {
        public ClubInfoPage(Club club,bool myClub=true)
        {
            InitializeComponent();
            
            DataContext = ViewModelLocator.ClubInfoViewModel;

            ViewModelLocator.ClubInfoViewModel.Club = club;
            

            SetBtnAddCompetitor(club,myClub);
            
        }

        public void SetBtnAddCompetitor(Club club, bool myClub)
        {
            if (myClub==true)
            {
                addCompetitorBtn.Visibility = Visibility.Visible;
                ViewModelLocator.ClubInfoViewModel.DialogHost = AddCompetitorDialogHost;
            }
            else
            {
                addCompetitorBtn.Visibility = Visibility.Hidden;
            }
        }
      

        private void DataGridCell_MouseLeftButtonDown(object sender, MouseButtonEventArgs e)
        {

            var cell = sender as DataGridCell;

            if (cell != null && cell.DataContext is Competitor selectedCompetitor)
            {

                if (selectedCompetitor != null)
                {

                    ViewModelLocator.ClubInfoViewModel.SelectedCompetitor = selectedCompetitor;

                    UserDetailsDialogHost.IsOpen = true;
                }
            }
        }

        private void Name_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.Key == Key.Enter)
            {
                SurnnameTextBox.Focus();
            }
        }



        private void DataGrid_LoadingRow(object sender, DataGridRowEventArgs e)
        {            
            int rowIndex = e.Row.GetIndex() + 1;

            e.Row.Tag = rowIndex;
        }
    }
}
