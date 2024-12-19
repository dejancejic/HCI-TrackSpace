using MaterialDesignThemes.Wpf;
using Microsoft.EntityFrameworkCore.Storage.ValueConversion;
using Org.BouncyCastle.Asn1.Ocsp;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Configuration;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Data;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Navigation;
using System.Xml.Linq;
using TrackSpace.Command;
using TrackSpace.Forms.CustomMessageBox;
using TrackSpace.Forms.Pages;
using TrackSpace.Models;
using TrackSpace.Models.EntryModel;
using TrackSpace.Services;
using TrackSpace.Services.Shared;
using TrackSpace.Utils;
using TrackSpace.ViewModel.Shared;

namespace TrackSpace.ViewModel
{
   public class AddCompetitionViewModel:BaseViewModel,INotifyPropertyChanged
    {
        private Competition _competition;
        private string _competitionName="";
        private string _description;

        public string CompetitionName { get { return _competitionName; } set { _competitionName = value; OnPropertyChanged(nameof(CompetitionName)); } }
        public string Description { get { return _description; } set { _description = value; OnPropertyChanged(nameof(Description)); } }

        public AddEventsPage AddEventsPage { get; set; } = new AddEventsPage();
        public bool Loaded { get; set; } = false;


        private DateTime _selectedDate;
        public DateTime SelectedDate {
            get { return _selectedDate; } 
            set { if (_selectedDate != value) { _selectedDate = value; OnPropertyChanged(nameof(SelectedDate)); } } }

        public DateTime EventStart
        {
            get;
            set;
        }

        public Competition Competition
        {
            get { return _competition; }
                set{ _competition = value; }
        }
        private ObservableCollection<string> _locations = new ObservableCollection<string>();
        public ObservableCollection<string> Locations { get { return _locations; } set { _locations = value; OnPropertyChanged(nameof(Locations)); } }
        public ICommand AddEventsCommand { get; set; }

        public ICommand AddCompetitionCommand { get; set; }
        public ICommand LoadEventsCommand { get; set; }
        public ICommand GoBackCommand { get; set; }

        private string _selectedLocation;
        public string SelectedLocation { get { return _selectedLocation; } set { _selectedLocation = value; OnPropertyChanged(nameof(SelectedLocation)); } }

        public AddCompetitionViewModel()
        {
            AddCompetitionCommand = new RelayCommand(AddCompetition, CanShowWindow);
            GoBackCommand = new RelayCommand(GoBack,CanShowWindow);
            AddEventsCommand = new RelayCommand(AddEvents, CanShowWindow);
            LoadEventsCommand = new RelayCommand(LoadEvents, CanShowWindow);
            ObservableCollection<Location> loc = ServicesLocator.LocationService.GetAllLocations();

            foreach (var location in loc)
            {
                Locations.Add(location.City+", "+location.PostNumber);
            }
            if(Locations.Count > 0)
            {
                SelectedLocation = Locations[0];
            }
        }

        public void LoadEvents(object obj)
        { 
            if(obj is Grid grid)
            {
                if (Loaded == true)
                    return;

                Loaded = true;

                EventsService service = ServicesLocator.EventsService;
                List<RunningEvent> runningEvents= service.GetRunningEvents();
                List<JumpingEvent> jumpingEvents = service.GetJumpingEvents();
                List<ThrowingEvent> throwingEvents = service.GetThrowingEvents();

                foreach (var element in grid.Children)
                {
                    if(element is ScrollViewer sw)
                    {
                        StackPanel st = sw.Content as StackPanel;

                        if(st.Name.Equals("running"))
                        {
                            foreach(var re in runningEvents)
                            {
                                StackPanel panel = new StackPanel()
                                {
                                    Orientation = Orientation.Horizontal,
                                    Margin = new Thickness(0, 10, 0, 0)
                                };
                                Label label = new Label()
                                {
                                    Content = re.IdEventNavigation.Name + "  " + re.IdEventNavigation.IdCategoryNavigation.Name,
                                    HorizontalAlignment=HorizontalAlignment.Left,
                                    Margin = new Thickness(20, 0, 0, 0)
                                };

                                ToggleButton toggle = CreateToggleButton(re.IdEventNavigation.Name,
                                    re.IdEventNavigation.IdCategoryNavigation.Name,re.IdEventNavigation.IdCategoryNavigation.IdCategory,"running");
                                toggle.HorizontalAlignment = HorizontalAlignment.Right;
                                panel.Children.Add(label);
                                panel.Children.Add(toggle);


                                st.Children.Add(panel);
                            }
                        }
                        else if(st.Name.Equals("jumping"))
                        {

                            foreach (var je in jumpingEvents)
                            {
                                StackPanel panel = new StackPanel()
                                {
                                    Orientation = Orientation.Horizontal,
                                    Margin = new Thickness(0, 10, 0, 0)
                                };
                                Label label = new Label()
                                {
                                    Content = je.IdEventNavigation.Name + "  " + je.IdEventNavigation.IdCategoryNavigation.Name,
                                    HorizontalAlignment = HorizontalAlignment.Left,
                                    Margin = new Thickness(20, 0, 0, 0)
                                };
                                    
                                ToggleButton toggle = CreateToggleButton(je.IdEventNavigation.Name,
                                    je.IdEventNavigation.IdCategoryNavigation.Name,je.IdEventNavigation.IdCategoryNavigation.IdCategory,"jumping");
                                toggle.HorizontalAlignment = HorizontalAlignment.Right;
                                panel.Children.Add(label);
                                panel.Children.Add(toggle);


                                st.Children.Add(panel);

                            }
                        }
                        else
                        {
                            foreach (var te in throwingEvents)
                            {
                                StackPanel panel = new StackPanel()
                                {
                                    Orientation = Orientation.Horizontal,
                                    Margin = new Thickness(0,10,0,0),
                                    
                                };
                                Label label = new Label()
                                {
                                    Content = te.IdEventNavigation.Name + "  " + te.IdEventNavigation.IdCategoryNavigation.Name,
                                    HorizontalAlignment = HorizontalAlignment.Left,
                                    Margin = new Thickness(20, 0, 0, 0)
                                };

                                ToggleButton toggle = CreateToggleButton(te.IdEventNavigation.Name,
                                    te.IdEventNavigation.IdCategoryNavigation.Name,te.IdEventNavigation.IdCategoryNavigation.IdCategory,"throwing");
                                toggle.HorizontalAlignment = HorizontalAlignment.Right;
                                panel.Children.Add(label);
                                panel.Children.Add(toggle);


                                st.Children.Add(panel);
                            }
                        }
                    }
                }
            }

        }

        private Dictionary<string, bool> selectedEvents = new Dictionary<string, bool>();
       
        private void OnSelected(string key)
        {
         
            if (selectedEvents.ContainsKey(key))
            {
                selectedEvents[key] = true;
            }
            else
            {
                selectedEvents.Add(key, true);
            }
        }

        private void OnUnselected(string key)
        {
            if (selectedEvents.ContainsKey(key))
            {
                selectedEvents[key] = false;
            }
            else
            {
                selectedEvents.Add(key, false);
            }
            
        }


        public ToggleButton CreateToggleButton(string name,string categoryName,int idCategory,string type)
            {
      
                Style customToggleButtonStyle = new Style(typeof(ToggleButton))
                {
                    BasedOn = (Style)Application.Current.Resources["MaterialDesignSwitchToggleButton"]
                };

                Trigger isEnabledTrigger = new Trigger
                {
                    Property = ToggleButton.IsEnabledProperty,
                    Value = false
                };
                isEnabledTrigger.Setters.Add(new Setter
                {
                    Property = ToggleButton.BackgroundProperty,
                    Value = new DynamicResourceExtension("Primary")
                });

                customToggleButtonStyle.Triggers.Add(isEnabledTrigger);

                ToggleButton toggle = new ToggleButton
                {
                    Width = 50,
                    Style = customToggleButtonStyle,
                    Background=(Brush)Application.Current.Resources["Primary"]
                };

      
                string key = name + ":" + categoryName+":" + idCategory + ":" + type;
       toggle.Checked += (sender, e) => OnSelected(key);
            toggle.Unchecked += (sender, e) => OnUnselected(key);


            MaterialDesignThemes.Wpf.ToggleButtonAssist.SetSwitchTrackOnBackground(toggle, new SolidColorBrush(Colors.Green));
                MaterialDesignThemes.Wpf.ToggleButtonAssist.SetSwitchTrackOffBackground(toggle, new SolidColorBrush(Colors.Red));

               

            return toggle;
    }


        private void GoBack(object obj)
        {
            PageUtils.NavigatePages(ViewModelLocator.AddCompetitionPage);
        }

        private void AddEvents(object obj)
        {

            if (CompetitionName.Equals(""))
            {
                CustomMessageBox cm = new CustomMessageBox(false, false, (string)Application.Current.Resources["error"], "Competition name mustn't be empty!");
                cm.Show();
            }
            else if (DateTime.Now.AddDays(int.Parse(ConfigurationManager.AppSettings[0])+1) >=SelectedDate)
            {
                CustomMessageBox cm = new CustomMessageBox(false, false, (string)Application.Current.Resources["error"], "Competition can't start earlier than 3 days from today!");
                cm.Show();
            }
            else
            {
                PageUtils.NavigatePages(AddEventsPage);
            }

        }

        private void AddEvent(string name,int idCategory,DateTime eventStart,string type)
        {
            Event ev = new Event()
            {
                Name = name,
                IdCategory = idCategory,
                IdCompetition =(int) Competition.IdCompetition,
                Start = eventStart
            };
            ev = ServicesLocator.EventsService.AddEvent(ev);

            if (type.Equals("running"))
            {
                RunningEvent re = new RunningEvent()
                {
                    IdEvent = ev.IdEvent,
                    GroupNumber = 0,
                };
                ServicesLocator.EventsService.AddRunningEvent(re);
            }
            else if (type.Equals("jumping"))
            {
                JumpingEvent je = new JumpingEvent()
                {
                    IdEvent = ev.IdEvent
                };
                ServicesLocator.EventsService.AddJumpingEvent(je);
            }
            else
            {
                ThrowingEvent te = new ThrowingEvent()
                {
                    IdEvent = ev.IdEvent
                };
                ServicesLocator.EventsService.AddThrowingEvent(te);

            }

        }

        private List<EventStartModel> models = new List<EventStartModel>();

        private void AddCompetition(object obj)
        {
            ShowCustomMessageBox();
           

        }

        private async Task ShowInputMessageBoxesAsync()
        {
            var tasks = new List<Task>();

            foreach (var kv in selectedEvents)
            {
                if (kv.Value == true)
                {
                    string[] split = kv.Key.Split(":");
                    string name = split[0];
                    string categoryName = split[1];
                    int idCategory = int.Parse(split[2]);
                    string type = split[3];

                    DateTime eventStart = new DateTime(
                        SelectedDate.Year,
                        SelectedDate.Month, SelectedDate.Day, SelectedDate.Hour, SelectedDate.Minute, SelectedDate.Second);

                    EventStart = eventStart;

                    var tcs = new TaskCompletionSource<bool>();

                    InputMessageBox input = new InputMessageBox(name + " " + categoryName, "Time", "Enter time for event", true, eventStart, (o) =>
                    {
                        models.Add(new EventStartModel(name, idCategory, EventStart, type));
                        tcs.SetResult(true);
                    },
                    (o) =>
                    {
                        models.Add(new EventStartModel(name, idCategory, EventStart, type));
                        tcs.SetResult(true);
                    });

                   
                    input.Show();

                    tasks.Add(tcs.Task);
                }
            }

            await Task.WhenAll(tasks);
        }


        private async void ShowCustomMessageBox()
        {
            await ShowInputMessageBoxesAsync();

            CustomMessageBox cm = new CustomMessageBox(true, true, "Add competition", "Are you sure you want to add competition?", (a) =>
            {
                string[] split = SelectedLocation.Split(", ");

                Competition = new Competition()
                {
                    Name = CompetitionName,
                    Description = Description,
                    Start = SelectedDate,
                    PostNumber = int.Parse(split[1]),
                    IdUser = ViewModelLocator.IdOrganizer
                    
                };


                Competition = ServicesLocator.CompetitionsService.AddCompetition(Competition);


                foreach (var element in models)
                {
                    AddEvent(element.Name, element.IdCategory, element.EventStart, element.Type);
                }
                SelectedDate = DateTime.Now;
                CompetitionName = "";
                Description = "";
                PageUtils.NavigatePages(new AddCompetitionPage());
            }, (a) =>
            {
                models.Clear();
            });

            cm.Show();
        }




        public event PropertyChangedEventHandler PropertyChanged;
        protected void OnPropertyChanged(string propertyName)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }

    }
}
