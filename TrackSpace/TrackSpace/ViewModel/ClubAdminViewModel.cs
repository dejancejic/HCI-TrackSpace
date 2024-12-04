﻿using System;
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
using TrackSpace.Services.Shared;
using TrackSpace.Utils;
using TrackSpace.ViewModel.Shared;

namespace TrackSpace.ViewModel
{
    public class ClubAdminViewModel: BaseViewModel, INotifyPropertyChanged
    {
        private ClubAdmin _admin;
  




        public ICommand NavigateCommand { get; set; }
        public ICommand LogoutCommand { get; set; }

        

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


                var pageInstance = PageUtils.LoadUserControlFromUri($"Forms/Pages/{tag}.xaml");
                ViewModelLocator.ClubAdminMainPage.basePage.MainContent = pageInstance;


            }
        }


        private void Logout(object obj)
        {

            if (obj is Window window)
            {
                window.Close();
            }
        }
        
 

        public event PropertyChangedEventHandler PropertyChanged;
        protected void OnPropertyChanged(string propertyName)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }

    }
}
