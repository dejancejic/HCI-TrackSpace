using System;
using System.Collections.Generic;

namespace TrackSpace.Models;

public partial class ClubAdmin
{
    public int IdUser { get; set; }

    public virtual ICollection<Club> Clubs { get; set; } = new List<Club>();

    public virtual ICollection<CompetitorEntry> CompetitorEntries { get; set; } = new List<CompetitorEntry>();

    public virtual User IdUserNavigation { get; set; } = null!;
}
