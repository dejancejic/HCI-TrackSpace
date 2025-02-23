﻿using System;
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
    public class LocationServices : BaseService
    {
        
        private ObservableCollection<Location> _locations;

        public LocationServices() {
        
            _locations = new ObservableCollection<Location>(_context.Locations.ToList());
        }

        public ObservableCollection<Location> GetAllLocations()
        {
            return _locations;
        }

        public Location? GetLocationByPostNumber(int postNumber)
        {
            return _locations.FirstOrDefault(l=>l.PostNumber==postNumber);
        }


    }

}
