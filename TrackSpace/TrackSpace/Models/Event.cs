using System;
using System.Collections.Generic;

namespace TrackSpace.Models;

public partial class Event
{
    public int IdEvent { get; set; }

    public int IdCompetition { get; set; }

    public DateTime Start { get; set; }

    public int IdCategory { get; set; }

    public virtual ICollection<CompetitorEvent> CompetitorEvents { get; set; } = new List<CompetitorEvent>();

    public virtual Category IdCategoryNavigation { get; set; } = null!;

    public virtual Competition IdCompetitionNavigation { get; set; } = null!;

    public virtual JumpingEvent? JumpingEvent { get; set; }

    public virtual RunningEvent? RunningEvent { get; set; }

    public virtual ThrowingEvent? ThrowingEvent { get; set; }
}
