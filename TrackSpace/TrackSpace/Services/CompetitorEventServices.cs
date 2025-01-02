using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TrackSpace.DBUtil;
using TrackSpace.Models;
using TrackSpace.Services.Shared;
using TrackSpace.ViewModel.Shared;

namespace TrackSpace.Services
{
    public class CompetitorEventServices:BaseService
    {

        private ObservableCollection<CompetitorEvent> _competitorEvents;
        private ObservableCollection<CompetitorEntry> _competitorEntries;
        private CompetitorsService _competitorsService = new CompetitorsService();
        public CompetitorEventServices() {
        _competitorEvents = new ObservableCollection<CompetitorEvent>(_context.CompetitorEvents.ToList());
        _competitorEntries=new ObservableCollection<CompetitorEntry>(_context.CompetitorEntries.ToList());
        }



        public ObservableCollection<CompetitorEvent> GetCompetitorEventsByIdGroup(int idGroup,int idEvent)
        {
            _context = DBConnection.GetContext();
            foreach (var ev in _context.CompetitorEvents)
            {
                ev.IdCompetitorNavigation = _competitorsService.GetCompetitorById(ev.IdCompetitor)!;
            }
            return new ObservableCollection<CompetitorEvent>(_context.CompetitorEvents.Where(c => c.IdCompetitorNavigation.IdGroup == idGroup && c.IdEvent==idEvent).ToList());
        }

        public ObservableCollection<CompetitorEvent> GetCompetitorEventsByIdEvent(int idEvent)
        {

            return new ObservableCollection<CompetitorEvent>(_competitorEvents.Where(c=>c.IdEvent==idEvent).ToList());
        }

        public CompetitorEvent? GetCompetitorEventsByIdEventAndIdCompetitor(int idEvent,int idCompetitor)
        {
            return _competitorEvents.FirstOrDefault(c => c.IdEvent == idEvent && c.IdCompetitor==idCompetitor);
        }

        public void UpdateResult(CompetitorEvent competitorEvent)
        {
            _context = DBConnection.GetContext();
            _context.Entry(competitorEvent).State = Microsoft.EntityFrameworkCore.EntityState.Modified;
            _context.SaveChanges();

        }
        public CompetitorEvent? GetCompetitorEventByIdEventAndIdCompetitor(int idEvent, int idCompetitor)
        {
            return _competitorEvents.FirstOrDefault(ce => ce.IdEvent == idEvent && ce.IdCompetitor == idCompetitor);
        }

        public void AddCompetitorEvent(int idEvent, int idCompetitor,int idCompetition)
        {
            var newCompetitorEvent = new CompetitorEvent() { IdEvent = idEvent, IdCompetitor = idCompetitor, Result = null};
            _context.CompetitorEvents.Add(newCompetitorEvent);
            _context.SaveChanges();
            _competitorEvents.Add(newCompetitorEvent);



            var newCompetitorEntry = new CompetitorEntry() { Date=DateTime.Now,
                IdCompetition=idCompetition, IdCompetitor=idCompetitor, IdUser=ViewModelLocator.IdAdmin, IdEvent=idEvent};

            _context.CompetitorEntries.Add(newCompetitorEntry);
            _context.SaveChanges();
            _competitorEntries.Add(newCompetitorEntry);

        }

        public void DeleteCompetitorEvent(int idEvent, int idCompetitor,int idCompetition)
        {
            var competitorEntry = _context.CompetitorEntries.FirstOrDefault(ce => ce.IdEvent == idEvent && ce.IdCompetition == idCompetition && ce.IdCompetitor == idCompetitor);

            if (competitorEntry != null)
            {
                _context.CompetitorEntries.Remove(competitorEntry);
                _context.SaveChanges();
                _competitorEntries.Remove(competitorEntry);
            }

            var competitorEvent = _context.CompetitorEvents.FirstOrDefault(ce => ce.IdEvent == idEvent && ce.IdCompetitor == idCompetitor);
            if (competitorEvent != null) {
                _context.CompetitorEvents.Remove(competitorEvent); 
                _context.SaveChanges();
                _competitorEvents.Remove(competitorEvent);
            }
        }

    }
}
