using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Configuration;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Input;
using TrackSpace.Command;
using TrackSpace.Forms.CustomMessageBox;
using TrackSpace.Forms.Pages;
using TrackSpace.Models;
using TrackSpace.Services;
using TrackSpace.Services.Shared;
using TrackSpace.Utils;
using TrackSpace.ViewModel.Shared;

namespace TrackSpace.ViewModel
{
    public class AdminViewModel:BaseViewModel, INotifyPropertyChanged
    {


        private ObservableCollection<string> _userTypes=new ObservableCollection<string>() {
            (string)Application.Current.Resources["admin"],
        (string)Application.Current.Resources["clubAdmin"],
        (string)Application.Current.Resources["organizer"]};
        public ObservableCollection<string> UserTypes { get { return _userTypes; } set{ _userTypes = value;  OnPropertyChanged(nameof(UserTypes)); } }

        private ObservableCollection<ClubAdmin> _clubAdmins = new ObservableCollection<ClubAdmin>();

        public ObservableCollection<ClubAdmin> ClubAdmins { get { return _clubAdmins; } set { _clubAdmins = value; OnPropertyChanged(nameof(ClubAdmins)); } }

        private string _password;

        public string Password { get { return _password; } set { _password = value; OnPropertyChanged(nameof(Password)); } }
        private string _repeatedPassword;

        public string RepeatedPassword { get { return _repeatedPassword; } set { _repeatedPassword = value; OnPropertyChanged(nameof(RepeatedPassword)); } }

        private string _username;

        public string Username { get { return _username; } set { _username = value; OnPropertyChanged(nameof(Username)); } }

        private string _mail;

        public string Mail { get { return _mail; } set { _mail = value; OnPropertyChanged(nameof(Mail)); } }

        private string? _selectedUserType=null;

        public string? SelectedUserType { get { return _selectedUserType; } set { _selectedUserType = value; OnPropertyChanged(nameof(SelectedUserType)); } }

        private string _title;

        public string Title { get { return _title; } set { _title = value; OnPropertyChanged(nameof(Title)); } }


        private string _code;

        public string Code { get { return _code; } set { _code = value; OnPropertyChanged(nameof(Code)); } }

        private string _phone;

        public string Phone { get { return _phone; } set { _phone = value; OnPropertyChanged(nameof(Phone)); } }


        private ClubAdmin? _selectedAdmin=null;

        public ClubAdmin? SelectedAdmin { get { return _selectedAdmin; } set { _selectedAdmin = value; OnPropertyChanged(nameof(SelectedAdmin)); } }

        public ICommand NavigateCommand { get; set; }
        public ICommand LogoutCommand { get; set; }
        public ICommand AddUserCommand { get; set; }
        public ICommand AddClubCommand { get; set; }

        private UserService _userService=new UserService();

        public AdminViewModel()
        {
            NavigateCommand = new RelayCommand(NavigateToPage, CanShowWindow);
            LogoutCommand = new RelayCommand(Logout, CanShowWindow);
            AddUserCommand = new RelayCommand(AddUser, CanShowWindow);
            AddClubCommand = new RelayCommand(AddClub, CanShowWindow);

            ClubAdmins =new ObservableCollection<ClubAdmin>(new ClubAdminService().GetAdminsWithoutClubId());
        }


        private void AddUser(object o)
        {

            if (Username==null || Username=="" || Password==null || Password.Equals("") || RepeatedPassword==null || RepeatedPassword.Equals("") || Mail==null || Mail.Equals(""))
            {
                new CustomMessageBox(false, false, (string)Application.Current.Resources["error"], (string)Application.Current.Resources["fillFields"]).Show();
                return;
            }
             
            if(new UserService().CheckUserExists(Username))
            {
                new CustomMessageBox(false, false, (string)Application.Current.Resources["error"], (string)Application.Current.Resources["userExists"]).Show();
             
                return;
            }

            if (Password.Length< int.Parse(ConfigurationManager.AppSettings[1]!) || Password.Length > int.Parse(ConfigurationManager.AppSettings[2]!))
            {
                new CustomMessageBox(false, false, (string)Application.Current.Resources["error"], (string)Application.Current.Resources["passwordsLength"]).Show();
                return;
            }

            if(!Password.Equals(RepeatedPassword))
            {
                new CustomMessageBox(false, false, (string)Application.Current.Resources["error"], (string)Application.Current.Resources["passwordsNoMatch"]).Show();
                return;
            }

            if (SelectedUserType == null)
            {
                new CustomMessageBox(false, false, (string)Application.Current.Resources["error"], (string)Application.Current.Resources["selectUserType"]).Show(); 
                return;
            }


            new CustomMessageBox(true, true,
                (string)Application.Current.Resources["confirm"],
                (string)Application.Current.Resources["sureToAddUser"],
                (y) => {

                    if (SelectedUserType.Equals((string)Application.Current.Resources["admin"]))
                    {
                        _userService.AddAdmin(Username, Password, Mail);
                    }
                    else if (SelectedUserType.Equals((string)Application.Current.Resources["clubAdmin"]))
                    {
                        _userService.AddClubAdmin(Username, Password, Mail);
                    }
                    else if (SelectedUserType.Equals((string)Application.Current.Resources["organizer"]))
                    {
                        _userService.AddOrganizer(Username, Password, Mail);
                    }
                    new CustomMessageBox(false, true, (string)Application.Current.Resources["addCompetitor"], (string)Application.Current.Resources["addedUser"]).Show();
                    ViewModelLocator.AdminMainPage.basePage.MainContent = new AddUserPage();
                },
                (n) =>
                {
                }).Show();

 

        }


        private void AddClub(object o)
        {
            if(Phone==null || Title==null || Code==null || Phone.Equals("") || Title.Equals("") || Code.Equals(""))
            {
                new CustomMessageBox(false, false, (string)Application.Current.Resources["error"], (string)Application.Current.Resources["fillFields"]).Show();
                return;
            }

            if (new ClubsService().CheckClubExists(Code))
            {
                new CustomMessageBox(false, false, (string)Application.Current.Resources["error"], (string)Application.Current.Resources["clubExists"]).Show();

                return;
            }

            if (Code.Length!= int.Parse(ConfigurationManager.AppSettings[3]!))
            {
                new CustomMessageBox(false, false, (string)Application.Current.Resources["error"], (string)Application.Current.Resources["codeMax"]).Show();
                return;
            }

            if (SelectedAdmin == null)
            {
                new CustomMessageBox(false, false,(string) Application.Current.Resources["error"], (string)Application.Current.Resources["selectClubAdmin"]).Show();
                return;
            }
            

            new CustomMessageBox(true, true,
                (string) Application.Current.Resources["confirm"],
                (string)Application.Current.Resources["sureToAddClub"],
                (y) => {
                    new ClubsService().AddClub(Title,Code,Phone,SelectedAdmin.IdUser);

                    new CustomMessageBox(false, false, (string)Application.Current.Resources["addCompetitor"], (string)Application.Current.Resources["addedClub"]).Show();
                    ViewModelLocator.AdminMainPage.basePage.MainContent = new AddClubPage();
                },
                (n) =>
                {
                }).Show();
                

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
                ViewModelLocator.AdminMainPage.basePage.MainContent = pageInstance;


            }
        }

        private void Logout(object obj)
        {

            ViewModelLocator.AdminMainPage.Close();
        }



        public event PropertyChangedEventHandler PropertyChanged;
        protected void OnPropertyChanged(string propertyName)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }
    }
}
