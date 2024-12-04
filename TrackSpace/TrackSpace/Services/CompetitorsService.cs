using Org.BouncyCastle.Asn1.Mozilla;
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
    public class CompetitorsService:BaseService
    {


        private ObservableCollection<Competitor> _competitors;
        private CategoryService _categoryService=ServicesLocator.CategoryService;
        private ClubsService _clubsService=ServicesLocator.ClubsService;
        public CompetitorsService() { 
        
            _competitors=new ObservableCollection<Competitor>(_context.Competitors.ToList());
            
        }

        public Competitor? GetCompetitorById(int id)
        {
            Competitor? comp=_competitors.FirstOrDefault(c=>c.IdCompetitor==id);
            return AssignCategoryAndClub(comp);
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


    }
}
