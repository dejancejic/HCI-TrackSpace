using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TrackSpace.Models.EntryModel
{
    public class EntryModel: INotifyPropertyChanged
    {
        private Competitor _competitor;
        private int _idEvent;
        private bool _isChecked;

        public EntryModel(Competitor _competitor,int idEvent,bool isChecked)
        {
        this._competitor = _competitor;
            this._idEvent = idEvent;
            this._isChecked = isChecked;
        
        }

        public Competitor Competitor { get { return _competitor; } set { _competitor = value; } }

        public int IdEvent { get { return _idEvent;} set { _idEvent = value; } }
        public bool IsChecked { get { return _isChecked;} set { _isChecked = value; OnPropertyChanged(nameof(IsChecked)); } }



        public override bool Equals(object? obj)
        {
            if (obj == null || GetType() != obj.GetType())
            { return false; }
            EntryModel other = (EntryModel)obj;
            return Competitor.IdCompetitor == other.Competitor.IdCompetitor && IdEvent == other.IdEvent;
        }
        public override int GetHashCode() { return HashCode.Combine(Competitor.IdCompetitor, IdEvent); }




        public event PropertyChangedEventHandler? PropertyChanged;
        protected void OnPropertyChanged(string propertyName)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));

        }

    }
}
