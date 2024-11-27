using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;
using TrackSpace.Models;
namespace TrackSpace.DBUtil
{
    public class MyDbContext : DbContext
    {
        Dictionary<string, string> connectionStrings = new Dictionary<string, string> {
            { "DefaultConnection","Server=localhost;Database=trackspace;User=root;Password=dejan;"
            }
        };

        public MyDbContext(DbContextOptions<MyDbContext> options) : base(options) { }

        public DbSet<Category> Categories { get; set; }
        public DbSet<ClubAdmin> ClubAdmins{ get; set; }
        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<User>()
                .HasOne(u => u.ClubAdmin)
                .WithOne(ca => ca.IdUserNavigation)
                .HasForeignKey<ClubAdmin>(ca => ca.IdUser);

            modelBuilder.Entity<User>()
                .HasOne(u => u.CompetitionOrganizer)
                .WithOne(ca => ca.IdUserNavigation)
                .HasForeignKey<CompetitionOrganizer>(ca => ca.IdUser);

            modelBuilder.Entity<Event>()
                .HasOne(u => u.JumpingEvent)
                .WithOne(ca => ca.IdEventNavigation)
                .HasForeignKey<JumpingEvent>(ca => ca.IdEvent);

            modelBuilder.Entity<Event>()
                .HasOne(u => u.ThrowingEvent)
                .WithOne(ca => ca.IdEventNavigation)
                .HasForeignKey<ThrowingEvent>(ca => ca.IdEvent);

            modelBuilder.Entity<Event>()
                .HasOne(u => u.RunningEvent)
                .WithOne(ca => ca.IdEventNavigation)
                .HasForeignKey<RunningEvent>(ca => ca.IdEvent);

            modelBuilder.Entity<Category>().HasKey(c => c.IdCategory);
            modelBuilder.Entity<Club>().HasKey(c => c.IdClub);
            modelBuilder.Entity<ClubAdmin>().HasKey(c => c.IdUser);
            modelBuilder.Entity<Competition>().HasKey(c => c.IdCompetition);
            modelBuilder.Entity<CompetitionOrganizer>().HasKey(c => c.IdUser);
            modelBuilder.Entity<Competitor>().HasKey(c => c.IdCompetitor);
            modelBuilder.Entity<CompetitorEntry>().HasKey(c =>c.EntryNumber);
            modelBuilder.Entity<CompetitorEvent>().HasKey(c => new { c.IdCompetitor, c.IdEvent});
            modelBuilder.Entity<Event>().HasKey(c => c.IdEvent);
            modelBuilder.Entity<Group>().HasKey(c => c.IdGroup);
            modelBuilder.Entity<JumpingEvent>().HasKey(c => c.IdEvent);
            modelBuilder.Entity<Location>().HasKey(c => c.PostNumber);
            modelBuilder.Entity<RunningEvent>().HasKey(c => c.IdEvent);
            modelBuilder.Entity<ThrowingEvent>().HasKey(c => c.IdEvent);
            modelBuilder.Entity<User>().HasKey(c => c.IdUser);

            modelBuilder.Entity<Category>().ToTable("category");
            modelBuilder.Entity<Club>().ToTable("club");
            modelBuilder.Entity<ClubAdmin>().ToTable("club_admin");
            modelBuilder.Entity<Competition>().ToTable("competition");
            modelBuilder.Entity<CompetitionOrganizer>().ToTable("competition_organizer");
            modelBuilder.Entity<Competitor>().ToTable("competitor");
            modelBuilder.Entity<CompetitorEntry>().ToTable("competitor_entry");
            modelBuilder.Entity<CompetitorEvent>().ToTable("competitor_event");
            modelBuilder.Entity<Event>().ToTable("event");
            modelBuilder.Entity<Group>().ToTable("group");
            modelBuilder.Entity<JumpingEvent>().ToTable("jumping_event");
            modelBuilder.Entity<Location>().ToTable("location");
            modelBuilder.Entity<RunningEvent>().ToTable("runnging_event");
            modelBuilder.Entity<ThrowingEvent>().ToTable("throwing_event");
            modelBuilder.Entity<User>().ToTable("user");
            base.OnModelCreating(modelBuilder);
        }

    }

}
