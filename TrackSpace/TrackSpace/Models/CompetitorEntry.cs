using System;
using System.Collections.Generic;

namespace TrackSpace.Models;

public partial class CompetitorEntry
{
    public int EntryNumber { get; set; }

    public int IdUser { get; set; }

    public int IdCompetition { get; set; }

    public int? IdCompetitor { get; set; }

    public DateTime Date { get; set; }
    
    public int? IdEvent { get; set; }

    public virtual Competition IdCompetitionNavigation { get; set; } = null!;

    public virtual ClubAdmin IdUserNavigation { get; set; } = null!;
}
