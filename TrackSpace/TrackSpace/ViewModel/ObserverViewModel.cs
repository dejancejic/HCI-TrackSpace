using MaterialDesignThemes.Wpf;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Diagnostics.Eventing.Reader;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using System.Windows.Media;
using TrackSpace.Command;
using TrackSpace.Forms.Pages;
using TrackSpace.Models;
using TrackSpace.Services;
using TrackSpace.Services.Shared;
using TrackSpace.Utils;
using TrackSpace.ViewModel.Shared;

namespace TrackSpace.ViewModel
{
    public class ObserverViewModel : BaseViewModel, INotifyPropertyChanged
    {

        private string _selectedFont;
        private string _selectedLanguage;

        private User? _user;


        public User? User{get{ return _user; } set { _user = value; } }



        private bool _isGreenTheme; 
        private bool _isBlueTheme; 
        private bool _isRedTheme;

        private bool _isGreenThemeEnabled = true; 
        private bool _isBlueThemeEnabled = true;
        private bool _isRedThemeEnabled = true;



        public bool IsGreenTheme { get { return _isGreenTheme; } 
            set { _isGreenTheme = value; OnPropertyChanged(nameof(IsGreenTheme)); if (value) SwitchTheme("Green"); } }
        public bool IsBlueTheme { get { return _isBlueTheme; } 
            set { _isBlueTheme = value; OnPropertyChanged(nameof(IsBlueTheme)); if (value) SwitchTheme("Blue"); } }
        public bool IsRedTheme { get { return _isRedTheme; } 
            set { _isRedTheme = value; OnPropertyChanged(nameof(IsRedTheme)); if (value) SwitchTheme("Red"); } }



        public bool IsGreenThemeEnabled { get { return _isGreenThemeEnabled; } set { _isGreenThemeEnabled = value; OnPropertyChanged(nameof(IsGreenThemeEnabled)); } }
        public bool IsBlueThemeEnabled { get { return _isBlueThemeEnabled; } set { _isBlueThemeEnabled = value; OnPropertyChanged(nameof(IsBlueThemeEnabled)); } }
        public bool IsRedThemeEnabled { get { return _isRedThemeEnabled; } set { _isRedThemeEnabled = value; OnPropertyChanged(nameof(IsRedThemeEnabled)); } }


        public ObservableCollection<string> Fonts { get; set; }
        public ObservableCollection<string> Languages { get; set; }

        private UserService _userService = ServicesLocator.UserService;

        public void UpdateViewModel()
        {

            int indexFont = 0;
            int indexTheme = 0;


            if (User != null)
            {
                indexFont = User.FontID;
                indexTheme = User.ThemeID;
            }
            if (indexTheme == 0)
                IsGreenTheme = true;
            else if (indexTheme == 1)
                IsBlueTheme = true;
            else IsRedTheme = true;

            SelectedFont = Fonts[indexFont];

        }
       

        public string SelectedFont
        {
            get { return _selectedFont; }
            set
            {
                _selectedFont = value;
                OnPropertyChanged(nameof(SelectedFont));
                UpdateFont(value);
            }
        }
        public string SelectedLanguage
        {
            get { return _selectedLanguage; }
            set
            {
                _selectedLanguage = value;
                OnPropertyChanged(nameof(SelectedLanguage));
                UpdateLanguage(value);
            }
        }


        public ICommand NavigateCommand { get; set; }
        public ICommand LogoutCommand { get; set; }

        public ICommand SwitchThemeCommand { get; set; }
        public ObserverViewModel() {

            Fonts = new ObservableCollection<string> { "Roboto", "Consolas", "Comic Sans MS" };
            Languages = new ObservableCollection<string> { "English", "Srpski" };

            NavigateCommand = new RelayCommand(NavigateToPage,CanShowWindow);
            LogoutCommand = new RelayCommand(Logout,CanShowWindow);

            SwitchThemeCommand = new RelayCommand(SwitchTheme,CanShowWindow);


            UpdateViewModel();

            SelectedLanguage= Languages[0];
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
                PageUtils.NavigatePages(pageInstance);


            }
        }

       



        private void Logout(object obj)
        {
            Close(obj);
        }

        private void SwitchTheme(object parameter)
        {
            if (parameter is string theme)
            {
                if (User != null)
                {
                    switch (theme)
                    {
                        case "Green":
                            User.ThemeID = 0;
                            _userService.UpdateUserTheme(User.IdUser, 0);
                            break;
                        case "Blue":
                            User.ThemeID = 1;
                            _userService.UpdateUserTheme(User.IdUser, 1);
                            break;
                        case "Red":
                            User.ThemeID = 2;
                            _userService.UpdateUserTheme(User.IdUser, 2);
                            break;
                    }
                }

                switch (theme) {
                    case "Green":
                        IsBlueTheme = false; 
                        IsRedTheme = false;
                        IsGreenThemeEnabled = false; 
                        IsBlueThemeEnabled = true; 
                        IsRedThemeEnabled = true;
                        break; 
                    case "Blue":
                        IsGreenTheme = false;
                        IsRedTheme = false;
                        IsGreenThemeEnabled = true;
                        IsBlueThemeEnabled = false; 
                        IsRedThemeEnabled = true;
                        break; 
                    case "Red":
                        IsGreenTheme = false;
                        IsBlueTheme = false;
                        IsGreenThemeEnabled = true; 
                        IsBlueThemeEnabled = true;
                        IsRedThemeEnabled = false;
                        break;
                }

                SetTheme(theme);
            } 
        }


        public static void SetTheme(string theme)
        { 
                if (Application.Current.Resources.MergedDictionaries.Count > 1) 
                {
                var existingTheme = Application.Current.Resources.MergedDictionaries.FirstOrDefault(d => d.Source != null && d.Source.ToString().EndsWith("Theme.xaml"));
                if (existingTheme != null) {
                    Application.Current.Resources.MergedDictionaries.Remove(existingTheme);
                }
            } 
                ResourceDictionary newTheme = new ResourceDictionary() 
                { Source = new Uri($"Themes/{theme}Theme.xaml", UriKind.Relative) }; 
               
                Application.Current.Resources.MergedDictionaries.Add(newTheme); 
            
        }

        private void UpdateFont(string font) {
            int index=Fonts.IndexOf(font);

            if (User != null)
            {
                User.FontID = index;
                _userService.UpdateUserFont(User.IdUser, index);
            }

            Application.Current.Resources["AppFont"] = new FontFamily(font);
        }

        private void UpdateLanguage(string language)
        {
            string tag = "";
            switch (language)
            {
            case "English":
                    tag = "en";
                    break;
            case "Srpski":
                    tag = "sr";
                    break;
            }
            LoginViewModel.SetLanguage(tag);
        
        }


        public event PropertyChangedEventHandler PropertyChanged;
        protected void OnPropertyChanged(string propertyName) 
        { 
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }
    }
}
