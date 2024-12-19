using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Controls;
using TrackSpace.Forms.Pages;
using TrackSpace.Forms.Windows;

namespace TrackSpace.ViewModel.Shared
{
    public class ViewModelLocator
    {

        public static string AccountType { get; set; } = "observer";
        public static int IdAdmin { get; set; }
        public static int IdOrganizer { get; set; }
        private static LoginViewModel _loginViewModel = new LoginViewModel();
        private static ObserverViewModel _observerViewModel = new ObserverViewModel();
        private static ClubAdminViewModel _clubAdminViewModel = new ClubAdminViewModel();
        private static ClubsViewModel _clubsViewModel = new ClubsViewModel();
        private static ClubInfoViewModel _clubInfoViewModel=new ClubInfoViewModel();
        private static CompetitionsViewModel _competitionsViewModel = new CompetitionsViewModel();
        private static CompetitionInfoViewModel _competitionInfoViewModel = new CompetitionInfoViewModel();
        private static EventInfoViewModel _eventInfoViewModel=new EventInfoViewModel();
        private static GroupsViewModel _groupsViewModel=new GroupsViewModel();
        private static EnterCompetitionViewModel _enterCompetitionViewModel = new EnterCompetitionViewModel();
        private static OrganizerViewModel _organizerViewModel = new OrganizerViewModel();
        private static AddCompetitionViewModel _addCompetitionViewModel = new AddCompetitionViewModel();
       

        private static CompetitionsPage _competitionsPage = new CompetitionsPage();
        private static CompetitionsPage _myCompetitionsPage = new CompetitionsPage();
        private static CompetitionInfoPage _competitionInfoPage = new CompetitionInfoPage(new Models.Competition());
        private static EventInfoPage _eventInfoPage=new EventInfoPage(new Models.Event());
        private static ClubInfoPage _clubInfoPage=new ClubInfoPage(new Models.Club());
        private static EnterCompetitionPage _enterCompetitionPage = new EnterCompetitionPage(new Models.Competition());
        private static AddCompetitionPage _addCompetitionPage = new AddCompetitionPage();

        private static ObserverMainPage _observerMainPage;
        private static ClubAdminMainPage _clubAdminMainPage;
        private static OrganizerMainPage _organizerMainPage;

        public static CompetitionsPage MyCompetitionsPage { get { return _myCompetitionsPage; } set { _myCompetitionsPage = value; } }
        public static CompetitionsPage CompetitionsPage { get { return _competitionsPage; } set { _competitionsPage = value; } }
        public static EventInfoPage EventInfoPage { get { return _eventInfoPage; } set { _eventInfoPage = value; } }

        public static ClubInfoPage MyClubInfoPage { get { return _clubInfoPage; } set { _clubInfoPage = value; } }
        public static CompetitionInfoPage CompetitionInfoPage { get { return _competitionInfoPage; } set { _competitionInfoPage = value; } }
        public static ObserverMainPage ObserverMainPage { get { return _observerMainPage; } set { _observerMainPage=value; } }

        public static OrganizerMainPage OrganizerMainPage { get { return _organizerMainPage; } set { _organizerMainPage = value; } }

        public static ClubAdminMainPage ClubAdminMainPage { get { return _clubAdminMainPage; } set { _clubAdminMainPage = value; } }
        public static EnterCompetitionPage EnterCompetitionPage { get { return _enterCompetitionPage; }set{ _enterCompetitionPage = value; } }

        public static AddCompetitionPage AddCompetitionPage { get { return _addCompetitionPage; } set { _addCompetitionPage = value; } }

        public static LoginViewModel LoginViewModel
        {
            get { return _loginViewModel; }
        }

        public static ObserverViewModel ObserverViewModel
        {
            get { return _observerViewModel; }
        }
        public static ClubAdminViewModel ClubAdminViewModel
        {
            get { return _clubAdminViewModel; }
        }
        public static ClubsViewModel ClubsViewModel
        {
            get { return _clubsViewModel; }
            set { _clubsViewModel = value; }
        }
        
        public static ClubInfoViewModel ClubInfoViewModel
        {
            get { return _clubInfoViewModel; }
        }

        public static CompetitionsViewModel CompetitionsViewModel
        {
            get { return _competitionsViewModel; }
            set { _competitionsViewModel = value; }
        }
        public static CompetitionInfoViewModel CompetitionInfoViewModel
        {
            get { return _competitionInfoViewModel; }
        }
        public static EventInfoViewModel EventInfoViewModel
        {
            get { return _eventInfoViewModel; }
        }
        public static GroupsViewModel GroupsViewModel
        {
            get { return _groupsViewModel; }
            set { _groupsViewModel = value; }
        }
        public static EnterCompetitionViewModel EnterCompetitionViewModel
        {
            get { return _enterCompetitionViewModel;
            }
            set {
                _enterCompetitionViewModel= value;
            }
        }
        public static OrganizerViewModel OrganizerViewModel
        {
            get
            {
                return _organizerViewModel;
            }
            set
            {
                _organizerViewModel=value;
            }
        }
        public static AddCompetitionViewModel AddCompetitionViewModel
        {
            get
            {
                return _addCompetitionViewModel;
            }
            set
            {
                _addCompetitionViewModel = value;
            }
        }
    }

}
