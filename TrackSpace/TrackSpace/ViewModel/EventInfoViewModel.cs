using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Input;
using TrackSpace.Command;
using TrackSpace.Forms.CustomMessageBox;
using TrackSpace.Forms.Pages;
using TrackSpace.Models;
using TrackSpace.Services;
using TrackSpace.Services.Shared;
using TrackSpace.Utils;
using TrackSpace.ViewModel.Shared;

namespace TrackSpace.ViewModel
{
    public class EventInfoViewModel:BaseViewModel,INotifyPropertyChanged
    {
        private Event _selectedEvent;

        private Competitor _selectedCompetitor;
        public Competitor SelectedCompetitor { get { return _selectedCompetitor; } set { _selectedCompetitor = value; OnPropertyChanged(nameof(SelectedCompetitor)); } }

        private ObservableCollection<CompetitorEvent> _events;
        private CompetitorsService _competitorsService=ServicesLocator.CompetitorsService;
    
       
        public ObservableCollection<CompetitorEvent> Events {
            get { return _events; }
            set {
                _events = value;
                foreach(var ev in _events)
                    {
                    ev.IdCompetitorNavigation = _competitorsService.GetCompetitorById(ev.IdCompetitor);
                    }
                OnPropertyChanged(nameof(Events));
            }
        }
        public Event SelectedEvent { get { return _selectedEvent; } set { _selectedEvent = value;
               
                Events = new ObservableCollection<CompetitorEvent>(_selectedEvent.CompetitorEvents.ToList());
                OnPropertyChanged(nameof(SelectedEvent)); } }
        public ICommand GoBackCommand { get; set; }
        public ICommand ShowGroupsPage { get; set; }
        public EventInfoViewModel() {
            GoBackCommand = new RelayCommand(GoBack, CanShowWindow);
            ShowGroupsPage = new RelayCommand(ShowGroupsPageNavigation, CanShowWindow);
        }

        public void ShowGroupsPageNavigation(object obj)
        {
            if (SelectedEvent.RunningEvent.GroupNumber != 0)
            {
                PageUtils.NavigatePages(new GroupsPage(SelectedEvent.RunningEvent));
            }
            else
            {
                 new CustomMessageBox(false, false, (string)Application.Current.Resources["error"], (string)Application.Current.Resources["noGroupsyet"]).Show();
                
            }
        }


        public void GoBack(object obj)
        {
            PageUtils.NavigatePages(ViewModelLocator.CompetitionInfoPage);
            
        }


        public event PropertyChangedEventHandler? PropertyChanged;
        protected void OnPropertyChanged(string propertyName)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));

        }
    }
}
