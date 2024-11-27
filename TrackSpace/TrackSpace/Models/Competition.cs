﻿using System;
using System.Collections.Generic;

namespace TrackSpace.Models;

public partial class Competition
{
    public int IdCompetition { get; set; }

    public string Name { get; set; } = null!;

    public int IdUser { get; set; }

    public int PostNumber { get; set; }

    public string? Description { get; set; }

    public DateTime Start { get; set; }

    public virtual ICollection<CompetitorEntry> CompetitorEntries { get; set; } = new List<CompetitorEntry>();

    public virtual ICollection<Event> Events { get; set; } = new List<Event>();

    public virtual CompetitionOrganizer IdUserNavigation { get; set; } = null!;

    public virtual Location PostNumberNavigation { get; set; } = null!;
}