using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Input;
using TrackSpace.Command;
using TrackSpace.ViewModel;
using TrackSpace.ViewModel.Shared;

namespace TrackSpace.Services.Shared
{
   public class BaseViewModel
    {

        public ICommand CloseCommand { get; set; }
        public ICommand MinimizeCommand { get; set; }

        public BaseViewModel() {

            CloseCommand = new RelayCommand(Close, CanShowWindow);
            MinimizeCommand = new RelayCommand(Minimize, CanShowWindow);
        }

        protected void Close(object obj)
        {
            switch (ViewModelLocator.AccountType)
            {
                case "observer":
            ViewModelLocator.ObserverMainPage.Close();
                    break;
                case "club_admin":
                    ViewModelLocator.ClubAdminMainPage.Close();
                    break;
                case "organizer":
                    ViewModelLocator.OrganizerMainPage.Close();
                    break;
                case "admin":
                    ViewModelLocator.AdminMainPage.Close();
                    break;
            }

        }


        protected void Minimize(object obj)
        {
            switch (ViewModelLocator.AccountType)
            {
                case "observer":
                    ViewModelLocator.ObserverMainPage.WindowState = WindowState.Minimized;
                    break;
                case "club_admin":
                    ViewModelLocator.ClubAdminMainPage.WindowState = WindowState.Minimized;
                    break;
                case "organizer":
                    ViewModelLocator.OrganizerMainPage.WindowState = WindowState.Minimized;
                    break;
                case "admin":
                    ViewModelLocator.AdminMainPage.WindowState = WindowState.Minimized;
                    break;
            }
        }

        protected bool CanShowWindow(object obj)
        {
            return true;
        }


    }
}
