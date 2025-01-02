using Microsoft.EntityFrameworkCore;
using Org.BouncyCastle.Asn1.Mozilla;
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
    public class CompetitorsService:BaseService
    {


        private ObservableCollection<Competitor> _competitors;
        private CategoryService _categoryService=new CategoryService();
        private ClubsService _clubsService=new ClubsService();
        public CompetitorsService() { 
        
            _competitors=new ObservableCollection<Competitor>(_context.Competitors.ToList());
            
        }

        public Competitor? GetCompetitorById(int id)
        {
            _context = DBConnection.GetContext();
            Competitor? comp=_context.Competitors.FirstOrDefault(c=>c.IdCompetitor==id);
            return AssignCategoryAndClub(comp);
        }

        public void AddCompetitor(Competitor competitor)
        {
            _context.Competitors.Add(competitor);

            _context.SaveChanges();
            _competitors.Add(competitor);

        
        }
        private Competitor? AssignCategoryAndClub(Competitor? comp)
        {
            if (comp != null)
            {
                comp.IdCategoryNavigation = _categoryService.GetCategoryById(comp.IdCategory);
                comp.IdClubNavigation = _clubsService.GetClubById(comp.IdClub);
            }
            return comp;
        }
        public ObservableCollection<Competitor?> GetCompetitorsByIdGroup(int idGroup)
        {
            var filteredCompetitors = _competitors.Where(c => c.IdGroup == idGroup).ToList();

            foreach (var comp in filteredCompetitors)
            {
                if (comp != null)
                {
                    comp.IdCategoryNavigation = _categoryService.GetCategoryById(comp.IdCategory);
                    comp.IdClubNavigation = _clubsService.GetClubById(comp.IdClub);
                }
            }
            return new ObservableCollection<Competitor?>(filteredCompetitors);
        }

        private void GroupUtil(int idCompetitor,int? idGroup)
        {
            _context = DBConnection.GetContext();

            var item = _context.Competitors.FirstOrDefault((u) => u.IdCompetitor == idCompetitor);



            item!.IdGroup = idGroup;
            _context.SaveChanges();

            item = _competitors.FirstOrDefault((u) => u.IdCompetitor == idCompetitor);
            item!.IdGroup = idGroup;
        }

        public void AddCompetitorToGroup(int idCompetitor,int idGroup)
        {
            GroupUtil(idCompetitor,idGroup);
        }

        public void RemoveCompetitorFromGroup(int idCompetitor)
        {
            GroupUtil(idCompetitor, null);
        }


    }
}
