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
    public class ClubAdminService : BaseService
    {
        
        private ObservableCollection<ClubAdmin> _clubAdmins;
        private UserService _userService;

        public ClubAdminService() {
            _userService = ServicesLocator.UserService;
            _clubAdmins=new ObservableCollection<ClubAdmin>(_context.ClubAdmins.ToList());

        }

        public ClubAdmin? GetClubAdminById(int id)
        {
            ClubAdmin? clubAdmin = _clubAdmins.FirstOrDefault(a => a.IdUser == id);
            if(clubAdmin! != null) {

                clubAdmin!.IdUserNavigation = _userService.GetUserById(id)!;
            }
            return clubAdmin;
        }

    }
}
