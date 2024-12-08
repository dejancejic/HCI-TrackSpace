using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TrackSpace.Models;
using TrackSpace.Services.Shared;

namespace TrackSpace.Services
{
   public class OrganizerService:BaseService
    {

        private ObservableCollection<CompetitionOrganizer> _organizers;

        public OrganizerService()
        {
            _organizers = new ObservableCollection<CompetitionOrganizer>(_context.CompetitionOrganizers.ToList());

        }

        public CompetitionOrganizer? GetOrganizerById(int idUser)
        {
            return _organizers.FirstOrDefault(o => o.IdUser == idUser);
        }
    }
}
