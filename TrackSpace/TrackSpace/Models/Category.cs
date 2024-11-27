using System;
using System.Collections.Generic;

namespace TrackSpace.Models;

public partial class Category
{
    public int IdCategory { get; set; }

    public string? Name { get; set; }

    public virtual ICollection<Competitor> Competitors { get; set; } = new List<Competitor>();

    public virtual ICollection<Event> Events { get; set; } = new List<Event>();
}
