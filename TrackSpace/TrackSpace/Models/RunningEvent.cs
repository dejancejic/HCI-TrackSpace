using System;
using System.Collections.Generic;

namespace TrackSpace.Models;

public partial class RunningEvent
{
    public int IdEvent { get; set; }

    public int GroupNumber { get; set; }

    public virtual ICollection<Group> Groups { get; set; } = new List<Group>();

    public virtual Event IdEventNavigation { get; set; } = null!;
}
