using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.ComponentModel;
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
using TrackSpace.Services.Shared;
using TrackSpace.ViewModel.Shared;

namespace TrackSpace.ViewModel
{
    public class LoginViewModel:BaseViewModel,INotifyPropertyChanged
    {
        public User? User { get; set; }
        private bool closeBtnPressed = false;
        private UserService _userService;
        private ClubAdminService _clubAdminService;
        private string _selectedLanguage;


       
        private bool _isEnglishChecked=true;
        public bool IsEnglishChecked
        {
            get => _isEnglishChecked;
            set
            {
                if (_isEnglishChecked != value)
                {
                    _isEnglishChecked = value;
                    OnPropertyChanged(nameof(IsEnglishChecked));
                    SwitchLanguage(_isEnglishChecked ? "en" : "sr");
                }
            }
        }


        public Frame CurrentFrame { get; set; }

        public string Username { get; set; } = "";
        public string Password { get; set; } = "";
       

        public ICommand LoginCommand { get; set; }
        public ICommand ShowObserverPageCommand { get; set; }
        public ICommand CloseFormCommand { get; set; }
        public ICommand MinimizeFormCommand { get; set; }
        public ICommand ShowSettingsFrameCommand { get; set; }
        public ICommand SwitchLanguageCommand { get; set; }

        

        public LoginViewModel() {

            LoginCommand = new RelayCommand(LoginUser,CanShowWindow);
            ShowObserverPageCommand = new RelayCommand(ShowObserverPage, CanShowWindow);
            CloseFormCommand = new RelayCommand(CloseForm, CanShowWindow);
            SwitchLanguageCommand = new RelayCommand(SwitchLanguage, CanShowWindow);
            MinimizeFormCommand = new RelayCommand(MinimizeForm, CanShowWindow);
            try
            {
                _userService = new UserService();
                _clubAdminService = new ClubAdminService();
            }
            catch (Exception ex)
            {
               // CustomMessageBox cm = new CustomMessageBox(yesNo:false,false, (string)Application.Current.FindResource("errorOccurred"), (string)Application.Current.FindResource("errorReadingDB"));
                //cm.Show();
            }


            }

            private void LoginUser(object obj)
        {
            _userService = new UserService();
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
               
                if (User.Type.Equals("club_admin"))
                {
                    ViewModelLocator.AccountType = User.Type;
                    ClubAdmin? admin;
                    try
                    {
                        admin = _clubAdminService.GetClubAdminById(User.IdUser);
                        if(admin == null)
                        {
                            return;
                        }
                        admin!.IdUserNavigation = User;
                    }
                    catch (Exception ex)
                    {
                        CustomMessageBox cm = new CustomMessageBox(yesNo: false, false, (string)Application.Current.FindResource("errorOccurred"), (string)Application.Current.FindResource("errorReadingDB"));
                        cm.Show();
                        return;
                    }
                    
                    ClubAdminMainPage clubAdminPage = new ClubAdminMainPage(admin!);

                    ViewModelLocator.IdAdmin = admin!.IdUser;

                    Club? adminsClub = new ClubsService().GetClubByIdAdmin(admin.IdUser);
                    if(adminsClub!=null)
                    ViewModelLocator.MyClubId = adminsClub.IdClub;

                    ViewModelLocator.MyClubInfoPage=new Forms.Pages.ClubInfoPage(adminsClub!,true);
                    if (adminsClub != null)
                    {
                        ViewModelLocator.AdminToAClub = true;
                        ViewModelLocator.EnterCompetitionViewModel.Competitors = new ClubsService().GetClubCompetitors(adminsClub!.IdClub);
                    }
                    else
                    {
                        ViewModelLocator.AdminToAClub = false;
                    }
                    ViewModelLocator.ClubAdminMainPage= clubAdminPage;
                    clubAdminPage.Closed += (a, b) => Application.Current.MainWindow.Show();
                    clubAdminPage.Show();
                    Application.Current.MainWindow.Hide();
                }
                else if (User.Type.Equals("organizer"))
                {
                    ViewModelLocator.AccountType = User.Type;
                    CompetitionOrganizer? organizer = new OrganizerService().GetOrganizerById(User.IdUser);
                    organizer.IdUserNavigation = User;
                    ViewModelLocator.IdOrganizer = organizer!.IdUser;
                    ViewModelLocator.ObserverViewModel.User = User;
                    ViewModelLocator.ObserverViewModel.UpdateViewModel();
                    OrganizerMainPage organizerPage = new OrganizerMainPage(organizer!);
                    ViewModelLocator.OrganizerMainPage = organizerPage;
                    organizerPage.Closed += (a, b) => Application.Current.MainWindow.Show();
                    organizerPage.Show();
                    Application.Current.MainWindow.Hide();
                }
                else if (User.Type.Equals("admin"))
                {
                    ViewModelLocator.AccountType = User.Type;
                    
                    ViewModelLocator.IdSystemAdmin = User.IdUser;
                    ViewModelLocator.ObserverViewModel.User = User;
                    ViewModelLocator.ObserverViewModel.UpdateViewModel();
                    AdminMainPage adminPage = new AdminMainPage(User);
                    ViewModelLocator.AdminMainPage = adminPage;
                    adminPage.Closed += (a, b) => Application.Current.MainWindow.Show();
                    adminPage.Show();
                    Application.Current.MainWindow.Hide();
                }
            }
            
        }
        private void SwitchLanguage(object obj)
        {
            if (obj is string language)
            {
                SetLanguage(language);
            }

        }
        public static void SetLanguage(string language)
        {
            Thread.CurrentThread.CurrentCulture = new System.Globalization.CultureInfo(language);
            Thread.CurrentThread.CurrentUICulture = new System.Globalization.CultureInfo(language);

            var existingLanguage = Application.Current.Resources.MergedDictionaries.FirstOrDefault(d => d.Source != null && d.Source.ToString().Contains("Dictionary-"));
            if (existingLanguage != null)
            {
                Application.Current.Resources.MergedDictionaries.Remove(existingLanguage);
            }
            ResourceDictionary resdict = new ResourceDictionary()
            {
                Source = new Uri($"Resources/Dictionary-{language}.xaml", UriKind.Relative)
            };

            Application.Current.Resources.MergedDictionaries.Add(resdict);


        }

        

        private void ShowObserverPage(object obj) {
            ViewModelLocator.AccountType = "observer";

            ObserverMainPage observerPage = new ObserverMainPage();
            ViewModelLocator.ObserverMainPage=observerPage; 
                observerPage.Closed += (a, b) => Application.Current.MainWindow.Show(); 
                observerPage.Show(); 
                Application.Current.MainWindow.Hide();
            
        }
        private void CloseForm(object obj)
        {
            Application.Current.MainWindow.Close();
        
        }

        protected void MinimizeForm(object obj)
        {
            Application.Current.MainWindow.WindowState = WindowState.Minimized;
        }

        public event PropertyChangedEventHandler PropertyChanged;
        protected void OnPropertyChanged(string propertyName)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));

        }



    }
}
