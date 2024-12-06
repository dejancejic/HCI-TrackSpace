using System;
using System.Collections.Generic;

namespace TrackSpace.Models;

public partial class CompetitorEvent
{
    public int IdCompetitor { get; set; }

    public int IdEvent { get; set; }

    public string? Result { get; set; }

    public virtual Competitor IdCompetitorNavigation { get; set; } = null!;

    public virtual Event IdEventNavigation { get; set; } = null!;

    public override bool Equals(object? obj) {
        if (obj == null || GetType() != obj.GetType())
        { return false; } 
        CompetitorEvent other = (CompetitorEvent)obj; 
        return IdCompetitor == other.IdCompetitor && IdEvent == other.IdEvent;
    }
    public override int GetHashCode() { return HashCode.Combine(IdCompetitor, IdEvent); }
}
