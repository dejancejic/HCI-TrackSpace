using System;
using System.Collections.Generic;
using System.ComponentModel;

namespace TrackSpace.Models;

public partial class CompetitorEvent : INotifyPropertyChanged
{
    public int IdCompetitor { get; set; }

    public int IdEvent { get; set; }

    private string? _result;
    public string? Result { get { return _result; } set { _result = value; OnPropertyChanged(nameof(Result)); } }

    public virtual Competitor IdCompetitorNavigation { get; set; } = null!;

    public virtual Event IdEventNavigation { get; set; } = null!;

    public override bool Equals(object? obj)
    {
        if (obj == null || GetType() != obj.GetType())
        { return false; }
        CompetitorEvent other = (CompetitorEvent)obj;
        return IdCompetitor == other.IdCompetitor && IdEvent == other.IdEvent;
    }
    public override int GetHashCode() { return HashCode.Combine(IdCompetitor, IdEvent); }
    public event PropertyChangedEventHandler PropertyChanged;
    protected void OnPropertyChanged(string propertyName)
    {
        PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
    }
}