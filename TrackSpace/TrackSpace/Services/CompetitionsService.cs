using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TrackSpace.DBUtil;
using TrackSpace.Models;
using TrackSpace.Services.Shared;

namespace TrackSpace.Services
{
    public class CompetitionsService : BaseService
    {
     
        private ObservableCollection<Competition> _competitions;
        private LocationServices _locationService = ServicesLocator.LocationService;
        private UserService _userServices = ServicesLocator.UserService;
        private EventsService _eventsService = ServicesLocator.EventsService;
        private ObservableCollection<CompetitorEntry> _entries;

        public CompetitionsService() {

         _competitions=new ObservableCollection<Competition>(_context.Competitions.ToList());
            _entries = new ObservableCollection<CompetitorEntry>(_context.CompetitorEntries.ToList());
        }


        public ObservableCollection<Competition> GetAllCompetitions(ObservableCollection<Competition>? comps =null)
        {
            if (comps == null)
            {
                comps = _competitions;
            }

            foreach (var competition in comps)
            {
                var location = _locationService.GetLocationByPostNumber(competition.PostNumber);
                var user = _userServices.GetUserById(competition.IdUser);
                competition.Events = _eventsService.GetEventsByIdCompetition(competition.IdCompetition);
                if (location != null)
                {
                    competition.PostNumberNavigation = location;
                }
                if (user != null)
                {
                    competition.IdUserNavigation = new CompetitionOrganizer() { IdUserNavigation = user };
                }
                }

            
            return comps;
        }

        public ObservableCollection<Competition> GetPastCompetitions()
        {
            var pastCompetitions = GetAllCompetitions().Where(c => c.Start <= DateTime.Today).ToList();

            
            return new ObservableCollection<Competition>(pastCompetitions);
        }

        public ObservableCollection<Competition> GetOngoingCompetitions()
        {
            var ongoingCompetitions = GetAllCompetitions().Where(c => c.Start > DateTime.Today).ToList();

            return new ObservableCollection<Competition>(ongoingCompetitions);
        }

        private ObservableCollection<Competition> GetCompetitionsByIdOrganizer(int idOrganizer)
        {
            return new ObservableCollection<Competition>(_competitions.Where(c => c.IdUser == idOrganizer).ToList());
        }

        public ObservableCollection<Competition> GetAllCompetitionsByIdOrganizer(int idOrganizer)
        {
            var comps = GetCompetitionsByIdOrganizer(idOrganizer);
            return GetAllCompetitions(comps);
        }

        public ObservableCollection<Competition> GetOngoingCompetitions(int idOrganizer)
        {
            var ongoingCompetitions = GetAllCompetitions(GetCompetitionsByIdOrganizer(idOrganizer)).Where(c => c.Start > DateTime.Today).ToList();

            return new ObservableCollection<Competition>(ongoingCompetitions);
        }

        public ObservableCollection<Competition> GetPastCompetitions(int idOrganizer)
        {
            var pastCompetitions = GetAllCompetitions(GetCompetitionsByIdOrganizer(idOrganizer)).Where(c => c.Start <= DateTime.Today).ToList();


            return new ObservableCollection<Competition>(pastCompetitions);
        }


    }
}
