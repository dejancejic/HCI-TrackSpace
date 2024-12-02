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
    public class CompetitionsService
    {
        private readonly TrackspaceContext _context = DBConnection.GetContext();
        private ObservableCollection<Competition> _competitions;
        private LocationServices _locationService = ServicesLocator.LocationService;

        private ObservableCollection<CompetitorEntry> _entries;

        public CompetitionsService() {

         _competitions=new ObservableCollection<Competition>(_context.Competitions.ToList());
            _entries=new ObservableCollection<CompetitorEntry>(_context.CompetitorEntries.ToList());
        }


        public ObservableCollection<Competition> GetAllCompetitions()
        {


            foreach (var competition in _competitions)
            {
                var location = _locationService.GetLocationByPostNumber(competition.PostNumber);

                if (location != null)
                {
                    competition.PostNumberNavigation = location;
                }

            }
            return _competitions;
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



    }
}
