using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using System.Xml.XPath;
using TrackSpace.Command;
using TrackSpace.Forms.Pages;
using TrackSpace.Models;
using TrackSpace.Services;
using TrackSpace.Services.Shared;
using TrackSpace.ViewModel.Shared;

namespace TrackSpace.ViewModel
{
    public class ClubsViewModel : BaseViewModel, INotifyPropertyChanged
    {
        private string _autoSuggestBox1Text;

     

        private ObservableCollection<KeyValuePair<string, string>> _autoSuggestBox1Suggestions;
        public ObservableCollection<Club> Clubs { get; set; }

        public ICommand ShowClubCommand;
        public ICommand NameCommand;
        public string AutoSuggestBox1Text { get
            { return _autoSuggestBox1Text; }
            set { _autoSuggestBox1Text = value;
                OnPropertyChanged(nameof(AutoSuggestBox1Text)); UpdateSuggestions(value);
            } }

        public ObservableCollection<KeyValuePair<string, string>> AutoSuggestBox1Suggestions
        {
            get { return _autoSuggestBox1Suggestions;
            }
            set { _autoSuggestBox1Suggestions = value;
                OnPropertyChanged(nameof(AutoSuggestBox1Suggestions));
            }
        }

        private ClubsService _clubsService = ServicesLocator.ClubsService;
        public ClubsViewModel() {

            Clubs = _clubsService.GetAllClubs();

            ShowClubCommand = new RelayCommand(ShowClub, CanShowWindow);
            NameCommand = new RelayCommand(ShowClubByName, CanShowWindow);
            AutoSuggestBox1Suggestions = new ObservableCollection<KeyValuePair<string, string>>();
        }

        private void UpdateSuggestions(string query) {
            if (string.IsNullOrEmpty(query)) {
                AutoSuggestBox1Suggestions.Clear();
                return; }
            var suggestions =
                Clubs.Where(c => c.ClubCode.ToLower().Contains(query.ToLower()) || c.Name.ToLower().Contains(query.ToLower())).
                Select(c => new KeyValuePair<string, string>(c.ClubCode, c.Name)).ToList();

            AutoSuggestBox1Suggestions = new ObservableCollection<KeyValuePair<string, string>>(suggestions);
        }
        public void ShowClubByName(object obj)
        {
            if (obj is string)
            {
                string? clubName=obj as string;
                if (clubName != null)
                {
                    Club? club = FindClubByName(clubName);

                    ViewModelLocator.ObserverMainPage.basePage.MainContent = new ClubInfoPage(club!);
                }
            }
        }

        private Club? FindClubByName(string clubName)
        {
            return Clubs.FirstOrDefault(c => c.Name.Equals(clubName));
        }
        private void ShowClub(object obj)
        {

            
                if (obj is KeyValuePair<string, string> selectedClub)
                {
                   string clubName=selectedClub.Value;

                Club? club = FindClubByName(clubName);

                ViewModelLocator.ObserverMainPage.basePage.MainContent=new ClubInfoPage(club!);
                
            }
         }

        

        public event PropertyChangedEventHandler PropertyChanged;
        protected void OnPropertyChanged(string propertyName) { 
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName)); 
        }
    }
}
