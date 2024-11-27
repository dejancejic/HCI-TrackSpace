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
}
