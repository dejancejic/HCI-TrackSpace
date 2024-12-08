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
using System.Windows.Shapes;
using TrackSpace.Forms.Pages;
using TrackSpace.Models;
using TrackSpace.ViewModel.Shared;

namespace TrackSpace.Forms.Windows
{

    public partial class OrganizerMainPage : Window
    {
        public OrganizerMainPage(CompetitionOrganizer organizer)
        {
            InitializeComponent();
            basePage.MainContent = new CompetitionsPage();
            DataContext = ViewModelLocator.OrganizerViewModel;
        }

        private void MouseDownHandler(object sender, System.Windows.Input.MouseButtonEventArgs e)
        {
            if (e.LeftButton == MouseButtonState.Pressed)
            {
                this.DragMove();
            }

        }



    }
}
