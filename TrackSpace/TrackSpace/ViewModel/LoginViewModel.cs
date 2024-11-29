using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using System.Windows.Media.Animation;
using TrackSpace.Command;
using TrackSpace.DBUtil;
using TrackSpace.Forms.CustomMessageBox;
using TrackSpace.Forms.Windows;
using TrackSpace.Models;
using TrackSpace.Services;

namespace TrackSpace.ViewModel
{
    public class LoginViewModel
    {
        public User? User { get; set; }
        private bool closeBtnPressed = false;
        private UserService _userService;
        private string _selectedLanguage;
        public string SelectedLanguage { get { return _selectedLanguage; }
            set {
                if (_selectedLanguage != value) 
                { _selectedLanguage = value; SetLanguage(value); 
                     
                } 
            } 
        }

        public Frame CurrentFrame { get; set; }

        public string Username { get; set; }
        public string Password { get; set; }
       

        public ICommand LoginCommand { get; set; }
        public ICommand ShowObserverPageCommand { get; set; }
        public ICommand CloseFormCommand { get; set; }
        public ICommand ShowSettingsFrameCommand { get; set; }
        public ICommand SwitchLanguageCommand { get; set; }

        public bool IsEnglishSelected => SelectedLanguage == "en"; 
        public bool IsSerbianSelected => SelectedLanguage == "sr";

        public LoginViewModel() {

            LoginCommand = new RelayCommand(LoginUser,CanShowWindow);
            ShowObserverPageCommand = new RelayCommand(ShowObserverPage, CanShowWindow);
            CloseFormCommand = new RelayCommand(CloseForm, CanShowWindow);
            SwitchLanguageCommand = new RelayCommand(SwitchLanguage, CanShowWindow);
            try
            {
                var optionsBuilder = new DbContextOptionsBuilder<TrackspaceContext>();
                optionsBuilder.UseMySql(TrackspaceContext.ConnectionString,
                    new MySqlServerVersion(new Version(8, 0, 36)));
                var context = new TrackspaceContext(optionsBuilder.Options);
                _userService = new UserService(context);

            }
            catch (Exception ex)
            {
               // CustomMessageBox cm = new CustomMessageBox(yesNo:false,false, (string)Application.Current.FindResource("errorOccurred"), (string)Application.Current.FindResource("errorReadingDB"));
                //cm.Show();
            }


            }

            private void LoginUser(object obj)
        {
            
                User = _userService.GetUserByUsernameAndPassword(Username, Password);

                if (User == null)
                {
                    CustomMessageBox ms = new
                        CustomMessageBox
                        (false, false, (string)Application.Current.FindResource("wrongCredentials"), (string)Application.Current.FindResource("enterValidCredentials"));
                    ms.Show();
                }
                else
                {
                    //TODO select usertype
                            
                }
            
        }
        private void SwitchLanguage(object obj)
        {
            if (obj is string language)
            {
                SelectedLanguage = language;
            }

        }
        private void SetLanguage(string language)
        {
            Thread.CurrentThread.CurrentCulture = new System.Globalization.CultureInfo(language);
            Thread.CurrentThread.CurrentUICulture = new System.Globalization.CultureInfo(language);

            Application.Current.Resources.MergedDictionaries.RemoveAt(Application.Current.Resources.MergedDictionaries.Count - 1);
            ResourceDictionary resdict = new ResourceDictionary()
            {
                Source = new Uri($"Resources/Dictionary-{language}.xaml", UriKind.Relative)
            };

            Application.Current.Resources.MergedDictionaries.Add(resdict);


        }

        

        private void ShowObserverPage(object obj) {

            
                ObserverMainPage observerPage = new ObserverMainPage(); 
                observerPage.Closed += (a, b) => Application.Current.MainWindow.Show(); 
                observerPage.Show(); 
                Application.Current.MainWindow.Hide();
            
        }
        private void CloseForm(object obj)
        {
            Application.Current.MainWindow.Close();
        
        }


        private bool CanShowWindow(object obj)
        {
            return true;

        }
    }
}
