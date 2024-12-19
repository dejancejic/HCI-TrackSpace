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
    
    public partial class AddEventsPage : UserControl
    {
        public AddEventsPage()
        {
            InitializeComponent();
            DataContext = ViewModelLocator.AddCompetitionViewModel;
        }

        private void LoadEvents(object sender, RoutedEventArgs e)
        {
            ViewModelLocator.AddCompetitionViewModel.LoadEventsCommand.Execute(sender);
        }
    }
}
