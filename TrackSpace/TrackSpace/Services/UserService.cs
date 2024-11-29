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
    public class UserService
    {
        private readonly TrackspaceContext _context;
        private ObservableCollection<User> _users;
        public UserService(TrackspaceContext context) 
        { 
            _context = context;
            _users = new ObservableCollection<User>(_context.Users.ToList());
        }
        public User? GetUserById(int id) { 
            return _users.FirstOrDefault(u => u.IdUser == id); 
        }
        public List<User> GetAllUsers() { 
            return _users.ToList(); 
        }

        public User? GetUserByUsernameAndPassword(string username, string password)
        { 
            return _users.FirstOrDefault(u => u.Username == username && u.Password == password);
        }

    }
}
