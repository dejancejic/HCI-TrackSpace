using MaterialDesignThemes.Wpf;
using Microsoft.EntityFrameworkCore.Storage.ValueConversion;
using Org.BouncyCastle.Asn1.Ocsp;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Configuration;
using System.Linq;
using System.Reflection.Metadata;
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

        private ObservableCollection<string> _types = new ObservableCollection<string>() { (string)Application.Current.Resources["runningEvents"],
            (string)Application.Current.Resources["jumpingEvents"],(string)Application.Current.Resources["throwingEvents"] };


        public ObservableCollection<string> Types { get { return _types; } set { _types = value; 
                OnPropertyChanged(nameof(Types)); } }

        private string _selectedType = (string)Application.Current.Resources["runningEvents"];

        public string SelectedType
        {
            get { return _selectedType; }
            set
            {
                _selectedType = value;

                if (_selectedType.Equals(_types[0]))
                {
                    if (stackPanels.Count > 2)
                    {
                        stackPanels[0].Visibility = Visibility.Visible;
                        stackPanels[1].Visibility = Visibility.Hidden;
                        stackPanels[2].Visibility = Visibility.Hidden;
                        scrollPanels[0].VerticalScrollBarVisibility = ScrollBarVisibility.Visible;
                        scrollPanels[1].VerticalScrollBarVisibility = ScrollBarVisibility.Hidden;
                        scrollPanels[2].VerticalScrollBarVisibility = ScrollBarVisibility.Hidden;

                        Panel.SetZIndex(scrollPanels[0], 1);
                        Panel.SetZIndex(scrollPanels[1], 0);
                        Panel.SetZIndex(scrollPanels[2], 0);
                    }
                }
                else if (_selectedType.Equals(_types[1]))
                {
                    if (stackPanels.Count > 2)
                    {
                        stackPanels[0].Visibility = Visibility.Hidden;
                        stackPanels[1].Visibility = Visibility.Visible;
                        stackPanels[2].Visibility = Visibility.Hidden;
                        scrollPanels[0].VerticalScrollBarVisibility = ScrollBarVisibility.Hidden;
                        scrollPanels[1].VerticalScrollBarVisibility = ScrollBarVisibility.Visible;
                        scrollPanels[2].VerticalScrollBarVisibility = ScrollBarVisibility.Hidden;


                        Panel.SetZIndex(scrollPanels[0], 0);
                        Panel.SetZIndex(scrollPanels[1], 1);
                        Panel.SetZIndex(scrollPanels[2], 0);
                    }
                }
                else
                {
                    if (stackPanels.Count > 2)
                    {
                        stackPanels[0].Visibility = Visibility.Hidden;
                        stackPanels[1].Visibility = Visibility.Hidden;
                        stackPanels[2].Visibility = Visibility.Visible;
                        scrollPanels[0].VerticalScrollBarVisibility = ScrollBarVisibility.Hidden;
                        scrollPanels[1].VerticalScrollBarVisibility = ScrollBarVisibility.Hidden;
                        scrollPanels[2].VerticalScrollBarVisibility = ScrollBarVisibility.Visible;


                        Panel.SetZIndex(scrollPanels[0], 0);
                        Panel.SetZIndex(scrollPanels[1], 0);
                        Panel.SetZIndex(scrollPanels[2], 1);
                    }
                }
                OnPropertyChanged(nameof(SelectedType));
            }
        }


        public string CompetitionName { get { return _competitionName; } set { _competitionName = value; OnPropertyChanged(nameof(CompetitionName)); } }
        public string Description { get { return _description; } set { _description = value; OnPropertyChanged(nameof(Description)); } }

        public AddEventsPage AddEventsPage { get; set; } = new AddEventsPage();
        public bool Loaded { get; set; } = false;


        private DateTime _selectedDate=DateTime.Now;
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
            ObservableCollection<Location> loc = new LocationServices().GetAllLocations();

            foreach (var location in loc)
            {
                Locations.Add(location.City+", "+location.PostNumber);
            }
            if(Locations.Count > 0)
            {
                SelectedLocation = Locations[0];
            }
        }

        private List<StackPanel> stackPanels = new List<StackPanel>();
        private List<ScrollViewer> scrollPanels = new List<ScrollViewer>();
        public void LoadEvents(object obj)
        { 
           
            if(obj is Grid grid)
            {
                if (Loaded == true)
                    return;


                stackPanels.Clear();
                scrollPanels.Clear();
                Loaded = true;

                EventsService service = new EventsService();
                List<RunningEvent> runningEvents= service.GetRunningEvents();
                List<JumpingEvent> jumpingEvents = service.GetJumpingEvents();
                List<ThrowingEvent> throwingEvents = service.GetThrowingEvents();

                foreach (var element in grid.Children)
                {
                    if (element is ScrollViewer viewer)
                    {
                        scrollPanels.Add(viewer);
                    }
                    if (element is ScrollViewer sw)
                    {
                        StackPanel st = sw.Content as StackPanel;


                        if (st.Name.Equals("running"))
                        {
                            stackPanels.Add(st);
                            st.Visibility = Visibility.Visible;
                            foreach (var re in runningEvents)
                            {
                                Grid grid1 = new Grid()
                                {
                                    Margin = new Thickness(0, 20, 0, 10)
                                };


                                grid1.ColumnDefinitions.Add(new ColumnDefinition() { Width = new GridLength(1, GridUnitType.Star) });
                                grid1.ColumnDefinitions.Add(new ColumnDefinition() { Width = GridLength.Auto });

                                Label label = new Label()
                                {
                                    Content = re.IdEventNavigation.Name + "  " + re.IdEventNavigation.IdCategoryNavigation.Name,
                                    HorizontalAlignment = HorizontalAlignment.Left,
                                    Margin = new Thickness(20, 0, 0, 0)
                                };

                                Button addButton = CreateAddButton(re.IdEventNavigation.Name, re.IdEventNavigation.IdCategoryNavigation.Name, re.IdEventNavigation.IdCategoryNavigation.IdCategory,
                                    "running", st, grid1);
                                addButton.HorizontalAlignment = HorizontalAlignment.Right;


                                Grid.SetColumn(label, 0);
                                Grid.SetColumn(addButton, 1);
                                grid1.Children.Add(label);
                                grid1.Children.Add(addButton);

                                st.Children.Add(grid1);
                            }
                        }

                        else if (st.Name.Equals("jumping"))
                        {
                            stackPanels.Add(st);
                            st.Visibility = Visibility.Hidden;
                            foreach (var je in jumpingEvents)
                            {
                                Grid grid1 = new Grid()
                                {
                                    Margin = new Thickness(0, 20, 0, 10)
                                };


                                grid1.ColumnDefinitions.Add(new ColumnDefinition() { Width = new GridLength(1, GridUnitType.Star) });
                                grid1.ColumnDefinitions.Add(new ColumnDefinition() { Width = GridLength.Auto });

                                Label label = new Label()
                                {
                                    Content = je.IdEventNavigation.Name + "  " + je.IdEventNavigation.IdCategoryNavigation.Name,
                                    HorizontalAlignment = HorizontalAlignment.Left,
                                    Margin = new Thickness(20, 0, 0, 0)
                                };

                                Button addButton = CreateAddButton(je.IdEventNavigation.Name, je.IdEventNavigation.IdCategoryNavigation.Name, je.IdEventNavigation.IdCategoryNavigation.IdCategory,
                                    "jumping", st, grid);
                                addButton.HorizontalAlignment = HorizontalAlignment.Right;


                                Grid.SetColumn(label, 0);
                                Grid.SetColumn(addButton, 1);
                                grid1.Children.Add(label);
                                grid1.Children.Add(addButton);

                                st.Children.Add(grid1);
                            }
                        }
                        else if (st.Name.Equals("throwing"))
                        {
                            stackPanels.Add(st);
                            st.Visibility = Visibility.Hidden;
                            foreach (var te in throwingEvents)
                            {
                                Grid grid1 = new Grid()
                                {
                                    Margin = new Thickness(0, 20, 0, 10)
                                };


                                grid1.ColumnDefinitions.Add(new ColumnDefinition() { Width = new GridLength(1, GridUnitType.Star) });
                                grid1.ColumnDefinitions.Add(new ColumnDefinition() { Width = GridLength.Auto });

                                Label label = new Label()
                                {
                                    Content = te.IdEventNavigation.Name + "  " + te.IdEventNavigation.IdCategoryNavigation.Name,
                                    HorizontalAlignment = HorizontalAlignment.Left,
                                    Margin = new Thickness(20, 0, 0, 0)
                                };

                                Button toggle = CreateAddButton(te.IdEventNavigation.Name,
                                    te.IdEventNavigation.IdCategoryNavigation.Name, te.IdEventNavigation.IdCategoryNavigation.IdCategory, "throwing", st, grid1);
                                toggle.HorizontalAlignment = HorizontalAlignment.Right;


                                Grid.SetColumn(label, 0);
                                Grid.SetColumn(toggle, 1);
                                grid1.Children.Add(label);
                                grid1.Children.Add(toggle);

                                st.Children.Add(grid1);
                            }
                        }
                        else if (st.Name.Equals("selected"))
                        {
                          
                            stackPanels.Add(st);
                            st.Visibility = Visibility.Visible;
                        }

                    }
                }
                    Panel.SetZIndex(scrollPanels[0], 1);
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


        


        public Button CreateAddButton(string name, string categoryName, int idCategory, string type, StackPanel stackPanel,Grid toRemove)
        {
            Button addButton = new Button
            {
                Content = Application.Current.Resources["add"],
                Width = 50,
                Background = (Brush)Application.Current.Resources["Primary"],
                Margin = new Thickness(10, 0, 0, 10),
                MinWidth=90
            };

            string key = name + ":" + categoryName + ":" + idCategory + ":" + type;

            addButton.Click += (sender, e) => RemoveStackPanel(stackPanel,toRemove,key);

            return addButton;
        }

        private void RemoveStackPanel(StackPanel stackPanel,Grid toRemove,string key)
        {
            stackPanel.Children.Remove(toRemove);
            stackPanels[3].Children.Add(CreateSelectedEvent(key));
            OnSelected(key);
        }

        private Grid CreateSelectedEvent(string key)
        {
            string[] split = key.Split(":");

            Grid grid1 = new Grid()
            {
                Margin = new Thickness(0, 20, 0, 10)
            };


            grid1.ColumnDefinitions.Add(new ColumnDefinition() { Width = new GridLength(1, GridUnitType.Star) });
            grid1.ColumnDefinitions.Add(new ColumnDefinition() { Width = GridLength.Auto });
            Label label = new Label()
            {
                Content = split[0] + "  " + split[1],
                HorizontalAlignment = HorizontalAlignment.Left,
                Margin = new Thickness(20, 0, 0, 0)
            };

            Button removeButton = new Button
            {
                Content = Application.Current.Resources["remove"],
                Width = 50,
                Background = (Brush)Application.Current.Resources["Primary"],
                Margin = new Thickness(10, 0, 0, 10),
                MinWidth = 90
            };

            Grid.SetColumn(label, 0);
            Grid.SetColumn(removeButton, 1);
            removeButton.HorizontalAlignment = HorizontalAlignment.Right;
            removeButton.Click += (sender, e) => RemoveEvent(grid1,key);
            grid1.Children.Add(label);
            grid1.Children.Add(removeButton);

            return grid1;
        }
        private void RemoveEvent(Grid panel, string key)
        {
            stackPanels[3].Children.Remove(panel);
            OnUnselected(key);
           

            string[] split = key.Split(":");
            string type = split[3];

            Grid grid1 = new Grid()
            {
                Margin = new Thickness(0, 20, 0, 10)
            };


            grid1.ColumnDefinitions.Add(new ColumnDefinition() { Width = new GridLength(1, GridUnitType.Star) });
            grid1.ColumnDefinitions.Add(new ColumnDefinition() { Width = GridLength.Auto });
            Label label = new Label()
            {
                Content = split[0] + "  " + split[1],
                HorizontalAlignment = HorizontalAlignment.Left,
                Margin = new Thickness(20, 0, 0, 0)
            };

            int i = 0;

            
            if (type.Equals("jumping"))
            {
                i = 1;
            }
            else if (type.Equals("throwing"))
            {
                i = 2;
            }


            Button addButton = CreateAddButton(split[0], split[1], int.Parse(split[2]),
                type, stackPanels[i], grid1);
            addButton.HorizontalAlignment = HorizontalAlignment.Right;
            Grid.SetColumn(label, 0);
            Grid.SetColumn(addButton, 1);
            grid1.Children.Add(label);
            grid1.Children.Add(addButton);

            stackPanels[i].Children.Add(grid1);

            
        }



        private void GoBack(object obj)
        {
            PageUtils.NavigatePages(ViewModelLocator.AddCompetitionPage);
        }

        private void AddEvents(object obj)
        {

            if (CompetitionName.Equals(""))
            {
                CustomMessageBox cm = new CustomMessageBox(false, false, (string)Application.Current.Resources["error"], (string)Application.Current.Resources["competitionNameEmpty"]);
                cm.Show();
            }
            else if (DateTime.Now.AddDays(int.Parse(ConfigurationManager.AppSettings[0]) + 1) >= SelectedDate)
            {
                CustomMessageBox cm = new CustomMessageBox(false, false, (string)Application.Current.Resources["error"], (string)Application.Current.Resources["cantStartEarlier"]);
                cm.Show();
            }
            else
            {
                _selectedType = "Trkačke discipline";
                _types = new ObservableCollection<string>() { (string)Application.Current.Resources["runningEvents"],
            (string)Application.Current.Resources["jumpingEvents"],(string)Application.Current.Resources["throwingEvents"] };

                
                
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
            ev = new EventsService().AddEvent(ev);

            if (type.Equals("running"))
            {
                RunningEvent re = new RunningEvent()
                {
                    IdEvent = ev.IdEvent,
                    GroupNumber = 0,
                };
                new EventsService().AddRunningEvent(re);
            }
            else if (type.Equals("jumping"))
            {
                JumpingEvent je = new JumpingEvent()
                {
                    IdEvent = ev.IdEvent
                };
                new EventsService().AddJumpingEvent(je);
            }
            else
            {
                ThrowingEvent te = new ThrowingEvent()
                {
                    IdEvent = ev.IdEvent
                };
                new EventsService().AddThrowingEvent(te);

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

                    InputMessageBox input = new InputMessageBox(name + " " + categoryName, (string)Application.Current.Resources["time"], (string)Application.Current.Resources["addTime"], true, eventStart, (o) =>
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
            if(models.Count==0)
            {

             CustomMessageBox cmb = new CustomMessageBox(false, false, (string)Application.Current.Resources["error"], (string)Application.Current.Resources["addAtLeastOneEvent"]);
                    cmb.Show();
              
                return;
            }
            CustomMessageBox cm = new CustomMessageBox(true, true, (string)Application.Current.Resources["addCompetition"], (string)Application.Current.Resources["sureToAddCompetition"], (a) =>
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


                Competition = new CompetitionsService().AddCompetition(Competition);


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
