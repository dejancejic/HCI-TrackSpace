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
        private ObservableCollection<Competition> _ongoing;
        private ObservableCollection<Competition> _past;
        public ObservableCollection<Competition> AllCompetitions { get; set; }
        public ObservableCollection<Competition> OngoingCompetitionsCopy { get; set; }
        public ObservableCollection<Competition> PastCompetitionsCopy { get; set; }
        public ObservableCollection<Competition> PastCompetitions { get { return _past; } set { _past = value; OnPropertyChanged(nameof(PastCompetitions)); } }
        public ObservableCollection<Competition> OngoingCompetitions { get { return _ongoing; } set { _ongoing = value; OnPropertyChanged(nameof(OngoingCompetitions)); } }

        private static int currentYear = DateTime.Now.Year;
        private ObservableCollection<int> _years= new ObservableCollection<int> { currentYear-5, currentYear - 4, currentYear - 3, currentYear - 2, currentYear - 1, currentYear, currentYear +1 };

        private int _selectedYear;
       

        public ObservableCollection<int> Years { get => _years; set { _years = value; OnPropertyChanged(nameof(Years)); } }
        public int SelectedYear { get => _selectedYear; set { _selectedYear = value;
                Filter();
                OnPropertyChanged(nameof(SelectedYear)); } }


        private CompetitionsService _competitionsService=new CompetitionsService();

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

        private bool _isComboBoxVisible;
        private bool _isYearSelected;

        public ICommand ToggleComboBoxCommand { get; }

        private void ToggleComboBox(object obj) {
            IsComboBoxVisible = !IsComboBoxVisible;
            Filter();
        }
        public bool IsComboBoxVisible { get => _isComboBoxVisible; set { _isComboBoxVisible = value; OnPropertyChanged(nameof(IsComboBoxVisible)); } }
        public bool IsYearSelected
        {
            get => _isYearSelected; set { _isYearSelected = value; OnPropertyChanged(nameof(IsYearSelected)); }
        }
        private void Filter()
        {
            if (IsComboBoxVisible == true )
            {
                ObservableCollection<Competition> ongoing = new ObservableCollection<Competition>();
                foreach (var el in OngoingCompetitionsCopy)
                {
                    if (el.Start.Year == SelectedYear)
                    {
                        ongoing.Add(el);
                    }
                }
                OngoingCompetitions = ongoing;
                ObservableCollection<Competition> past = new ObservableCollection<Competition>();

                foreach (var el in PastCompetitionsCopy)
                {
                    if (el.Start.Year == SelectedYear)
                    {
                        past.Add(el);
                    }
                }
                PastCompetitions = past;



            }
            else
            {
                if (myCompetitions == true)
                {
                    AllCompetitions = _competitionsService.GetAllCompetitionsByIdOrganizer(ViewModelLocator.IdOrganizer);
                    OngoingCompetitionsCopy= _competitionsService.GetOngoingCompetitions(ViewModelLocator.IdOrganizer);
                    PastCompetitionsCopy = _competitionsService.GetPastCompetitions(ViewModelLocator.IdOrganizer);
                    PastCompetitions = _competitionsService.GetPastCompetitions(ViewModelLocator.IdOrganizer);
                    OngoingCompetitions = _competitionsService.GetOngoingCompetitions(ViewModelLocator.IdOrganizer);
                }
                else
                {

                    AllCompetitions = _competitionsService.GetAllCompetitions();
                    OngoingCompetitionsCopy = _competitionsService.GetOngoingCompetitions();
                    PastCompetitionsCopy = _competitionsService.GetPastCompetitions();
                    PastCompetitions = _competitionsService.GetPastCompetitions();
                    OngoingCompetitions = _competitionsService.GetOngoingCompetitions();

                }
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

        private bool myCompetitions = false;

        public CompetitionsViewModel(bool myCompetitions=false)
        {
            this.myCompetitions = myCompetitions;
            if (myCompetitions == true)
            {
                AllCompetitions = _competitionsService.GetAllCompetitionsByIdOrganizer(ViewModelLocator.IdOrganizer);
                PastCompetitions = _competitionsService.GetPastCompetitions(ViewModelLocator.IdOrganizer);
                OngoingCompetitions = _competitionsService.GetOngoingCompetitions(ViewModelLocator.IdOrganizer);
                OngoingCompetitionsCopy = _competitionsService.GetOngoingCompetitions(ViewModelLocator.IdOrganizer);
                PastCompetitionsCopy = _competitionsService.GetPastCompetitions(ViewModelLocator.IdOrganizer);
            }
            else
            {

                AllCompetitions = _competitionsService.GetAllCompetitions();
                PastCompetitions = _competitionsService.GetPastCompetitions();
                OngoingCompetitions = _competitionsService.GetOngoingCompetitions();
                OngoingCompetitionsCopy = _competitionsService.GetOngoingCompetitions();
                PastCompetitionsCopy = _competitionsService.GetPastCompetitions();

            }

            ShowCompetitionCommand = new RelayCommand(ShowCompetition,CanShowWindow);
            ToggleComboBoxCommand = new RelayCommand(ToggleComboBox,CanShowWindow);

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
