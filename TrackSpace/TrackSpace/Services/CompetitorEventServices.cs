using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TrackSpace.Models;
using TrackSpace.Services.Shared;

namespace TrackSpace.Services
{
    public class CompetitorEventServices:BaseService
    {

        private ObservableCollection<CompetitorEvent> _competitorEvents;
        private CompetitorsService _competitorsService = ServicesLocator.CompetitorsService;
        public CompetitorEventServices() {
        _competitorEvents = new ObservableCollection<CompetitorEvent>(_context.CompetitorEvents.ToList());
        }



        public ObservableCollection<CompetitorEvent> GetCompetitorEventsByIdGroup(int idGroup,int idEvent)
        {
            foreach (var ev in _competitorEvents)
            {
                ev.IdCompetitorNavigation = _competitorsService.GetCompetitorById(ev.IdCompetitor)!;
            }
            return new ObservableCollection<CompetitorEvent>(_competitorEvents.Where(c => c.IdCompetitorNavigation.IdGroup == idGroup && c.IdEvent==idEvent).ToList());
        }

        public ObservableCollection<CompetitorEvent> GetCompetitorEventsByIdEvent(int idEvent)
        {

            return new ObservableCollection<CompetitorEvent>(_competitorEvents.Where(c=>c.IdEvent==idEvent).ToList());
        }




    }
}
