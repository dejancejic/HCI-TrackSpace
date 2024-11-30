using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TrackSpace.DBUtil;
using TrackSpace.Models;

namespace TrackSpace.Services
{
    public class ClubsService
    {
        private readonly TrackspaceContext _context = DBConnection.GetContext();
        private ObservableCollection<Club> _clubs;
        public ClubsService() {

            _clubs = new ObservableCollection<Club>(_context.Clubs.ToList());
        }

        public ObservableCollection<Club> GetAllClubs()
        {
            return _clubs;
        }

    }
}
