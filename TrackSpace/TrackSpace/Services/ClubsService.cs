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

namespace TrackSpace.Services
{
    public class ClubsService : BaseService
    {
       
        private ObservableCollection<Club> _clubs;
        private ObservableCollection<Competitor> _clubCompetitors;
        private CategoryService _categoryService;
        private ClubAdminService _clubAdminService;
        public ClubsService() {

            _clubs = new ObservableCollection<Club>(_context.Clubs.ToList());
            _clubCompetitors = new ObservableCollection<Competitor>(_context.Competitors.ToList());
            _categoryService = new CategoryService();
            _clubAdminService=new ClubAdminService();
        }

        public ObservableCollection<Club> GetAllClubs()
        {
            return _clubs;
        }

        public Club? GetClubById(int id)
        {
            return _clubs.FirstOrDefault(c=>c.IdClub==id);
        }

        public ObservableCollection<Competitor> GetClubCompetitors(int idClub)
        {

            var filteredCompetitors = _clubCompetitors.Where(c => c.IdClub == idClub).ToList();

            foreach (var c in filteredCompetitors)
            {
                c.IdCategoryNavigation = _categoryService.GetCategoryById(c.IdCategory);
                c.IdCategoryNavigation.Name = c.IdCategoryNavigation?.Name?.Substring(0,3);
            }

            return new ObservableCollection<Competitor>(filteredCompetitors);

        }

        public ClubAdmin? GetClubAdminById(int idUser)
        {
            return _clubAdminService.GetClubAdminById(idUser);
        }


    }
}
