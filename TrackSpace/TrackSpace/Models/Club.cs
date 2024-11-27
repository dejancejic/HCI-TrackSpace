using System;
using System.Collections.Generic;

namespace TrackSpace.Models;

public partial class Club
{
    public int IdClub { get; set; }

    public string Name { get; set; } = null!;

    public short CompetitorNumber { get; set; }

    public string ClubCode { get; set; } = null!;

    public string? Contact { get; set; }

    public int IdUser { get; set; }

    public virtual ICollection<Competitor> Competitors { get; set; } = new List<Competitor>();

    public virtual ClubAdmin IdUserNavigation { get; set; } = null!;
}
