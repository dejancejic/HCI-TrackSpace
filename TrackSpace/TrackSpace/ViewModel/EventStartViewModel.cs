using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TrackSpace.Services.Shared;

namespace TrackSpace.ViewModel
{
    public class EventStartViewModel:BaseViewModel,INotifyPropertyChanged
    {

        private DateTime _start;

        public DateTime Start { get { return _start; } set { _start = value; OnPropertyChanged(nameof(Start)); } }
        public EventStartViewModel(DateTime start)
        {
            Start = start;
        }



        public event PropertyChangedEventHandler PropertyChanged;
        protected void OnPropertyChanged(string propertyName)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }
    }
}
