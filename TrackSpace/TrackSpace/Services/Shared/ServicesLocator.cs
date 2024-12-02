using System;
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
        private static CompetitionsService _competitionsService = new CompetitionsService();
        private static LocationServices _locationService = new LocationServices();
        public static UserService UserService { get { return _userService; } }
        public static ClubsService ClubsService { get { return _clubsService;} }
        public static ClubAdminService ClubAdminService { get { return _clubAdminService;} }

        public static CategoryService CategoryService { get { return _categoryService; } }

        public static CompetitionsService CompetitionsService { get { return _competitionsService; } }
        public static LocationServices LocationService { get { 
                if(_locationService!=null)
                return _locationService;
                return new LocationServices();
            } }

    }
}
