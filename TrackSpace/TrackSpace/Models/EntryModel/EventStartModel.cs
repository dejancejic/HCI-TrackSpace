using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TrackSpace.Models.EntryModel
{
    public class EventStartModel
    {

        private string name;
        private int idCategory;
        private DateTime eventStart;
        private string type;


        public string Name { get { return name;  } }
        public int IdCategory { get { return idCategory; } } 
        public DateTime EventStart { get { return eventStart; } }   
        
        public string Type { get { return type; } }

        public EventStartModel(string name, int idCategory, DateTime eventStart, string type)
        {
            this.name = name;
            this.idCategory = idCategory;
            this.eventStart = eventStart;
            this.type = type;
        }


    }
}
