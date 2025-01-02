using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using TrackSpace.DBUtil;
using TrackSpace.Models;
using TrackSpace.Services.Shared;
using ZstdSharp.Unsafe;

namespace TrackSpace.Services
{
    public class CompetitionsService : BaseService
    {
     
        private ObservableCollection<Competition> _competitions;
        private LocationServices _locationService = new LocationServices();
        private UserService _userServices = new UserService();
        private EventsService _eventsService = new EventsService();
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

        public Competition AddCompetition(Competition comp)
        {
            var existingOrganizer = _context.CompetitionOrganizers.SingleOrDefault(o => o.IdUser == comp.IdUser);

            
            foreach (var entry in _context.ChangeTracker.Entries().Where(e => e.State != EntityState.Unchanged).ToList())
            {
                entry.State = EntityState.Unchanged;
            }

            _context.Competitions.Add(comp);
            _context.SaveChanges();
            _competitions.Add(comp);
            return comp;
        }


        public void DeleteCompetition(Competition comp)
        {
            var itemsToRemove = _context.CompetitorEntries.Where((ce)=>ce.IdCompetition==comp.IdCompetition).ToList();
            //deleting competitor entries:
            

            foreach(var item in itemsToRemove)
            {
                _context.CompetitorEntries.Remove(item);
                _context.SaveChanges();
            }


            //deleting competitor events:
            var itemsToRemove1 = new List<CompetitorEvent>();
            foreach(var item in itemsToRemove)
            {
                var ce = _context.CompetitorEvents.FirstOrDefault((c)=>c.IdCompetitor==item.IdCompetitor && c.IdEvent==item.IdEvent);
                if(ce!=null)
                itemsToRemove1.Add(ce);
            }
            foreach (var item in itemsToRemove1)
            {
                _context.CompetitorEvents.Remove(item);
                _context.SaveChanges();
            }


            //deleting groups
            var itemsToRemove3 = new List<Group>();

            foreach (var item in itemsToRemove)
            {
                var g = _context.Groups.FirstOrDefault((g) => g.IdEvent == item.IdEvent);
                if(g!=null)
                itemsToRemove3.Add(g);
            }
            foreach (var item in itemsToRemove3)
            {
                //removing group from competitors
                var competitorsWithGroup = _context.Competitors.Where((c) => c.IdGroup != null && c.IdGroup ==item.IdGroup).ToList();
                foreach(var competitor in competitorsWithGroup)
                {
                    _context.Competitors.Remove(competitor);
                    _context.SaveChanges();
                }
                //deleting groups
                _context.Groups.Remove(item);
                _context.SaveChanges();
            }

            //deleting events
            var events = _context.Events.Where((e)=>e.IdCompetition==comp.IdCompetition).ToList();

            foreach (var ev in events)
            {
                var running = _context.RunningEvents.FirstOrDefault((e) => e.IdEvent == ev.IdEvent);
                if (running != null)
                {
                    _context.RunningEvents.Remove(running);
                    _context.SaveChanges();
                }
                var throwing= _context.ThrowingEvents.FirstOrDefault((e)=>e.IdEvent == ev.IdEvent);
                if (throwing != null)
                {
                    _context.ThrowingEvents.Remove(throwing);
                    _context.SaveChanges();
                }
                var jumping= _context.JumpingEvents.FirstOrDefault((e)=>e.IdEvent==ev.IdEvent);
                if (jumping != null)
                {
                    _context.JumpingEvents.Remove(jumping);
                    _context.SaveChanges();
                }
                _context.Events.Remove(ev);
                _context.SaveChanges();
            }

            _context = DBConnection.GetContext();
            comp.IdUserNavigation = null;

            //deleting competition
            _context.Competitions.Remove(comp);
            _context.SaveChanges();
            _competitions.Remove(comp);
        }


    }
}
