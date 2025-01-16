using System;
using System.Collections.Generic;
using System.Configuration;
using Microsoft.EntityFrameworkCore;
using Pomelo.EntityFrameworkCore.MySql.Scaffolding.Internal;
using TrackSpace.Models;

namespace TrackSpace.DBUtil;

public partial class TrackspaceContext : DbContext
{
    private static string connectionString = ConfigurationManager.ConnectionStrings["TrackSpaceDB"].ConnectionString;

    public static string ConnectionString { get { return connectionString; } }

    public TrackspaceContext()
    {
    }

    public TrackspaceContext(DbContextOptions<TrackspaceContext> options)
        : base(options)
    {
    }
    public static TrackspaceContext InitializeDBConnection()
    {
        var optionsBuilder = new DbContextOptionsBuilder<TrackspaceContext>();
        optionsBuilder.UseMySql(ConnectionString, new MySqlServerVersion(new Version(8, 0, 36)));
        return new TrackspaceContext(optionsBuilder.Options);
    }

    public virtual DbSet<Category> Categories { get; set; }

    public virtual DbSet<Club> Clubs { get; set; }

    public virtual DbSet<ClubAdmin> ClubAdmins { get; set; }

    public virtual DbSet<Competition> Competitions { get; set; }

    public virtual DbSet<CompetitionOrganizer> CompetitionOrganizers { get; set; }

    public virtual DbSet<Competitor> Competitors { get; set; }

    public virtual DbSet<CompetitorEntry> CompetitorEntries { get; set; }

    public virtual DbSet<CompetitorEvent> CompetitorEvents { get; set; }

    public virtual DbSet<Event> Events { get; set; }

    public virtual DbSet<Group> Groups { get; set; }

    public virtual DbSet<JumpingEvent> JumpingEvents { get; set; }

    public virtual DbSet<Location> Locations { get; set; }

    public virtual DbSet<RunningEvent> RunningEvents { get; set; }

    public virtual DbSet<ThrowingEvent> ThrowingEvents { get; set; }

    public virtual DbSet<User> Users { get; set; }

    protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)

        => optionsBuilder.UseMySql(connectionString, ServerVersion.Parse("8.0.36-mysql"));

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        modelBuilder
            .UseCollation("utf8mb3_general_ci")
            .HasCharSet("utf8mb3");

        modelBuilder.Entity<Category>(entity =>
        {
            entity.HasKey(e => e.IdCategory).HasName("PRIMARY");

            entity.ToTable("category");

            entity.Property(e => e.IdCategory).HasColumnName("idCategory");
            entity.Property(e => e.Name)
                .HasMaxLength(10)
                .HasColumnName("name");
        });

        modelBuilder.Entity<Club>(entity =>
        {
            entity.HasKey(e => e.IdClub).HasName("PRIMARY");

            entity.ToTable("club");

            entity.HasIndex(e => e.ClubCode, "KodKluba_UNIQUE").IsUnique();

            entity.HasIndex(e => e.IdUser, "fk_KLUB_ADMINISTRATOR_KLUBA1_idx");

            entity.Property(e => e.IdClub).HasColumnName("idClub");
            entity.Property(e => e.ClubCode)
                .HasMaxLength(3)
                .IsFixedLength()
                .HasColumnName("clubCode");
            entity.Property(e => e.CompetitorNumber).HasColumnName("competitorNumber");
            entity.Property(e => e.Contact)
                .HasMaxLength(30)
                .HasColumnName("contact");
            entity.Property(e => e.IdUser).HasColumnName("idUser");
            entity.Property(e => e.Name)
                .HasMaxLength(45)
                .HasColumnName("name");

            entity.HasOne(d => d.IdUserNavigation).WithMany(p => p.Clubs)
                .HasForeignKey(d => d.IdUser)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("fk_KLUB_ADMINISTRATOR_KLUBA1");
        });

        modelBuilder.Entity<ClubAdmin>(entity =>
        {
            entity.HasKey(e => e.IdUser).HasName("PRIMARY");

            entity.ToTable("club_admin");

            entity.Property(e => e.IdUser)
                .ValueGeneratedNever()
                .HasColumnName("idUser");

            entity.HasOne(d => d.IdUserNavigation).WithOne(p => p.ClubAdmin)
                .HasForeignKey<ClubAdmin>(d => d.IdUser)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("fk_ADMINISTRATOR_KLUBA_KORISNIK");
        });

        modelBuilder.Entity<Competition>(entity =>
        {
            entity.HasKey(e => e.IdCompetition).HasName("PRIMARY");

            entity.ToTable("competition");

            entity.HasIndex(e => e.PostNumber, "fk_TAKMICENJE_LOKACIJA1_idx");

            entity.HasIndex(e => e.IdUser, "fk_TAKMICENJE_ODGANIZATOR_TAKMICENJA1_idx");

            entity.Property(e => e.IdCompetition).HasColumnName("idCompetition");
            entity.Property(e => e.Description)
                .HasMaxLength(400)
                .HasColumnName("description");
            entity.Property(e => e.IdUser).HasColumnName("idUser");
            entity.Property(e => e.Name)
                .HasMaxLength(100)
                .HasColumnName("name");
            entity.Property(e => e.PostNumber).HasColumnName("postNumber");
            entity.Property(e => e.Start)
                .HasColumnType("datetime")
                .HasColumnName("start");

            entity.HasOne(d => d.IdUserNavigation).WithMany(p => p.Competitions)
                .HasForeignKey(d => d.IdUser)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("fk_TAKMICENJE_ODGANIZATOR_TAKMICENJA1");

            entity.HasOne(d => d.PostNumberNavigation).WithMany(p => p.Competitions)
                .HasForeignKey(d => d.PostNumber)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("fk_TAKMICENJE_LOKACIJA1");
        });

        modelBuilder.Entity<CompetitionOrganizer>(entity =>
        {
            entity.HasKey(e => e.IdUser).HasName("PRIMARY");

            entity.ToTable("competition_organizer");

            entity.Property(e => e.IdUser)
                .ValueGeneratedNever()
                .HasColumnName("idUser");

            entity.HasOne(d => d.IdUserNavigation).WithOne(p => p.CompetitionOrganizer)
                .HasForeignKey<CompetitionOrganizer>(d => d.IdUser)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("fk_ODGANIZATOR_TAKMICENJA_KORISNIK1");
        });

        modelBuilder.Entity<Competitor>(entity =>
        {
            entity.HasKey(e => e.IdCompetitor).HasName("PRIMARY");

            entity.ToTable("competitor");

            entity.HasIndex(e => e.IdClub, "fk_TAKMICAR_KLUB1_idx");

            entity.HasIndex(e => e.IdCategory, "fk_competitor_category1_idx");

            entity.Property(e => e.IdCompetitor).HasColumnName("idCompetitor");
            entity.Property(e => e.Dob).HasColumnName("dob");
            entity.Property(e => e.IdCategory).HasColumnName("idCategory");
            entity.Property(e => e.IdClub).HasColumnName("idClub");
            entity.Property(e => e.Name)
                .HasMaxLength(45)
                .HasColumnName("name");
            entity.Property(e => e.Pol)
                .HasMaxLength(1)
                .IsFixedLength();
            entity.Property(e => e.Surname)
                .HasMaxLength(45)
                .HasColumnName("surname");

            entity.HasOne(d => d.IdCategoryNavigation).WithMany(p => p.Competitors)
                .HasForeignKey(d => d.IdCategory)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("fk_competitor_category1");

            entity.HasOne(d => d.IdClubNavigation).WithMany(p => p.Competitors)
                .HasForeignKey(d => d.IdClub)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("fk_TAKMICAR_KLUB1");

            entity.HasOne(d => d.IdGroupNavigation).WithMany(p => p.Competitors)
                .HasForeignKey(d => d.IdGroup)
                .OnDelete(DeleteBehavior.SetNull)
                .HasConstraintName("fk_competitor_group1");
        });

        modelBuilder.Entity<CompetitorEntry>(entity =>
        {
            entity.HasKey(e => e.EntryNumber).HasName("PRIMARY");

            entity.ToTable("competitor_entry");

            entity.HasIndex(e => e.EntryNumber, "BrojPrijave_UNIQUE").IsUnique();

            entity.HasIndex(e => e.IdCompetitor, "fk_PRIJAVA_NA_TAKMICENJE_TAKMICAR_DISCIPLINA1_idx");

            entity.HasIndex(e => e.IdUser, "fk_PRIJAVA_TAKMICARA_ADMINISTRATOR_KLUBA1_idx");

            entity.HasIndex(e => e.IdCompetition, "fk_PRIJAVA_TAKMICARA_TAKMICENJE1_idx");

            entity.Property(e => e.EntryNumber).HasColumnName("entryNumber");
            entity.Property(e => e.Date)
                .HasColumnType("datetime")
                .HasColumnName("date");
            entity.Property(e => e.IdCompetition).HasColumnName("idCompetition");
            entity.Property(e => e.IdCompetitor).HasColumnName("idCompetitor");
            entity.Property(e => e.IdUser).HasColumnName("idUser");

            entity.HasOne(d => d.IdCompetitionNavigation).WithMany(p => p.CompetitorEntries)
                .HasForeignKey(d => d.IdCompetition)
                .OnDelete(DeleteBehavior.Cascade)
                .HasConstraintName("fk_PRIJAVA_TAKMICARA_TAKMICENJE1");

            entity.HasOne(d => d.IdUserNavigation).WithMany(p => p.CompetitorEntries)
                .HasForeignKey(d => d.IdUser)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("fk_PRIJAVA_TAKMICARA_ADMINISTRATOR_KLUBA1");
        });

        modelBuilder.Entity<CompetitorEvent>(entity =>
        {
            entity.HasKey(e => new { e.IdCompetitor, e.IdEvent })
                .HasName("PRIMARY")
                .HasAnnotation("MySql:IndexPrefixLength", new[] { 0, 0 });

            entity.ToTable("competitor_event");

            entity.HasIndex(e => e.IdEvent, "fk_TAKMICAR_DISCIPLINA_DISCIPLINA1_idx");

            entity.Property(e => e.IdCompetitor).HasColumnName("idCompetitor");
            entity.Property(e => e.IdEvent).HasColumnName("idEvent");
            entity.Property(e => e.Result)
                .HasMaxLength(20)
                .HasColumnName("result");

            entity.HasOne(d => d.IdCompetitorNavigation).WithMany(p => p.CompetitorEvents)
                .HasForeignKey(d => d.IdCompetitor)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("fk_TAKMICAR_DISCIPLINA_TAKMICAR1");

            entity.HasOne(d => d.IdEventNavigation).WithMany(p => p.CompetitorEvents)
                .HasForeignKey(d => d.IdEvent)
                .OnDelete(DeleteBehavior.Cascade)
                .HasConstraintName("fk_TAKMICAR_DISCIPLINA_DISCIPLINA1");
        });

        modelBuilder.Entity<Event>(entity =>
        {
            entity.HasKey(e => e.IdEvent).HasName("PRIMARY");

            entity.ToTable("event");

            entity.HasIndex(e => e.IdCompetition, "fk_DISCIPLINA_TAKMICENJE1_idx");

            entity.HasIndex(e => e.IdCategory, "fk_event_category1_idx");

            entity.HasIndex(e => e.IdEvent, "idDiscipline_UNIQUE").IsUnique();

            entity.Property(e => e.IdEvent).HasColumnName("idEvent");
            entity.Property(e => e.IdCategory).HasColumnName("idCategory");
            entity.Property(e => e.IdCompetition).HasColumnName("idCompetition");
            entity.Property(e => e.Start)
                .HasColumnType("datetime")
                .HasColumnName("start");

            entity.HasOne(d => d.IdCategoryNavigation).WithMany(p => p.Events)
                .HasForeignKey(d => d.IdCategory)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("fk_event_category1");

            entity.HasOne(d => d.IdCompetitionNavigation).WithMany(p => p.Events)
                .HasForeignKey(d => d.IdCompetition)
                .OnDelete(DeleteBehavior.Cascade)
                .HasConstraintName("fk_DISCIPLINA_TAKMICENJE1");
        });

        modelBuilder.Entity<Group>(entity =>
        {
            entity.HasKey(e => e.IdGroup).HasName("PRIMARY");

            entity.ToTable("group");

            entity.HasIndex(e => e.IdEvent, "fk_GRUPA_TRKACKA_DISCIPLINA1_idx");

            entity.Property(e => e.IdGroup)
                .ValueGeneratedNever()
                .HasColumnName("idGroup");
            entity.Property(e => e.IdEvent).HasColumnName("idEvent");
            entity.Property(e => e.Number).HasColumnName("number");

            entity.HasOne(d => d.IdEventNavigation).WithMany(p => p.Groups)
                .HasForeignKey(d => d.IdEvent)
                .OnDelete(DeleteBehavior.Cascade)
                .HasConstraintName("fk_GRUPA_TRKACKA_DISCIPLINA1");
        });

        modelBuilder.Entity<JumpingEvent>(entity =>
        {
            entity.HasKey(e => e.IdEvent).HasName("PRIMARY");

            entity.ToTable("jumping_event");

            entity.Property(e => e.IdEvent)
                .ValueGeneratedNever()
                .HasColumnName("idEvent");
            

            entity.HasOne(d => d.IdEventNavigation).WithOne(p => p.JumpingEvent)
                .HasForeignKey<JumpingEvent>(d => d.IdEvent)
                .OnDelete(DeleteBehavior.Cascade)
                .HasConstraintName("fk_SKAKACKA_DISCIPLINA_DISCIPLINA1");
        });

        modelBuilder.Entity<Location>(entity =>
        {
            entity.HasKey(e => e.PostNumber).HasName("PRIMARY");

            entity.ToTable("location");

            entity.Property(e => e.PostNumber)
                .ValueGeneratedNever()
                .HasColumnName("postNumber");
            entity.Property(e => e.Address)
                .HasMaxLength(100)
                .HasColumnName("address");
            entity.Property(e => e.City)
                .HasMaxLength(50)
                .HasColumnName("city");
        });

        modelBuilder.Entity<RunningEvent>(entity =>
        {
            entity.HasKey(e => e.IdEvent).HasName("PRIMARY");

            entity.ToTable("running_event");

            entity.Property(e => e.IdEvent)
                .ValueGeneratedNever()
                .HasColumnName("idEvent");
            entity.Property(e => e.GroupNumber).HasColumnName("groupNumber");

            entity.HasOne(d => d.IdEventNavigation).WithOne(p => p.RunningEvent)
                .HasForeignKey<RunningEvent>(d => d.IdEvent)
                .OnDelete(DeleteBehavior.Cascade)
                .HasConstraintName("fk_TRKACKA_DISCIPLINA_DISCIPLINA1");
        });

        modelBuilder.Entity<ThrowingEvent>(entity =>
        {
            entity.HasKey(e => e.IdEvent).HasName("PRIMARY");

            entity.ToTable("throwing_event");

            entity.Property(e => e.IdEvent)
                .ValueGeneratedNever()
                .HasColumnName("idEvent");
            

            entity.HasOne(d => d.IdEventNavigation).WithOne(p => p.ThrowingEvent)
                .HasForeignKey<ThrowingEvent>(d => d.IdEvent)
                .OnDelete(DeleteBehavior.Cascade)
                .HasConstraintName("fk_BACACKA_DISCIPLINA_DISCIPLINA1");
        });

        modelBuilder.Entity<User>(entity =>
        {
            entity.HasKey(e => e.IdUser).HasName("PRIMARY");

            entity.ToTable("user");

            entity.HasIndex(e => e.Username, "KorisnickoIme_UNIQUE").IsUnique();

            entity.Property(e => e.IdUser).HasColumnName("idUser");
            entity.Property(e => e.Email)
                .HasMaxLength(100)
                .HasColumnName("email");
            entity.Property(e => e.Password)
                .HasMaxLength(30)
                .HasColumnName("password");
            entity.Property(e => e.Type)
                .HasMaxLength(30)
                .HasColumnName("type");
            entity.Property(e => e.Username)
                .HasMaxLength(30)
                .HasColumnName("username");
        });

        OnModelCreatingPartial(modelBuilder);
    }

    partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
}
