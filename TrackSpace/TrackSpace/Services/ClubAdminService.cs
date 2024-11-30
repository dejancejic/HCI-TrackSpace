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
    public class ClubAdminService
    {
        private readonly TrackspaceContext _context = DBConnection.GetContext();
        private ObservableCollection<ClubAdmin> _clubAdmins;

        public ClubAdminService() {
            _clubAdmins=new ObservableCollection<ClubAdmin>(_context.ClubAdmins.ToList());

        }

        public ClubAdmin? GetClubAdminById(int id)
        {
            return _clubAdmins.FirstOrDefault(a => a.IdUser==id);
        }

    }
}
