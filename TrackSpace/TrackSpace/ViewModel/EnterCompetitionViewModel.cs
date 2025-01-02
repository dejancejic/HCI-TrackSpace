using Microsoft.Extensions.Logging;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Documents;
using System.Windows.Input;
using TrackSpace.Command;
using TrackSpace.Forms.CustomMessageBox;
using TrackSpace.Models;
using TrackSpace.Models.EntryModel;
using TrackSpace.Services;
using TrackSpace.Services.Shared;
using TrackSpace.Utils;
using TrackSpace.ViewModel.Shared;

namespace TrackSpace.ViewModel
{
    public class EnterCompetitionViewModel:BaseViewModel,INotifyPropertyChanged
    {

        private Competition _competition=null!;
        private ObservableCollection<Competitor> _competitors = null!;

        private ObservableCollection<EntryModel> _entryModels = null!;

        private Dictionary<int, ObservableCollection<EntryModel>> modelsDictionary;
        private Dictionary<int, int> numberOfEntries=new Dictionary<int, int>();



        public ObservableCollection<EntryModel> EntryModels
        {
            get { return _entryModels; }
            set { _entryModels=value; OnPropertyChanged(nameof(EntryModels));
            }
        }


        public void SetMaleFemaleCompetitors(int idEvent)
        {
            ObservableCollection<EntryModel> entryModels = modelsDictionary[idEvent];
            Event? ev = _competition.Events.FirstOrDefault(e => e.IdEvent == idEvent);

            ObservableCollection<EntryModel> emMale = new ObservableCollection<EntryModel>();
            ObservableCollection<EntryModel> emFemale = new ObservableCollection<EntryModel>();

            foreach (var entry in entryModels)
            {
                if (entry.Competitor.Pol.Equals("M"))
                {
                    emMale.Add(entry);
                }
                else
                {
                    emFemale.Add(entry);

                }
            }

            if (ev!.IdCategoryNavigation.Name![ev.IdCategoryNavigation.Name.Length - 1]=='M')
            {
                EntryModels = emMale;
            }
            else
            {
                EntryModels = emFemale;

            }


        }
        

       

        public ObservableCollection<Competitor> Competitors { get { return _competitors; } set { _competitors = value; 
                OnPropertyChanged(nameof(Competitors)); } }
        public Competition Competition { get { return _competition; } set { _competition = value; OnPropertyChanged(nameof(Competition)); } }

        public ICommand GoBackCommand { get; set; }
        public ICommand ConfirmEntriesCommand { get; set; }

        public EnterCompetitionViewModel()
        {
            GoBackCommand = new RelayCommand(GoBack, CanShowWindow);
            ConfirmEntriesCommand = new RelayCommand(ConfirmEntries, CanShowWindow);
        }

        public void GoBack(object obj)
        {
            PageUtils.NavigatePages(ViewModelLocator.CompetitionInfoPage);
        }

        public void ConfirmEntries(object obj)
        {
            foreach (var keyValuePair in modelsDictionary)
            {

                int idEvent = keyValuePair.Key;
                var list = keyValuePair.Value;

                foreach (var entryModel in list)
                {

                    CompetitorEvent? ce =
                        new CompetitorEventServices().GetCompetitorEventByIdEventAndIdCompetitor(idEvent, entryModel.Competitor.IdCompetitor);

                    if (ce == null && entryModel.IsChecked == true)
                    {
                        new CompetitorEventServices().AddCompetitorEvent(idEvent, entryModel.Competitor.IdCompetitor,Competition.IdCompetition);
                    }
                    else if (ce != null && entryModel.IsChecked == false)
                    {
                        new CompetitorEventServices().DeleteCompetitorEvent(idEvent, entryModel.Competitor.IdCompetitor,Competition.IdCompetition);
                    }

                }


            }
            

            new CustomMessageBox(false, true, (string)Application.Current.Resources["updatedEntries"],(string)Application.Current.Resources["updateEntriesSuccessful"]).Show();

        }

        public bool CheckIfHas2Entries(int idCompetitor)
        {
            if (numberOfEntries[idCompetitor] == 2)
                return true;

            return false;
        }

        

        public void SetUpEntryModels()
        {
            modelsDictionary = new Dictionary<int, ObservableCollection<EntryModel>>();
            _entryModels = new ObservableCollection<EntryModel>();
            numberOfEntries = new Dictionary<int, int>();



            foreach (var comp in Competitors)
            {
                numberOfEntries.Add(comp.IdCompetitor, 0);
            }


            foreach (var ev in _competition.Events)
            {
                var list = new ObservableCollection<EntryModel>();

                foreach (var comp in Competitors)
                {
                    CompetitorEvent? ce = new CompetitorEventServices().GetCompetitorEventByIdEventAndIdCompetitor(ev.IdEvent,comp.IdCompetitor);
                    EntryModel model;
                    if (ce != null)
                    {
                        model = new EntryModel(comp, ev.IdEvent, true);
                        numberOfEntries[comp.IdCompetitor] = numberOfEntries[comp.IdCompetitor] + 1;
                    }
                    else
                    {
                        model = new EntryModel(comp, ev.IdEvent, false);
                    }
                    list.Add(model);
                    
                }
                modelsDictionary.Add(ev.IdEvent, list);
              
            }

            if(_competition.Events.Count > 0)
            {
                SetMaleFemaleCompetitors(_competition.Events.ToList()[0].IdEvent);
            }


        }

        public event PropertyChangedEventHandler? PropertyChanged;
        protected void OnPropertyChanged(string propertyName)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));

        }
    }
}
