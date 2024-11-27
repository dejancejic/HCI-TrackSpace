using System;
using System.Collections.Generic;

namespace TrackSpace.Models;

public partial class JumpingEvent
{
    public int IdEvent { get; set; }

    public string? StartHeight { get; set; }

    public virtual Event IdEventNavigation { get; set; } = null!;
}
