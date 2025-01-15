using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Net.WebSockets;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
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
            _userService = new UserService();
            _clubAdmins=new ObservableCollection<ClubAdmin>(_context.ClubAdmins.ToList());

        }

        public List<ClubAdmin> GetAdminsWithoutClubId()
        {
            List<ClubAdmin> admins = new List<ClubAdmin>();
            List<int> ids = new List<int>();

            foreach (var el in _context.Clubs)
            {
                ids.Add(el.IdUser);
            }

            UserService us = new UserService();
            foreach (var el in _clubAdmins)
            {
                if (!ids.Contains(el.IdUser))
                {
                    el.IdUserNavigation = us.GetUserById(el.IdUser)!;
                    admins.Add(el);
                }
            }
            return admins;
        }

        public ClubAdmin? GetClubAdminById(int id)
        {
            _context = DBConnection.GetContext();
            ClubAdmin? clubAdmin = _context.ClubAdmins.FirstOrDefault(a => a.IdUser == id);
            if(clubAdmin! != null) {

                clubAdmin!.IdUserNavigation = _userService.GetUserById(id)!;
            }
            return clubAdmin;
        }

    }
}
