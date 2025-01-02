using MaterialDesignThemes.Wpf;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Linq;
using System.Security.Cryptography.Xml;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using System.Windows.Threading;
using TrackSpace.Command;
using TrackSpace.Forms.CustomMessageBox;
using TrackSpace.Models;
using TrackSpace.Services;
using TrackSpace.Services.Shared;
using TrackSpace.Utils;
using TrackSpace.ViewModel.Shared;
using static MaterialDesignThemes.Wpf.Theme.ToolBar;

namespace TrackSpace.ViewModel
{
    public class GroupsViewModel:BaseViewModel, INotifyPropertyChanged
    {
        private RunningEvent _runningEvent;
        public DialogHost DialogHost { get; set; }

        private ObservableCollection<CompetitorEvent> _competitorEvents=new ObservableCollection<CompetitorEvent>();

        private ObservableCollection<CompetitorEvent> _competitorsWithoutGroup;

        private ObservableCollection<Group> _groups;

        private ObservableCollection<CompetitorEvent> _selectedCompetitors= new ObservableCollection<CompetitorEvent>();

        public ObservableCollection<CompetitorEvent> SelectedCompetitors
        {
            get { return _selectedCompetitors; }
            set
            {
                _selectedCompetitors = value; OnPropertyChanged(nameof(SelectedCompetitors));
            }
        }

        public CompetitorEvent SelectedCompetitorEvent { get; set; }

        

        public ObservableCollection<CompetitorEvent> CompetitorsWithoutGroup { get { return _competitorsWithoutGroup; } set{ _competitorsWithoutGroup = value; OnPropertyChanged(nameof(CompetitorsWithoutGroup)); } }
        public ObservableCollection<Group> Groups { get { return _groups; }set { _groups = value; OnPropertyChanged(nameof(Groups)); } }

        private Competitor _selectedCompetitor;
        public Competitor SelectedCompetitor { get { return _selectedCompetitor; } 
            set { _selectedCompetitor = value; OnPropertyChanged(nameof(SelectedCompetitor)); } }

        public ObservableCollection<CompetitorEvent> CompetitorEvents {

            get { return _competitorEvents; }
            set {
                _competitorEvents = value;
                OnPropertyChanged(nameof(CompetitorEvents));
            }
        }

        public RunningEvent Event { get { return _runningEvent; } set {
            _runningEvent=value;

                Groups=new ObservableCollection<Group>(_runningEvent.Groups);
                OnPropertyChanged(nameof(Event));
            } 
        }
       
        public ICommand GoBackCommand { get; set; }
        public ICommand AddGroupCommand { get; set; }
        public ICommand AddCompetitorToGroupCommand { get; set; }
        public ICommand RemoveCompetitorFromGroupCommand { get; set; }
        public ICommand AddCompetitorCommand { get; set; }
        public GroupsViewModel() {

            GoBackCommand = new RelayCommand(GoBack, CanShowWindow);
            AddGroupCommand = new RelayCommand(AddGroup, CanShowWindow);
            AddCompetitorToGroupCommand = new RelayCommand(AddCompetitorToGroup, CanShowWindow);
            AddCompetitorCommand = new RelayCommand(AddCompetitors, CanShowWindow);
            RemoveCompetitorFromGroupCommand = new RelayCommand(RemoveCompetitorFromGroup, CanShowWindow);
        }

        public void GoBack(object obj)
        {
            PageUtils.NavigatePages(ViewModelLocator.EventInfoPage);
        }

        private int idGroupSelected = 0;
        public void UpdateCompetitorEvents(int idGroup)
        {
            var even= new CompetitorEventServices().GetCompetitorEventsByIdGroup(idGroup,_runningEvent.IdEvent);

            idGroupSelected = idGroup;
            CompetitorEvents = even;
        }
        
        private void AddCompetitorToGroup(object obj)
        {
            CompetitorsWithoutGroup=new EventsService().GetCompetitorEventsWithoutGroupByIdEvent(Event.IdEvent);

            DialogHost.IsOpen = true;
        }

        private void RemoveCompetitorFromGroup(object obj)
        {
            var idCompetitor = 0;
            int i = 0;
            if (SelectedCompetitorEvent == null)
                return;
            foreach (var item in CompetitorEvents)
            {
                if (item.IdCompetitorNavigation.IdCompetitor == SelectedCompetitorEvent.IdCompetitor)
                {
                    idCompetitor = SelectedCompetitorEvent.IdCompetitor;
                    break;
                }
                i++;
            }
           
            new CompetitorsService().RemoveCompetitorFromGroup(idCompetitor);
            UpdateCompetitorEvents(idGroupSelected);
            SelectedCompetitorEvent = null;
            new CustomMessageBox(false, true, (string)Application.Current.Resources["removalSuccessful"], (string)Application.Current.Resources["successfullyRemoved"]).Show();

        }

        private async void AddCompetitors(object obj)
        {

            DialogHost.IsOpen = false;

            foreach(var item in SelectedCompetitors)
            {
                CompetitorEvents.Add(item);
                new CompetitorsService().AddCompetitorToGroup(item.IdCompetitor,idGroupSelected);
            }
            OnPropertyChanged(nameof(CompetitorEvents));

            await Task.Delay(500);

            if (SelectedCompetitors.Count != 0)
                new CustomMessageBox(false, true, (string)Application.Current.Resources["addingSuccessful"], (string)Application.Current.Resources["successfullyAdded"]).Show();
            SelectedCompetitors = new ObservableCollection<CompetitorEvent>();
           
            
        }

        private void AddGroup(object obj)
        {
            new CustomMessageBox(true,true, (string)Application.Current.Resources["addGroup"], (string)Application.Current.Resources["sureToAddGroup"], (a) => {

                Group g = new Group() {
                IdEvent=Event.IdEvent,
                Number=Groups.Count+1
                };
                g=new EventsService().AddGroup(g);
                Groups.Add(g);
                OnPropertyChanged(nameof(Groups));
            }, (a) => {}).Show();


        }

        public event PropertyChangedEventHandler? PropertyChanged;
        protected void OnPropertyChanged(string propertyName)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));

        }

    }
}
