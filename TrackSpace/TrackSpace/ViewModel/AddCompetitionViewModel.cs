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
using TrackSpace.Models;
using TrackSpace.Services.Shared;

namespace TrackSpace.ViewModel
{
   public class AddCompetitionViewModel:BaseViewModel,INotifyPropertyChanged
    {

        private ObservableCollection<string> _locations = new ObservableCollection<string>();
        public ObservableCollection<string> Locations { get { return _locations; } set { _locations = value; OnPropertyChanged(nameof(Locations)); } }
        public ICommand AddEventsCommand { get; set; }

        private string _selectedLocation;
        public string SelectedLocation { get { return _selectedLocation; } set { _selectedLocation = value; OnPropertyChanged(nameof(SelectedLocation)); } }

        public AddCompetitionViewModel()
        {

            
            AddEventsCommand = new RelayCommand(AddEvents, CanShowWindow);
            ObservableCollection<Location> loc = ServicesLocator.LocationService.GetAllLocations();

            foreach (var location in loc)
            {
                Locations.Add(location.City+", "+location.PostNumber);
            }
            if(Locations.Count > 0)
            {
                SelectedLocation = Locations[0];
            }
        }

        private void AddEvents(object obj)
        {

            //TODO Navigate to events Page
            


        }
        public event PropertyChangedEventHandler PropertyChanged;
        protected void OnPropertyChanged(string propertyName)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }

    }
}
