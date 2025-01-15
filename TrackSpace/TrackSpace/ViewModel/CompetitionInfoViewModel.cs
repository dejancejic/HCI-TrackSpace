using Microsoft.EntityFrameworkCore.Migrations.Operations;
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
using TrackSpace.Services;
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
        public ICommand DeleteCompetitionCommand { get; set; }
        public CompetitionInfoViewModel()
        {

            GoBackCommand = new RelayCommand(GoBack, CanShowWindow);
            EnterCompetitionCommand = new RelayCommand(EnterCompetition, CanShowWindow);
            DeleteCompetitionCommand = new RelayCommand(DeleteCompetition, CanShowWindow);
        }
        public void GoBack(object obj)
        {
            var organizers = ViewModelLocator.CompetitionsPage.OrganizersCompetition;
            ViewModelLocator.CompetitionsPage = new CompetitionsPage(organizers);
            PageUtils.NavigatePages(ViewModelLocator.CompetitionsPage);
        }
        public void UpdateCompetitionEvents()
        {
            foreach (var ev in Competition.Events)
            {

                ev.CompetitorEvents =new CompetitorEventServices().GetCompetitorEventsByIdEvent(ev.IdEvent);
               
            }
            Competition = Competition;
            OnPropertyChanged(nameof(Competition.Events));
            OnPropertyChanged(nameof(Competition));
        }

        private void EnterCompetition(object obj) {

            if (_competition.Start > DateTime.Now.AddDays(2))
            {
                
                ViewModelLocator.EnterCompetitionViewModel.Competitors = new CompetitorsService().GetCompetitorsByIdClub(ViewModelLocator.MyClubId);
                
                ViewModelLocator.EnterCompetitionViewModel.Competition = _competition;
                ViewModelLocator.EnterCompetitionViewModel.SetUpEntryModels();

                PageUtils.NavigatePages(new EnterCompetitionPage(_competition));
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

        private void DeleteCompetition(object obj)
        {
            new CustomMessageBox(true, true, (string)Application.Current.Resources["deleteConfirm"], (string)Application.Current.Resources["sureToDeleteCompetition"], (a) => {
                
                new CompetitionsService().DeleteCompetition(Competition);
                PageUtils.NavigatePages(new CompetitionsPage());
                new CustomMessageBox(false, true, (string)Application.Current.Resources["deleteSuccessful"], (string)Application.Current.Resources["successfullyDeletedCompetition"]).Show();
            }, 
                (a) => { }).Show();
            
           
        }


        public event PropertyChangedEventHandler? PropertyChanged;
        protected void OnPropertyChanged(string propertyName)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));

        }

    }
}
