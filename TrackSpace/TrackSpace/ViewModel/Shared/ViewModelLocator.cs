using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TrackSpace.ViewModel.Shared
{
    public class ViewModelLocator
    {
        private static LoginViewModel _loginViewModel = new LoginViewModel();
        private static ObserverViewModel _observerViewModel = new ObserverViewModel();
        private static ClubAdminViewModel _clubAdminViewModel = new ClubAdminViewModel();
        private static ClubsViewModel _clubsViewModel = new ClubsViewModel();
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
        }

    }

}
