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
        private static LoginViewModel _loginViewModel = new LoginViewModel();
        private static ObserverViewModel _observerViewModel = new ObserverViewModel();
        private static ClubAdminViewModel _clubAdminViewModel = new ClubAdminViewModel();
        private static ClubsViewModel _clubsViewModel = new ClubsViewModel();
        private static ClubInfoViewModel _clubInfoViewModel=new ClubInfoViewModel();
        private static CompetitionsViewModel _competitionsViewModel = new CompetitionsViewModel();
        private static CompetitionInfoViewModel _competitionInfoViewModel = new CompetitionInfoViewModel();

        private static CompetitionsPage _competitionsPage = new CompetitionsPage();

        private static ObserverMainPage _observerMainPage;

        public static CompetitionsPage CompetitionsPage { get { return _competitionsPage; } set { _competitionsPage = value; } }
        public static ObserverMainPage ObserverMainPage { get { return _observerMainPage; } set { _observerMainPage=value; } }
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

    }

}
