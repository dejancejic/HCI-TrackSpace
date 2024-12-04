using System;
using System.Collections.Generic;

namespace TrackSpace.Models;

public partial class Competitor
{
    public int IdCompetitor { get; set; }

    public string? Name { get; set; }

    public string? Surname { get; set; }

    public int IdClub { get; set; }

    public DateOnly Dob { get; set; }

    public string Pol { get; set; } = null!;

    public int IdCategory { get; set; }

    public int? IdGroup { get; set; }

    public virtual ICollection<CompetitorEvent> CompetitorEvents { get; set; } = new List<CompetitorEvent>();

    public virtual Category IdCategoryNavigation { get; set; } = null!;

    public virtual Club IdClubNavigation { get; set; } = null!;
}
