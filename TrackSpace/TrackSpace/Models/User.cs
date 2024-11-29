using System;
using System.Collections.Generic;

namespace TrackSpace.Models;

public partial class User
{
    public int IdUser { get; set; }

    public string Username { get; set; } = null!;

    public string Password { get; set; } = null!;

    public string Email { get; set; } = null!;

    public string Type { get; set; } = null!;

    public int ThemeID { get; set; }

    public virtual ClubAdmin? ClubAdmin { get; set; }

    public virtual CompetitionOrganizer? CompetitionOrganizer { get; set; }
}
