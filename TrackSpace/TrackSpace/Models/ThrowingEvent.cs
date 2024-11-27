using System;
using System.Collections.Generic;

namespace TrackSpace.Models;

public partial class ThrowingEvent
{
    public int IdEvent { get; set; }

    public string? Weight { get; set; }

    public virtual Event IdEventNavigation { get; set; } = null!;
}
