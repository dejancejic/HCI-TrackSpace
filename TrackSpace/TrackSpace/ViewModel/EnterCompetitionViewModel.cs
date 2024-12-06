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

        private ObservableCollection<EntryModel> _femaleCompetitors = null!;
        private ObservableCollection<EntryModel> _maleCompetitors = null!;


        

        public ObservableCollection<EntryModel> EntryModels
        {
            get { return _entryModels; }
            set { _entryModels=value; OnPropertyChanged(nameof(EntryModels));
            }
        }

        public ObservableCollection<EntryModel> MaleCompetitors
        {
            get { return _maleCompetitors; }
            set
            {
                _maleCompetitors = value;
                OnPropertyChanged(nameof(MaleCompetitors));
            }
        }
        public ObservableCollection<EntryModel> FemaleCompetitors
        {
            get { return _femaleCompetitors; }
            set
            {
                _femaleCompetitors = value;
                OnPropertyChanged(nameof(FemaleCompetitors));
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
                        ServicesLocator.CompetitorEventService.GetCompetitorEventByIdEventAndIdCompetitor(idEvent, entryModel.Competitor.IdCompetitor);

                    if (ce == null && entryModel.IsChecked == true)
                    {
                        ServicesLocator.CompetitorEventService.AddCompetitorEvent(idEvent, entryModel.Competitor.IdCompetitor,Competition.IdCompetition);
                    }
                    else if (ce != null && entryModel.IsChecked == false)
                    {
                        ServicesLocator.CompetitorEventService.DeleteCompetitorEvent(idEvent, entryModel.Competitor.IdCompetitor,Competition.IdCompetition);
                    }

                }


            }
            

            new CustomMessageBox(false,true,"Update Successful!","Successfully updated entries!").Show();

        }


        public Dictionary<int, ObservableCollection<EntryModel>> modelsDictionary;

        public void SetUpEntryModels()
        {
            modelsDictionary = new Dictionary<int, ObservableCollection<EntryModel>>();
            _entryModels = new ObservableCollection<EntryModel>();


            HashSet<EntryModel> setMale = new HashSet<EntryModel>();
            HashSet<EntryModel> setFemale = new HashSet<EntryModel>();

            foreach (var ev in _competition.Events)
            {
                var list = new ObservableCollection<EntryModel>();

                foreach (var comp in Competitors)
                {
                    CompetitorEvent? ce = ServicesLocator.CompetitorEventService.GetCompetitorEventByIdEventAndIdCompetitor(ev.IdEvent,comp.IdCompetitor);
                    EntryModel model;
                    if (ce != null)
                    {
                        model = new EntryModel(comp, ev.IdEvent, true);
                    }
                    else
                    {
                        model = new EntryModel(comp, ev.IdEvent, false);
                    }
                    list.Add(model);
                    
                    if (comp.Pol.Contains('M'))
                    {
                        setMale.Add(model);
                    }
                    else
                    {
                        setFemale.Add(model);
                       
                    }
                }
                modelsDictionary.Add(ev.IdEvent, list);
                MaleCompetitors =new ObservableCollection<EntryModel>(setMale.ToList());
                FemaleCompetitors = new ObservableCollection<EntryModel>(setFemale.ToList());
            }

            if(_competition.Events.Count > 0)
            {
                EntryModels = modelsDictionary[_competition.Events.ToList()[0].IdEvent];
            }


        }

        public event PropertyChangedEventHandler? PropertyChanged;
        protected void OnPropertyChanged(string propertyName)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));

        }
    }
}
