using System;
using System.Collections.Generic;

namespace TrackSpace.Models;

public partial class Location
{
    public int PostNumber { get; set; }

    public string City { get; set; } = null!;

    public string Address { get; set; } = null!;

    public virtual ICollection<Competition> Competitions { get; set; } = new List<Competition>();
}
