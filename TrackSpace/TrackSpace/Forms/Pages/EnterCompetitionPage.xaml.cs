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

                    if (event1.IdCategoryNavigation.Name[
                        event1.IdCategoryNavigation.Name.Length-1] == 'M')
                    {
                        dataGridCompetitors.ItemsSource = ViewModelLocator.EnterCompetitionViewModel.MaleCompetitors;
                    }
                    else
                    {
                        dataGridCompetitors.ItemsSource = ViewModelLocator.EnterCompetitionViewModel.FemaleCompetitors;
                    }

                }


                if(ViewModelLocator.EnterCompetitionViewModel.modelsDictionary!=null)
                ViewModelLocator.EnterCompetitionViewModel.EntryModels = ViewModelLocator.EnterCompetitionViewModel.modelsDictionary[
                    ViewModelLocator.EnterCompetitionViewModel.Competition.Events!.ToList()[selectedIndex].IdEvent];

               
               
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


            if (selectedItem != null)
                ViewModelLocator.EnterCompetitionViewModel.EntryModels.FirstOrDefault(e => e.IdEvent == selectedItem.IdEvent
                && e.Competitor.IdCompetitor == selectedItem.Competitor.IdCompetitor)!.IsChecked = true;
        }
    }
}
