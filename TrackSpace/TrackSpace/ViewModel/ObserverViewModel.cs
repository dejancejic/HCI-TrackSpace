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

namespace TrackSpace.ViewModel
{
    public class ObserverViewModel:INotifyPropertyChanged
    {
        private Frame _mainFrame; 
        public Frame MainFrame { get { return _mainFrame; } set { _mainFrame = value; OnPropertyChanged(nameof(MainFrame)); } }
        public ICommand NavigateCommand { get; set; }
        public ICommand LogoutCommand { get; set; }
        public ObserverViewModel() {

            NavigateCommand = new RelayCommand(NavigateToPage,CanShowWindow);
            LogoutCommand = new RelayCommand(Logout,CanShowWindow);
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
                MainFrame.Navigate(new Uri($"Forms/Pages/{tag}.xaml", UriKind.Relative));          
                    
            }
        }

        private void Logout(object obj)
        {

            if (obj is Window window) { 
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
