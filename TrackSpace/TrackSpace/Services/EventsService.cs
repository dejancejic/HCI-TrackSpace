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
   public class EventsService : BaseService
    {
        private ObservableCollection<Event> _events;
        private CategoryService _categoryService=ServicesLocator.CategoryService;
        private CompetitorEventServices _competitorEventService=ServicesLocator.CompetitorEventService;
        private ObservableCollection<RunningEvent> _runningEvents;
        private ObservableCollection<Group> _groups;
        public EventsService() {


            _events = new ObservableCollection<Event>(_context.Events.ToList());
            _runningEvents = new ObservableCollection<RunningEvent>(_context.RunningEvents.ToList());
            _groups=new ObservableCollection<Group>(_context.Groups.ToList());
            foreach (Event ev in _events)
            {
                foreach (RunningEvent runningEvent in _runningEvents)
                {
                    if (runningEvent.IdEvent == ev.IdEvent)
                    {
                        runningEvent.Groups = GetGroupsByIdEvent(runningEvent.IdEvent);
                        ev.RunningEvent = runningEvent;

                        break;
                    }
                }
                ev.IdCategoryNavigation = _categoryService.GetCategoryById(ev.IdCategory);
                ev.CompetitorEvents = _competitorEventService.GetCompetitorEventsByIdEvent(ev.IdEvent);
            }
        }

        public List<Group> GetGroupsByIdEvent(int idEvent)
        {
            return _groups.Where(g=>g.IdEvent==idEvent).ToList();
        }
        
        public List<Event> GetEventsByIdCompetition(int idCompetition)
        {

            return _events.Where(e=>e.IdCompetition==idCompetition).ToList();
        
        }

    }
}
