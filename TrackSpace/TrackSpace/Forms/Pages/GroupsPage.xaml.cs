using MaterialDesignThemes.Wpf;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Automation;
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
    
    public partial class GroupsPage : UserControl
    {
        public GroupsPage(RunningEvent runningEvent)
        {
            InitializeComponent();
            DataContext = ViewModelLocator.GroupsViewModel;
            ViewModelLocator.GroupsViewModel.Event = runningEvent;
            if(ViewModelLocator.AccountType.Equals("organizer") && ViewModelLocator.IdOrganizer==runningEvent.IdEventNavigation.IdCompetitionNavigation.IdUser &&
                runningEvent.IdEventNavigation.Start < DateTime.Now.AddDays(int.Parse(ConfigurationManager.AppSettings[0])))
            {
                addGroupBtn.Visibility = Visibility.Visible;
                ViewModelLocator.GroupsViewModel.DialogHost= UserDetailsDialogHost;
                addCompetitorBtn.Visibility = Visibility.Visible;
                removeCompetitorBtn.Visibility = Visibility.Visible;
                
            }
        }


        private void GroupsTabControl_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            if (GroupsTabControl.SelectedItem is Group selectedGroup)
            {
                if (selectedGroup != null)
                {
                    ViewModelLocator.GroupsViewModel.UpdateCompetitorEvents(selectedGroup.IdGroup);
                }

        }
        }

        private void DataGrid_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            var dataGrid = sender as DataGrid;
            var viewModel = DataContext as GroupsViewModel;

            if (viewModel != null)
            {
                foreach (var item in e.RemovedItems)
                {
                    viewModel.SelectedCompetitors.Remove(item as CompetitorEvent);
                }

                foreach (var item in e.AddedItems)
                {
                    viewModel.SelectedCompetitors.Add(item as CompetitorEvent);
                }
            }
        }


        private void ShowCompetitorsWithoutGroup(object sender, RoutedEventArgs e)
        {
            ViewModelLocator.GroupsViewModel.AddCompetitorToGroupCommand.Execute(sender);
        }

        private void DataGrid_SelectionChanged_1(object sender, SelectionChangedEventArgs e)
        {
            var dg = sender as DataGrid;
            if(dg.SelectedItem!=null && dg.SelectedItem is CompetitorEvent)
            {
                ViewModelLocator.GroupsViewModel.SelectedCompetitorEvent = dg.SelectedItem as CompetitorEvent;
            }
        }
    }
}
