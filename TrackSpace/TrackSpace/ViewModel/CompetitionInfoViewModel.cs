using System;
using System.Collections.Generic;
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
using TrackSpace.Services.Shared;
using TrackSpace.Utils;
using TrackSpace.ViewModel.Shared;

namespace TrackSpace.ViewModel
{
    public class CompetitionInfoViewModel : BaseViewModel, INotifyPropertyChanged
    {
        private Competition _competition;
        public Competition Competition { get { return _competition; } set { _competition = value;
                foreach (var ev in _competition.Events)
                {
                    ev.IdCompetitionNavigation = value;
                }
                OnPropertyChanged(nameof(Competition)); } }
        public ICommand GoBackCommand { get; set; }

        public ICommand EnterCompetitionCommand { get; set; }
        public CompetitionInfoViewModel()
        {

            GoBackCommand = new RelayCommand(GoBack, CanShowWindow);
            EnterCompetitionCommand = new RelayCommand(EnterCompetition, CanShowWindow);

        }
        public void GoBack(object obj)
        {
            PageUtils.NavigatePages(ViewModelLocator.CompetitionsPage);
        }

        private void EnterCompetition(object obj) {

            if (_competition.Start > DateTime.Now.AddDays(2))
            {
                
                ViewModelLocator.EnterCompetitionViewModel.Competition = _competition;
                ViewModelLocator.EnterCompetitionViewModel.SetUpEntryModels();
                PageUtils.NavigatePages(ViewModelLocator.EnterCompetitionPage);
            }
            else
            {

                new CustomMessageBox(false, false, (string)Application.Current.Resources["error"], (string)Application.Current.Resources["cantEnterCompetition"]).Show();
            }
        }

        public void ShowEventById(object obj)
        {
            if (obj is int idEvent)
            {
                Event? ev = _competition.Events.FirstOrDefault(ev=>ev.IdEvent == idEvent);

                if (ev != null)
                {
                    PageUtils.NavigatePages(new EventInfoPage(ev!));
                    
                }

            }
        }



        public event PropertyChangedEventHandler? PropertyChanged;
        protected void OnPropertyChanged(string propertyName)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));

        }

    }
}
