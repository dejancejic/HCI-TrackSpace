using System;
using System.Collections.Generic;

namespace TrackSpace.Models;

public partial class Group
{
    public int IdGroup { get; set; }

    public int Number { get; set; }

    public int IdEvent { get; set; }

    public virtual RunningEvent IdEventNavigation { get; set; } = null!;

    public virtual ICollection<Competitor> Competitors{ get; set; }
}
