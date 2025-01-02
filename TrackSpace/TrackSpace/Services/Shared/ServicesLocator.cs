//using System;
//using System.Collections.Generic;
//using System.Linq;
//using System.Text;
//using System.Threading.Tasks;

//namespace TrackSpace.Services.Shared
//{
//    public class ServicesLocator
//    {

//        private static UserService _userService=new UserService();
//        private static ClubsService _clubsService=new ClubsService();
//        private static ClubAdminService _clubAdminService=new ClubAdminService();
//        private static CategoryService _categoryService=new CategoryService();
//        private static CompetitionsService _competitionsService = new CompetitionsService();
//        private static LocationServices _locationService = new LocationServices();
//        private static EventsService _eventService = new EventsService();
//        private static CompetitorEventServices _competitorEventService = new CompetitorEventServices();
//        private static CompetitorsService _competitorsService=new CompetitorsService();
//        private static OrganizerService _organizerService = new OrganizerService();
//        public static UserService UserService { get { return _userService; } }
//        public static ClubsService ClubsService { get { return _clubsService;} set { _clubsService = value; } }
//        public static ClubAdminService ClubAdminService { get { return _clubAdminService;} }

//        public static CategoryService CategoryService {
//            get
//            {
//                if (_categoryService != null)
//                    return _categoryService;
//                return new CategoryService();
//            }
//        }

//        public static CompetitionsService CompetitionsService { get { return _competitionsService; } }
//        public static LocationServices LocationService { get { 
//                if(_locationService!=null)
//                return _locationService;
//                return new LocationServices();
//            } }
//        public static EventsService EventsService
//        {
//            get
//            {
//                if (_eventService != null)
//                    return _eventService;
//                return new EventsService();
//            }
//        }

//        public static CompetitorEventServices CompetitorEventService
//        {
//            get
//            {
//                if (_competitorEventService != null)
//                    return _competitorEventService;
//                return new CompetitorEventServices();
//            }
//        }

//        public static CompetitorsService CompetitorsService
//        {
//            get
//            {
//                if (_competitorsService!= null)
//                    return _competitorsService;
//                return new CompetitorsService();
//            }

//        }

//        public static OrganizerService OrganizerService
//        {
//            get
//            {
//                if (_organizerService != null)
//                    return _organizerService;
//                return new OrganizerService();
//            }
//        }

//    }
//}
