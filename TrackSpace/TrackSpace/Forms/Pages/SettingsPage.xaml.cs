using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using TrackSpace.Models;
using TrackSpace.ViewModel;
using TrackSpace.ViewModel.Shared;

namespace TrackSpace.Forms.Pages
{
  
    public partial class SettingsPage : UserControl
    {
        private ObserverViewModel _observerViewModel = ViewModelLocator.ObserverViewModel;
        public SettingsPage()
        {
            InitializeComponent();
            DataContext = _observerViewModel;
        }

        //Constructor when a user is logged in
        public SettingsPage(User user)
        {
            InitializeComponent();
            
            _observerViewModel.User=user;
            DataContext = _observerViewModel;
        }


    }
}
