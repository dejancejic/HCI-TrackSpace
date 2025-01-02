using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using TrackSpace.DBUtil;
using TrackSpace.Models;
using TrackSpace.Services.Shared;

namespace TrackSpace.Services
{
    public class UserService : BaseService
    {
        private ObservableCollection<User> _users;
        private ObservableCollection<CompetitionOrganizer> _organizers;
        public UserService() 
        { 
            _users = new ObservableCollection<User>(_context.Users.ToList());
            _organizers=new ObservableCollection<CompetitionOrganizer>(_context.CompetitionOrganizers.ToList());
        }
        public User? GetUserById(int id) { 
            return _users.FirstOrDefault(u => u.IdUser == id); 
        }
        public List<User> GetAllUsers() { 
            return _users.ToList(); 
        }

        
        public bool CheckUserExists(string username)
        {
            return _users.FirstOrDefault(u => u.Username.Equals(username)) != null;
        }
    public User? GetUserByUsernameAndPassword(string username, string password)
    {

        string hashedPassword = HashPassword(password);
        return _users.FirstOrDefault(u => u.Username == username && u.Password == hashedPassword);
    }

    private string HashPassword(string password)
    {
        using (SHA256 sha256 = SHA256.Create())
        {
            byte[] bytes = sha256.ComputeHash(Encoding.UTF8.GetBytes(password));
            StringBuilder builder = new StringBuilder();
            for (int i = 0; i < bytes.Length; i++)
            {
                builder.Append(bytes[i].ToString("x2"));
            }
            return builder.ToString();
        }
    }






        public void UpdateUserTheme(int idUser, int themeId) { 
            var user = _users.FirstOrDefault(u => u.IdUser == idUser); 
            if (user != null) { user.ThemeID = themeId; _context.SaveChanges();
            }
        }
        public void UpdateUserFont(int idUser, int fontId)
        {
            var user = _users.FirstOrDefault(u => u.IdUser == idUser);
            if (user != null)
            {
                user.FontID = fontId ; _context.SaveChanges();
            }
        }
        public void UpdateUserLanguage(int idUser, int languageId)
        {
            var user = _users.FirstOrDefault(u => u.IdUser == idUser);
            if (user != null)
            {
                user.LanguageId = languageId;
                _context.SaveChanges();
            }
        }
        private User AddUser(string username,string password,string mail,string type)
        {
            User u=new User() { Username=username,Password=HashPassword(password),Email=mail,Type=type,FontID=0,LanguageId=0,ThemeID=0 };
            _context.Users.Add(u);
            _users.Add(u);
            _context.SaveChanges();
            return u;
        }
        public void AddOrganizer(string username, string password, string mail)
        {
            User u=AddUser(username,password,mail,"organizer");

            CompetitionOrganizer org=new CompetitionOrganizer() { IdUser=u.IdUser,IdUserNavigation=u};
            
            _context.CompetitionOrganizers.Add(org);
            _context.SaveChanges();

        }

        public void AddClubAdmin(string username, string password, string mail)
        {
            User u = AddUser(username, password, mail, "club_admin");
            ClubAdmin admin = new ClubAdmin() { IdUser = u.IdUser, IdUserNavigation = u };

            _context.ClubAdmins.Add(admin);
            _context.SaveChanges();
        }

        public void AddAdmin(string username, string password, string mail)
        {
            AddUser(username, password, mail, "admin");
        }



        public CompetitionOrganizer? GetCompetitionOrganizerById(int idUser)
        {
            User? user = _users.FirstOrDefault((u)=>u.IdUser==idUser);

            CompetitionOrganizer? competitionOrganizer = _organizers.FirstOrDefault((o)=>o.IdUser==idUser);
            
            if (competitionOrganizer != null) {
                competitionOrganizer.IdUserNavigation = user;
            }

            return competitionOrganizer;

        }

    }
}
