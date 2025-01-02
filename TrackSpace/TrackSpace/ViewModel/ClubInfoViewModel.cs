
using MaterialDesignThemes.Wpf;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Diagnostics;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
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
    public class ClubInfoViewModel : BaseViewModel, INotifyPropertyChanged
    {
        private Club _club;

        private Competitor _selectedCompetitor;

        private Competitor _addedCompetitor = new Competitor() { Name = "",Surname="" };

        private CompetitorsService _competitorsService = new CompetitorsService();


        private DateTime _dateTime = DateTime.Now.AddYears(-15);
        private DateOnly _dob = DateOnly.FromDateTime(DateTime.Now.AddYears(-15));

        private bool _isMale;

        public bool IsMale
        {

            get { return _isMale; }
            set {_isMale = value;  OnPropertyChanged(nameof(IsMale)); }
        }

        private DialogHost _dialog;

        public DialogHost DialogHost
        {
            get { return _dialog; }
            set { _dialog = value; 
            DialogHost.DialogClosed+=(a,b)=> { 
                AddedCompetitor = new Competitor() { Name = "", Surname = "" };
                AddedCompetitor.Dob = DoB;};
            }
        }


        public DateTime Date
        {
            get { return _dateTime; }
            set {
                _dateTime = value;
                DoB = DateOnly.FromDateTime(value);
            }
        }

        private string _category = "U16";

        public string Category {
            get { return _category; }
            set { _category = value; OnPropertyChanged(nameof(Category)); }
        }

        public DateOnly DoB {

            get { return _dob; }
            set { _dob = value;
                AddedCompetitor.Dob = value;
                SetCategory();
                AddedCompetitor.Dob = value;
                OnPropertyChanged(nameof(AddedCompetitor)); }
        }



        public Competitor AddedCompetitor {

            get { return _addedCompetitor; }
            set { _addedCompetitor = value; OnPropertyChanged(nameof(AddedCompetitor)); }
        }


       



        private void SetCategory()
        {
            if (DoB.Year > DateTime.Now.Year - 16)
            {
                Category = "U16";
            }
            else if (DoB.Year > DateTime.Now.Year - 18)
            {
                Category = "U18";
            }
            else if (DoB.Year > DateTime.Now.Year - 20)
            {
                Category = "U20";
            }
            else if (DoB.Year > DateTime.Now.Year - 23)
            {
                Category = "U23";
            }
            else {
                Category = "SEN";
            }


        }

        public Competitor SelectedCompetitor { get { return _selectedCompetitor; } set { _selectedCompetitor = value; OnPropertyChanged(nameof(SelectedCompetitor)); } }

        private int _rowIndex = 0;

        public int RowIndex { get { return _rowIndex; } set { _rowIndex = value; } }

        public Club Club
        {
            get { return _club; }
            set
            {
                _club = value;
                if (_club != null)
                {
                    _club.Competitors = new ClubsService().GetClubCompetitors(_club.IdClub);
                    Club.CompetitorNumber = (short)_club.Competitors.Count;
                    Club.IdUserNavigation = _clubsService.GetClubAdminById(Club.IdUser);
                }

                OnPropertyChanged(nameof(Club));
            }
        } 

        public ICommand GoBackCommand { get; set; }

        public ICommand AddCompetitorCommand { get; set; }
        public ICommand AddCompetitorConfirmCommand { get; set; }

        private ClubsService _clubsService = new ClubsService();


        public string Name { get { if (_club != null){ return _club.Name; }return ""; } }
        public ClubInfoViewModel()
        {

            GoBackCommand = new RelayCommand(GoBack, CanShowWindow);
            AddCompetitorCommand = new RelayCommand(AddCompetitor, CanShowWindow);
            AddCompetitorConfirmCommand = new RelayCommand(AddCompetitorConfirm, CanShowWindow);
        }

        public void GoBack(object obj)
        {
            PageUtils.NavigatePages(new ClubsPage());

        }

        private void AddCompetitor(object obj)
        {
            DialogHost.IsOpen = true;

        }

        private void AddCompetitorConfirm(object obj)
        {

            if (AddedCompetitor.Name!.Length == 0 || AddedCompetitor.Surname!.Length==0)
            {
                new CustomMessageBox(false, false, (string)Application.Current.Resources["error"], (string)Application.Current.Resources["errornameSurnameEmpty"]).Show();
                return;
            }


            AddedCompetitor.Dob = DoB;


            int categoryId = 1;
            if (Category.Equals("SEN"))
            {
                categoryId = 5;
            }
            else if (Category.Equals("U23"))
            {
                categoryId = 4;
            }
            else if (Category.Equals("U20"))
            {
                categoryId = 3;
            }
            else if (Category.Equals("U18"))
            {
                categoryId = 2;
            }
            else
            {
                categoryId = 1;
            }


            if (IsMale == true)
            {
                AddedCompetitor.Pol = "M";
            }
            else {
                AddedCompetitor.Pol = "F";
                categoryId += 5;
            }
            
            AddedCompetitor.IdCategory=categoryId;
            AddedCompetitor.IdClub = Club.IdClub;


           
            _competitorsService.AddCompetitor(AddedCompetitor);
            Club.Competitors.Add(AddedCompetitor);
            AddedCompetitor.IdCategoryNavigation = new CategoryService().GetCategoryById(categoryId);
           


            AddedCompetitor = new Competitor() { Name = "", Surname = "" };
            AddedCompetitor.Dob = DoB;

            CustomMessageBox cm = new CustomMessageBox(false, true, (string)Application.Current.Resources["addCompetitor"],
                (string)Application.Current.Resources["addCompetitorSuccess"]);
            cm.Show();

            Club = Club;
    
            cm.Closed+=(a,b)=>
            DialogHost.IsOpen = false;
        }


        public event PropertyChangedEventHandler? PropertyChanged;
        protected void OnPropertyChanged(string propertyName)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
         
        }
        
    }
}
