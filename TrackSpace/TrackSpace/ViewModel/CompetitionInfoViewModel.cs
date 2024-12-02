using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;
using TrackSpace.Command;
using TrackSpace.Forms.Pages;
using TrackSpace.Models;
using TrackSpace.Services.Shared;
using TrackSpace.ViewModel.Shared;

namespace TrackSpace.ViewModel
{
    public class CompetitionInfoViewModel : BaseViewModel, INotifyPropertyChanged
    {
        private Competition _competition;
        public Competition Competition { get { return _competition; } set { _competition = value; OnPropertyChanged(nameof(Competition)); } }
        public ICommand GoBackCommand { get; set; }


        public CompetitionInfoViewModel()
        {

            GoBackCommand = new RelayCommand(GoBack, CanShowWindow);

        }
        public void GoBack(object obj)
        {

            ViewModelLocator.ObserverMainPage.basePage.MainContent = ViewModelLocator.CompetitionsPage;
        }


        public event PropertyChangedEventHandler? PropertyChanged;
        protected void OnPropertyChanged(string propertyName)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));

        }

    }
}
