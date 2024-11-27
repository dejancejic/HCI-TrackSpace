using System;
using System.Collections.Generic;

namespace TrackSpace.Models;

public partial class CompetitionOrganizer
{
    public int IdUser { get; set; }

    public virtual ICollection<Competition> Competitions { get; set; } = new List<Competition>();

    public virtual User IdUserNavigation { get; set; } = null!;
}
