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
using TrackSpace.Services.Shared;
using TrackSpace.Utils;
using TrackSpace.ViewModel.Shared;

namespace TrackSpace.ViewModel
{
    public class OrganizerViewModel : BaseViewModel, INotifyPropertyChanged
    {

        

        private TimeSpan _timeSpan;

        public TimeSpan TimeSpan{
            get { return _timeSpan; }
            set { _timeSpan = value; OnPropertyChanged(nameof(TimeSpan)); }
    }
        private DateTime? _selectedDate;
        public DateTime? SelectedDate { get { return _selectedDate; } 
            set {
                if (_selectedDate != value) {
                    _selectedDate = value; 
                    OnPropertyChanged(nameof(SelectedDate)); 
                }
            }
        }



        public ICommand NavigateCommand { get; set; }
        public ICommand LogoutCommand { get; set; }
        


        public OrganizerViewModel() {

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

                if (tag.Equals("MyCompetitionsPage"))
                {

                    var page = new CompetitionsPage(true);

                    ViewModelLocator.MyCompetitionsPage = page;

                    PageUtils.NavigatePages(page);
                    return;
                }
                
                if (tag.Equals("CompetitionsPage"))
                {
                    var page = new CompetitionsPage();

                    PageUtils.NavigatePages(page);
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



        public event PropertyChangedEventHandler PropertyChanged;
        protected void OnPropertyChanged(string propertyName)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }
    }
}
