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
using TrackSpace.ViewModel;
using TrackSpace.ViewModel.Shared;

namespace TrackSpace.Forms.Pages
{
    /// <summary>
    /// Interaction logic for LoginPage.xaml
    /// </summary>
    public partial class LoginPage : Page
    {

        private LoginViewModel loginViewModel;
        public LoginPage()
        {
            InitializeComponent();
            loginViewModel = ViewModelLocator.LoginViewModel;
        }


        private void PasswordBox_PasswordChanged(object sender, RoutedEventArgs e)
        {
            loginViewModel.Password = ((PasswordBox)sender).Password;
        }
     
        private void Border_Mouse_Down(object sender, MouseButtonEventArgs e)
        {
            if (e.ChangedButton == MouseButton.Left && e.Source is not Label && e.Source is not MaterialDesignThemes.Wpf.PackIcon)
            {
                Application.Current.MainWindow.DragMove();
            }
        }
        private void PasswordBox_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.Key == Key.Enter)
            {
                loginViewModel.LoginCommand.Execute(null);
            }
        }

        private void Username_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.Key == Key.Enter)
            {
                passwordTF.Focus();
            }
        }


    }
}
