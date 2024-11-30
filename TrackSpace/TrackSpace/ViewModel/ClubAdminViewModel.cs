using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using TrackSpace.Command;
using TrackSpace.Forms.Pages;
using TrackSpace.Models;

namespace TrackSpace.ViewModel
{
    public class ClubAdminViewModel:INotifyPropertyChanged
    {
        private ClubAdmin _admin;
        private Frame _mainFrame;




        public ICommand NavigateCommand { get; set; }
        public ICommand LogoutCommand { get; set; }

        public Frame MainFrame { get { return _mainFrame; } set { _mainFrame = value; OnPropertyChanged(nameof(MainFrame)); } }

        public ClubAdmin Admin { get { return _admin; } set { _admin = value; } }
        public ClubAdminViewModel() {

            NavigateCommand = new RelayCommand(NavigateToPage, CanShowWindow);
            LogoutCommand = new RelayCommand(Logout, CanShowWindow);


        }
        private void NavigateToPage(object parameter)
        {
            if (parameter is string tag)
            {
                if (tag.Equals("Logout"))
                {
                    Logout(parameter);
                    return;
                }
                if (tag.Equals("SettingsPage"))
                {
                    MainFrame.Navigate(new SettingsPage(_admin.IdUserNavigation));
                    return;
                }
                MainFrame.Navigate(new Uri($"Forms/Pages/{tag}.xaml", UriKind.Relative));


            }
        }


        private void Logout(object obj)
        {

            if (obj is Window window)
            {
                window.Close();
            }
        }


        private bool CanShowWindow(object obj)
        {
            return true;
        }
        public event PropertyChangedEventHandler PropertyChanged;
        protected void OnPropertyChanged(string propertyName)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }

    }
}
