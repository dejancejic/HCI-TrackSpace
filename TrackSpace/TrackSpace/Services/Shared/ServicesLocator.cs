﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TrackSpace.Services.Shared
{
    public class ServicesLocator
    {

        private static UserService _userService=new UserService();
        private static ClubsService _clubsService=new ClubsService();
        private static ClubAdminService _clubAdminService=new ClubAdminService();
        private static CategoryService _categoryService=new CategoryService();


        public static UserService UserService { get { return _userService; } }
        public static ClubsService ClubsService { get { return _clubsService;} }
        public static ClubAdminService ClubAdminService { get { return _clubAdminService;} }

        public static CategoryService CategoryService { get { return _categoryService; } }  


    }
}
