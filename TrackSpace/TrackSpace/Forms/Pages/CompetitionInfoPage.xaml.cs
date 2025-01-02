using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using TrackSpace.Models;
using TrackSpace.ViewModel.Shared;

namespace TrackSpace.Forms.Pages
{
 
    public partial class CompetitionInfoPage : UserControl
    {
        public CompetitionInfoPage(Competition competition)
        {
            InitializeComponent();
            DataContext = ViewModelLocator.CompetitionInfoViewModel;
            ViewModelLocator.CompetitionInfoViewModel.Competition=competition;
            ViewModelLocator.CompetitionInfoPage = this;

            if (ViewModelLocator.AccountType.Equals("club_admin") && competition.Start > DateTime.Now.AddDays(2) && ViewModelLocator.AdminToAClub==true)
            {
                enterCompetitionBtn.Visibility = Visibility.Visible;
            }

            if(ViewModelLocator.AccountType.Equals("organizer") && ViewModelLocator.IdOrganizer==competition.IdUser)
            {
                deleteBtn.Visibility=Visibility.Visible;
            }

        }

        private void Hyperlink_Click(object sender, RoutedEventArgs e)
        {
            Hyperlink hyperlink = sender as Hyperlink;
            if (hyperlink != null)
            {
                var ev = (hyperlink.DataContext as Event);

                if (ev != null)
                {
                    
                    ViewModelLocator.CompetitionInfoViewModel.ShowEventById(ev.IdEvent);
                }
            }

        }



    }
}
