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
using TrackSpace.Forms;
using TrackSpace.Models;
using TrackSpace.Models.EntryModel;
using TrackSpace.Services;
using TrackSpace.Services.Shared;
using TrackSpace.ViewModel.Shared;

namespace TrackSpace.Forms.Pages
{
    
    public partial class EnterCompetitionPage : UserControl
    {
        public EnterCompetitionPage(Competition competition)
        {
            InitializeComponent();
            ViewModelLocator.EnterCompetitionViewModel.Competition = competition;
            DataContext = ViewModelLocator.EnterCompetitionViewModel;
            ViewModelLocator.EnterCompetitionPage = this;
          
        }

        private void EventsSelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            var dataGrid = sender as DataGrid; 

            if (dataGrid != null)
            {
                int selectedIndex = dataGrid.SelectedIndex;

                Event? event1 = dataGrid.SelectedItem as Event;

                if (event1 != null) {

                
                ViewModelLocator.EnterCompetitionViewModel.SetMaleFemaleCompetitors(event1.IdEvent);

                }

               
               
            }
         }

        private void checkBox_Unchecked(object sender, RoutedEventArgs e)
        {
            EntryModel? selectedItem = dataGridCompetitors.SelectedItem as EntryModel;

           

            if(selectedItem!=null)
            ViewModelLocator.EnterCompetitionViewModel.EntryModels.FirstOrDefault(e=>e.IdEvent==selectedItem.IdEvent
            && e.Competitor.IdCompetitor==selectedItem.Competitor.IdCompetitor)!.IsChecked=false;

        }

        private void checkBox_Checked(object sender, RoutedEventArgs e)
        {
            EntryModel? selectedItem = dataGridCompetitors.SelectedItem as EntryModel;


            if (selectedItem!=null && ViewModelLocator.EnterCompetitionViewModel.CheckIfHas2Entries(selectedItem.Competitor.IdCompetitor))
            {

                new CustomMessageBox.CustomMessageBox(false, false, (string)Application.Current.Resources["error"], (string)Application.Current.Resources["cantAddEntry"]).Show();

                checkBox_Unchecked(sender, e);
                return;
            }

            if (selectedItem != null)
                ViewModelLocator.EnterCompetitionViewModel.EntryModels.FirstOrDefault(e => e.IdEvent == selectedItem.IdEvent
                && e.Competitor.IdCompetitor == selectedItem.Competitor.IdCompetitor)!.IsChecked = true;
        }
    }
}
