using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Controls;
using TrackSpace.DBUtil;
using TrackSpace.Models;
using TrackSpace.Services.Shared;
using TrackSpace.ViewModel;

namespace TrackSpace.Services
{
   public class EventsService : BaseService
    {
        private ObservableCollection<Event> _events;
        private CategoryService _categoryService=new CategoryService();
        private CompetitorEventServices _competitorEventService=new CompetitorEventServices();
        private ObservableCollection<RunningEvent> _runningEvents;
        private ObservableCollection<JumpingEvent> _jumpingEvents;
        private ObservableCollection<ThrowingEvent> _throwingEvents;
        private ObservableCollection<Group> _groups;
        public EventsService() {


            _events = new ObservableCollection<Event>(_context.Events.ToList());
            _runningEvents = new ObservableCollection<RunningEvent>(_context.RunningEvents.ToList());
            _jumpingEvents = new ObservableCollection<JumpingEvent>(_context.JumpingEvents.ToList());
            _throwingEvents = new ObservableCollection<ThrowingEvent>(_context.ThrowingEvents.ToList());
            _groups =new ObservableCollection<Group>(_context.Groups.ToList());
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

       

        public List<RunningEvent> GetRunningEvents()
        {
            var eventList = new List<string>() { 
            "100m","200m","400m","800m","1500m"
            };

            List<RunningEvent> list = new List<RunningEvent>();

            foreach (var str in eventList)
            {
                for (int i = 1; i <= 10; i++)
                {
                    Event ev = new Event()
                    {
                        Name = str,
                        IdCategory = i
                    };
                    ev.IdCategoryNavigation = new CategoryService().GetCategoryById(i);
                    RunningEvent r = new RunningEvent()
                    {
                        IdEventNavigation = ev
                    };
                    list.Add(r);
                }
            }


            return list;
        }
        public List<JumpingEvent> GetJumpingEvents()
        {
            var eventList = new List<string>() {
            "long jump","high jump","triple jump","pole vault"
            };

            List<JumpingEvent> list = new List<JumpingEvent>();

            foreach (var str in eventList)
            {
                for (int i = 1; i <= 10; i++)
                {
                    Event ev = new Event()
                    {
                        Name = str,
                        IdCategory = i
                    };
                    ev.IdCategoryNavigation = new CategoryService().GetCategoryById(i);
                    JumpingEvent r = new JumpingEvent()
                    {
                        IdEventNavigation = ev
                    };
                    list.Add(r);
                }
            }


            return list;
        }
        public List<ThrowingEvent> GetThrowingEvents()
        {
            var eventList = new List<string>() {
            "shot put","javelin","discus","hammer"
            };

            List<ThrowingEvent> list = new List<ThrowingEvent>();

            foreach (var str in eventList)
            {
                for (int i = 1; i <= 10; i++)
                {
                    Event ev = new Event()
                    {
                        Name = str,
                        IdCategory = i
                    };
                    ev.IdCategoryNavigation = new CategoryService().GetCategoryById(i);
                    ThrowingEvent r = new ThrowingEvent()
                    {
                        IdEventNavigation = ev
                    };
                    list.Add(r);
                }
            }


            return list;
        }


        public List<Group> GetGroupsByIdEvent(int idEvent)
        {
            return _groups.Where(g=>g.IdEvent==idEvent).ToList();
        }
        
        public List<Event> GetEventsByIdCompetition(int idCompetition)
        {

            return _events.Where(e=>e.IdCompetition==idCompetition).ToList();
        
        }


        public Event AddEvent(Event ev)
        {
            _context=DBConnection.GetContext();
            _context.Events.Add(ev);
            _context.SaveChanges();
            _events.Add(ev);
            return ev;
        }

        public void AddRunningEvent(RunningEvent ev)
        {
            _context = DBConnection.GetContext();
            _context.RunningEvents.Add(ev);
            _context.SaveChanges();
            _runningEvents.Add(ev);
        }

        public void AddJumpingEvent(JumpingEvent ev)
        {
            _context = DBConnection.GetContext();
            _context.JumpingEvents.Add(ev);
            _context.SaveChanges();
            _jumpingEvents.Add(ev);
        }

        public void AddThrowingEvent(ThrowingEvent ev)
        {
            _context = DBConnection.GetContext();
            _context.ThrowingEvents.Add(ev);
            _context.SaveChanges();
            _throwingEvents.Add(ev);
        }

        public Group AddGroup(Group group)
        {
            _context = DBConnection.GetContext();
            _context.Groups.Add(group);
            _context.SaveChanges();
            _groups.Add(group);

            return group;

        }

        public ObservableCollection<CompetitorEvent> GetCompetitorEventsWithoutGroupByIdEvent(int idEvent)
        {
            ObservableCollection<CompetitorEvent> ce = new ObservableCollection<CompetitorEvent>();
            _context = DBConnection.GetContext();
            var elements = _context.CompetitorEvents.Where((ev)=>ev.IdEvent==idEvent).ToList();

            foreach (var elem in elements) {

                var competitor = _context.Competitors.FirstOrDefault((c) => c.IdCompetitor==elem.IdCompetitor);
                if(competitor!=null && competitor.IdGroup==null)
                {
                    competitor.IdCategoryNavigation=new CategoryService().GetCategoryById(competitor.IdCategory);
                    competitor.IdClubNavigation = new ClubsService().GetClubById(competitor.IdClub);
                    elem.IdCompetitorNavigation = competitor;
                    ce.Add(elem);
                }

            }

            return ce;
        }

    }
}
