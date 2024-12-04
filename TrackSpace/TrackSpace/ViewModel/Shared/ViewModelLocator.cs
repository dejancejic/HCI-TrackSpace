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
        private static LoginViewModel _loginViewModel = new LoginViewModel();
        private static ObserverViewModel _observerViewModel = new ObserverViewModel();
        private static ClubAdminViewModel _clubAdminViewModel = new ClubAdminViewModel();
        private static ClubsViewModel _clubsViewModel = new ClubsViewModel();
        private static ClubInfoViewModel _clubInfoViewModel=new ClubInfoViewModel();
        private static CompetitionsViewModel _competitionsViewModel = new CompetitionsViewModel();
        private static CompetitionInfoViewModel _competitionInfoViewModel = new CompetitionInfoViewModel();
        private static EventInfoViewModel _eventInfoViewModel=new EventInfoViewModel();
        private static GroupsViewModel _groupsViewModel=new GroupsViewModel();

        private static CompetitionsPage _competitionsPage = new CompetitionsPage();
        private static CompetitionInfoPage _competitionInfoPage = new CompetitionInfoPage(new Models.Competition());
        private static EventInfoPage _eventInfoPage=new EventInfoPage(new Models.Event());

        private static ObserverMainPage _observerMainPage;
        private static ClubAdminMainPage _clubAdminMainPage;
        private static OrganizerMainPage _organizerMainPage;
        public static CompetitionsPage CompetitionsPage { get { return _competitionsPage; } set { _competitionsPage = value; } }
        public static EventInfoPage EventInfoPage { get { return _eventInfoPage; } set { _eventInfoPage = value; } }
        public static CompetitionInfoPage CompetitionInfoPage { get { return _competitionInfoPage; } set { _competitionInfoPage = value; } }
        public static ObserverMainPage ObserverMainPage { get { return _observerMainPage; } set { _observerMainPage=value; } }

        public static OrganizerMainPage OrganizerMainPage { get { return _organizerMainPage; } set { _organizerMainPage = value; } }

        public static ClubAdminMainPage ClubAdminMainPage { get { return _clubAdminMainPage; } set { _clubAdminMainPage = value; } }
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
        }
    }

}
