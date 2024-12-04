using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Input;
using TrackSpace.Command;
using TrackSpace.Forms.Pages;
using TrackSpace.Models;
using TrackSpace.Services;
using TrackSpace.Services.Shared;
using TrackSpace.Utils;
using TrackSpace.ViewModel.Shared;
using static System.Reflection.Metadata.BlobBuilder;

namespace TrackSpace.ViewModel
{
   public class CompetitionsViewModel : BaseViewModel, INotifyPropertyChanged
    {

        private string _autoSuggestBox1Text;
        public ObservableCollection<Competition> AllCompetitions { get; set; }
        public ObservableCollection<Competition> PastCompetitions { get; set; }
        public ObservableCollection<Competition> OngoingCompetitions { get; set; }

        private CompetitionsService _competitionsService=ServicesLocator.CompetitionsService;

        private ObservableCollection<KeyValuePair<string, string>> _autoSuggestBox1Suggestions;
        public string AutoSuggestBox1Text
        {
            get
            { return _autoSuggestBox1Text; }
            set
            {
                _autoSuggestBox1Text = value;
                OnPropertyChanged(nameof(AutoSuggestBox1Text)); UpdateSuggestions(value);
            }
        }

        public ObservableCollection<KeyValuePair<string, string>> AutoSuggestBox1Suggestions
        {
            get
            {
                return _autoSuggestBox1Suggestions;
            }
            set
            {
                _autoSuggestBox1Suggestions = value;
                OnPropertyChanged(nameof(AutoSuggestBox1Suggestions));
            }
        }

        public ICommand ShowCompetitionCommand { get; set; }
        

        public CompetitionsViewModel()
        {
            AllCompetitions=_competitionsService.GetAllCompetitions();
            PastCompetitions=_competitionsService.GetPastCompetitions();
            OngoingCompetitions = _competitionsService.GetOngoingCompetitions();

            ShowCompetitionCommand = new RelayCommand(ShowCompetition,CanShowWindow);

            AutoSuggestBox1Suggestions = new ObservableCollection<KeyValuePair<string, string>>();
        }

        private void UpdateSuggestions(string query)
        {
            if (string.IsNullOrEmpty(query))
            {
                AutoSuggestBox1Suggestions.Clear();
                return;
            }
            var suggestions =
                AllCompetitions.Where(c => c.Name.ToLower().Contains(query.ToLower()) || c.PostNumberNavigation.City.ToLower().Contains(query.ToLower())).
                Select(c => new KeyValuePair<string, string>(c.Name, c.PostNumberNavigation.City)).ToList();

            AutoSuggestBox1Suggestions = new ObservableCollection<KeyValuePair<string, string>>(suggestions);
        }


        private Competition? FindCompetitionByName(string name)
        {

            return AllCompetitions.FirstOrDefault(c => c.Name.Equals(name));
        }

        public void ShowCompetition(object obj)
        {

            if (obj is string)
            {
                string? competitionName = obj as string;
                if (competitionName != null)
                {
                    Competition? comp = FindCompetitionByName(competitionName);
                    var page = new CompetitionInfoPage(comp!);
                    PageUtils.NavigatePages(page);
                }
            }

        }



        public event PropertyChangedEventHandler? PropertyChanged;
        protected void OnPropertyChanged(string propertyName)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));

        }


    }
}
