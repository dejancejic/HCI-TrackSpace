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
using ZstdSharp.Unsafe;

namespace TrackSpace.ViewModel
{
    public class EventInfoViewModel:BaseViewModel,INotifyPropertyChanged
    {
        private Event _selectedEvent;

        private Competitor _selectedCompetitor;
        public Competitor SelectedCompetitor { get { return _selectedCompetitor; } set { _selectedCompetitor = value; OnPropertyChanged(nameof(SelectedCompetitor));
                ChangeResult(_selectedCompetitor.IdCompetitor);
            } }

        private ObservableCollection<CompetitorEvent> _events;
        private CompetitorsService _competitorsService=new CompetitorsService();

        private CompetitorEvent _result;

        public CompetitorEvent Result { get { return _result; } set{ _result = value; OnPropertyChanged(nameof(Result)); } }
    
       
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
        public ICommand UpdateResultCommand { get; set; }
        public EventInfoViewModel() {
            GoBackCommand = new RelayCommand(GoBack, CanShowWindow);
            ShowGroupsPage = new RelayCommand(ShowGroupsPageNavigation, CanShowWindow);
            UpdateResultCommand=new RelayCommand(UpdateResult, CanShowWindow);
        }

        public void ShowGroupsPageNavigation(object obj)
        {
            if((ViewModelLocator.AccountType.Equals("organizer") && ViewModelLocator.IdOrganizer==SelectedEvent.IdCompetitionNavigation.IdUser)|| SelectedEvent.RunningEvent.GroupNumber != 0)
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

        private void UpdateResult(object obj)
        {
            new CompetitorEventServices().UpdateResult(Result);
            new CustomMessageBox(false,true, (string)Application.Current.Resources["updateSuccessful"], (string)Application.Current.Resources["updatedResult"]).Show();


            foreach (var item in Events)
            {
                if(item.IdEvent==Result.IdEvent && item.IdCompetitor==Result.IdCompetitor)
                {
                    item.Result = Result.Result;
                    break;
                }
            }
            OnPropertyChanged(nameof(Events));
        }

        private void ChangeResult(int idCompetitor)
        {
           CompetitorEvent? ce= new CompetitorEventServices().GetCompetitorEventByIdEventAndIdCompetitor(SelectedEvent.IdEvent,idCompetitor);

            if (ce != null)
            {
                Result = ce;
            }
        }


        public event PropertyChangedEventHandler? PropertyChanged;
        protected void OnPropertyChanged(string propertyName)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));

        }
    }
}
