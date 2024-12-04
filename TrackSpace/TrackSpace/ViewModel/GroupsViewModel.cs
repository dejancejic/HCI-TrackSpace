using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Input;
using System.Windows.Threading;
using TrackSpace.Command;
using TrackSpace.Models;
using TrackSpace.Services;
using TrackSpace.Services.Shared;
using TrackSpace.Utils;
using TrackSpace.ViewModel.Shared;

namespace TrackSpace.ViewModel
{
    public class GroupsViewModel:BaseViewModel, INotifyPropertyChanged
    {
        private RunningEvent _runningEvent;

        private ObservableCollection<CompetitorEvent> _competitorEvents=new ObservableCollection<CompetitorEvent>();

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


                OnPropertyChanged(nameof(Event));
            } 
        }
        private CompetitorEventServices _competitorEventServices = ServicesLocator.CompetitorEventService;
        public ICommand GoBackCommand { get; set; }
        public GroupsViewModel() {

            GoBackCommand = new RelayCommand(GoBack, CanShowWindow);
        }

        public void GoBack(object obj)
        {
            PageUtils.NavigatePages(ViewModelLocator.EventInfoPage);
        }


        public void UpdateCompetitorEvents(int idGroup)
        {
            var even= _competitorEventServices.GetCompetitorEventsByIdGroup(idGroup,_runningEvent.IdEvent);
      
            CompetitorEvents = even;
        }



        public event PropertyChangedEventHandler? PropertyChanged;
        protected void OnPropertyChanged(string propertyName)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));

        }

    }
}
