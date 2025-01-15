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
    public class CompetitorsService : BaseService
    {



        private CategoryService _categoryService = new CategoryService();
        private ClubsService _clubsService = new ClubsService();
        public CompetitorsService() { 
            
        }

        public Competitor? GetCompetitorById(int id)
        {
            _context = DBConnection.GetContext();
            Competitor? comp=_context.Competitors.FirstOrDefault(c=>c.IdCompetitor==id);
            return AssignCategoryAndClub(comp);
        }

        public ObservableCollection<Competitor> GetCompetitorsByIdClub(int idClub)
        {
            _context = DBConnection.GetContext();
            var list= _context.Competitors.Where(c => c.IdClub == idClub).ToList();
            var helperList= new List<Competitor>();
            foreach(var el in list)
            { 
                helperList.Add(AssignCategoryAndClub(el)!);
            }
            list = helperList;
            return new ObservableCollection<Competitor>(list);
        }

        public void AddCompetitor(Competitor competitor)
        {
            _context.Competitors.Add(competitor);

            _context.SaveChanges();
     

        
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
            var filteredCompetitors = _context.Competitors.Where(c => c.IdGroup == idGroup).ToList();

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

            item = _context.Competitors.FirstOrDefault((u) => u.IdCompetitor == idCompetitor);
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
