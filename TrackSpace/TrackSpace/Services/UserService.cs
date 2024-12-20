﻿using System;
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

        public User? GetUserByUsernameAndPassword(string username, string password)
        { 
            return _users.FirstOrDefault(u => u.Username == username && u.Password == password);
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
