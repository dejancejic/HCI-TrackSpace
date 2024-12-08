using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using TrackSpace.ViewModel.Shared;

namespace TrackSpace.Utils
{
    public class PageUtils
    {

        public static UserControl LoadUserControlFromUri(string uri)
        {

            Uri pageUri = new Uri(uri, UriKind.Relative);
            var page = (UserControl)Application.LoadComponent(pageUri);
            return page;
        }


        public static void NavigatePages(UserControl userControl)
        {
        
            switch(ViewModelLocator.AccountType)
            {
                case "observer":
                    ViewModelLocator.ObserverMainPage.basePage.MainContent = userControl;
                    break;
                case "club_admin":
                    ViewModelLocator.ClubAdminMainPage.basePage.MainContent = userControl;
                    break;
                case "organizer":
                    ViewModelLocator.OrganizerMainPage.basePage.MainContent = userControl;
                    break;

            }
        
        }
    }
}
