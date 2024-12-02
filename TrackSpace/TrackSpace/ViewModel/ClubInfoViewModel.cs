
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Diagnostics;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using TrackSpace.Command;
using TrackSpace.Forms.Pages;
using TrackSpace.Models;
using TrackSpace.Services;
using TrackSpace.Services.Shared;
using TrackSpace.ViewModel.Shared;


namespace TrackSpace.ViewModel
{
    public class ClubInfoViewModel: BaseViewModel, INotifyPropertyChanged
    {
        private Club _club;

        private Competitor _selectedCompetitor;

        public Competitor SelectedCompetitor { get { return _selectedCompetitor; } set { _selectedCompetitor = value; OnPropertyChanged(nameof(SelectedCompetitor)); } }

        private int _rowIndex=0;

        public int RowIndex { get { return _rowIndex; } set { _rowIndex = value; } }

        public Club Club { get { return _club; } set { _club = value;
                Club.Competitors = _clubsService.GetClubCompetitors(Club.IdClub);
                Club.IdUserNavigation = _clubsService.GetClubAdminById(Club.IdUser);
                
                OnPropertyChanged(nameof(Club)); } }

        public ICommand GoBackCommand { get; set; }

        private ClubsService _clubsService=ServicesLocator.ClubsService;
        

        public string Name { get { return _club.Name; } }
        public ClubInfoViewModel()
        {

            GoBackCommand = new RelayCommand(GoBack, CanShowWindow);
            
         }

            public void GoBack(object obj)
        {

            ViewModelLocator.ObserverMainPage.basePage.MainContent = new ClubsPage();
        }

        public event PropertyChangedEventHandler? PropertyChanged;
        protected void OnPropertyChanged(string propertyName)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
         
        }
        
    }
}
