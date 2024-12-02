using Microsoft.EntityFrameworkCore;
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
using TrackSpace.DBUtil;
using TrackSpace.Forms.CustomMessageBox;
using TrackSpace.Models;
using TrackSpace.Services;
using TrackSpace.Services.Shared;
using TrackSpace.ViewModel;
using TrackSpace.ViewModel.Shared;

namespace TrackSpace.Forms.Windows
{
  
    public partial class LoginWindow : Window
    {
        private LoginViewModel loginViewModel;
        public LoginWindow()
        {
            InitializeComponent();
            UserService service = ServicesLocator.UserService;
            loginViewModel =ViewModelLocator.LoginViewModel;
            
            

            mainFrame.Navigate(new Uri("Forms/Pages/LoginPage.xaml", UriKind.Relative));
            loginViewModel.CurrentFrame = mainFrame;
        }

        
        private void Border_Mouse_Down(object sender, MouseButtonEventArgs e)
        {
                this.DragMove();
           
        }
       
          
        
    }
}
