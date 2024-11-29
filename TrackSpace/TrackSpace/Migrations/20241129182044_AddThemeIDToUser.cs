using System;
using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace TrackSpace.Migrations
{
    /// <inheritdoc />
    public partial class AddThemeIDToUser : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AlterDatabase()
                .Annotation("MySql:CharSet", "utf8mb3");

            migrationBuilder.CreateTable(
                name: "category",
                columns: table => new
                {
                    idCategory = table.Column<int>(type: "int", nullable: false)
                        .Annotation("MySql:ValueGenerationStrategy", MySqlValueGenerationStrategy.IdentityColumn),
                    name = table.Column<string>(type: "varchar(10)", maxLength: 10, nullable: true, collation: "utf8mb3_general_ci")
                        .Annotation("MySql:CharSet", "utf8mb3")
                },
                constraints: table =>
                {
                    table.PrimaryKey("PRIMARY", x => x.idCategory);
                })
                .Annotation("MySql:CharSet", "utf8mb3")
                .Annotation("Relational:Collation", "utf8mb3_general_ci");

            migrationBuilder.CreateTable(
                name: "location",
                columns: table => new
                {
                    postNumber = table.Column<int>(type: "int", nullable: false),
                    city = table.Column<string>(type: "varchar(50)", maxLength: 50, nullable: false, collation: "utf8mb3_general_ci")
                        .Annotation("MySql:CharSet", "utf8mb3"),
                    address = table.Column<string>(type: "varchar(100)", maxLength: 100, nullable: false, collation: "utf8mb3_general_ci")
                        .Annotation("MySql:CharSet", "utf8mb3")
                },
                constraints: table =>
                {
                    table.PrimaryKey("PRIMARY", x => x.postNumber);
                })
                .Annotation("MySql:CharSet", "utf8mb3")
                .Annotation("Relational:Collation", "utf8mb3_general_ci");

            migrationBuilder.CreateTable(
                name: "user",
                columns: table => new
                {
                    idUser = table.Column<int>(type: "int", nullable: false)
                        .Annotation("MySql:ValueGenerationStrategy", MySqlValueGenerationStrategy.IdentityColumn),
                    username = table.Column<string>(type: "varchar(30)", maxLength: 30, nullable: false, collation: "utf8mb3_general_ci")
                        .Annotation("MySql:CharSet", "utf8mb3"),
                    password = table.Column<string>(type: "varchar(30)", maxLength: 30, nullable: false, collation: "utf8mb3_general_ci")
                        .Annotation("MySql:CharSet", "utf8mb3"),
                    email = table.Column<string>(type: "varchar(100)", maxLength: 100, nullable: false, collation: "utf8mb3_general_ci")
                        .Annotation("MySql:CharSet", "utf8mb3"),
                    type = table.Column<string>(type: "varchar(30)", maxLength: 30, nullable: false, collation: "utf8mb3_general_ci")
                        .Annotation("MySql:CharSet", "utf8mb3"),
                    ThemeID = table.Column<int>(type: "int", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PRIMARY", x => x.idUser);
                })
                .Annotation("MySql:CharSet", "utf8mb3")
                .Annotation("Relational:Collation", "utf8mb3_general_ci");

            migrationBuilder.CreateTable(
                name: "club_admin",
                columns: table => new
                {
                    idUser = table.Column<int>(type: "int", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PRIMARY", x => x.idUser);
                    table.ForeignKey(
                        name: "fk_ADMINISTRATOR_KLUBA_KORISNIK",
                        column: x => x.idUser,
                        principalTable: "user",
                        principalColumn: "idUser");
                })
                .Annotation("MySql:CharSet", "utf8mb3")
                .Annotation("Relational:Collation", "utf8mb3_general_ci");

            migrationBuilder.CreateTable(
                name: "competition_organizer",
                columns: table => new
                {
                    idUser = table.Column<int>(type: "int", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PRIMARY", x => x.idUser);
                    table.ForeignKey(
                        name: "fk_ODGANIZATOR_TAKMICENJA_KORISNIK1",
                        column: x => x.idUser,
                        principalTable: "user",
                        principalColumn: "idUser");
                })
                .Annotation("MySql:CharSet", "utf8mb3")
                .Annotation("Relational:Collation", "utf8mb3_general_ci");

            migrationBuilder.CreateTable(
                name: "club",
                columns: table => new
                {
                    idClub = table.Column<int>(type: "int", nullable: false)
                        .Annotation("MySql:ValueGenerationStrategy", MySqlValueGenerationStrategy.IdentityColumn),
                    name = table.Column<string>(type: "varchar(45)", maxLength: 45, nullable: false, collation: "utf8mb3_general_ci")
                        .Annotation("MySql:CharSet", "utf8mb3"),
                    competitorNumber = table.Column<short>(type: "smallint", nullable: false),
                    clubCode = table.Column<string>(type: "char(3)", fixedLength: true, maxLength: 3, nullable: false, collation: "utf8mb3_general_ci")
                        .Annotation("MySql:CharSet", "utf8mb3"),
                    contact = table.Column<string>(type: "varchar(30)", maxLength: 30, nullable: true, collation: "utf8mb3_general_ci")
                        .Annotation("MySql:CharSet", "utf8mb3"),
                    idUser = table.Column<int>(type: "int", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PRIMARY", x => x.idClub);
                    table.ForeignKey(
                        name: "fk_KLUB_ADMINISTRATOR_KLUBA1",
                        column: x => x.idUser,
                        principalTable: "club_admin",
                        principalColumn: "idUser");
                })
                .Annotation("MySql:CharSet", "utf8mb3")
                .Annotation("Relational:Collation", "utf8mb3_general_ci");

            migrationBuilder.CreateTable(
                name: "competition",
                columns: table => new
                {
                    idCompetition = table.Column<int>(type: "int", nullable: false)
                        .Annotation("MySql:ValueGenerationStrategy", MySqlValueGenerationStrategy.IdentityColumn),
                    name = table.Column<string>(type: "varchar(100)", maxLength: 100, nullable: false, collation: "utf8mb3_general_ci")
                        .Annotation("MySql:CharSet", "utf8mb3"),
                    idUser = table.Column<int>(type: "int", nullable: false),
                    postNumber = table.Column<int>(type: "int", nullable: false),
                    description = table.Column<string>(type: "varchar(400)", maxLength: 400, nullable: true, collation: "utf8mb3_general_ci")
                        .Annotation("MySql:CharSet", "utf8mb3"),
                    start = table.Column<DateTime>(type: "datetime", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PRIMARY", x => x.idCompetition);
                    table.ForeignKey(
                        name: "fk_TAKMICENJE_LOKACIJA1",
                        column: x => x.postNumber,
                        principalTable: "location",
                        principalColumn: "postNumber");
                    table.ForeignKey(
                        name: "fk_TAKMICENJE_ODGANIZATOR_TAKMICENJA1",
                        column: x => x.idUser,
                        principalTable: "competition_organizer",
                        principalColumn: "idUser");
                })
                .Annotation("MySql:CharSet", "utf8mb3")
                .Annotation("Relational:Collation", "utf8mb3_general_ci");

            migrationBuilder.CreateTable(
                name: "competitor",
                columns: table => new
                {
                    idCompetitor = table.Column<int>(type: "int", nullable: false)
                        .Annotation("MySql:ValueGenerationStrategy", MySqlValueGenerationStrategy.IdentityColumn),
                    name = table.Column<string>(type: "varchar(45)", maxLength: 45, nullable: true, collation: "utf8mb3_general_ci")
                        .Annotation("MySql:CharSet", "utf8mb3"),
                    surname = table.Column<string>(type: "varchar(45)", maxLength: 45, nullable: true, collation: "utf8mb3_general_ci")
                        .Annotation("MySql:CharSet", "utf8mb3"),
                    idClub = table.Column<int>(type: "int", nullable: false),
                    dob = table.Column<DateOnly>(type: "date", nullable: false),
                    Pol = table.Column<string>(type: "char(1)", fixedLength: true, maxLength: 1, nullable: false, collation: "utf8mb3_general_ci")
                        .Annotation("MySql:CharSet", "utf8mb3"),
                    idCategory = table.Column<int>(type: "int", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PRIMARY", x => x.idCompetitor);
                    table.ForeignKey(
                        name: "fk_TAKMICAR_KLUB1",
                        column: x => x.idClub,
                        principalTable: "club",
                        principalColumn: "idClub");
                    table.ForeignKey(
                        name: "fk_competitor_category1",
                        column: x => x.idCategory,
                        principalTable: "category",
                        principalColumn: "idCategory");
                })
                .Annotation("MySql:CharSet", "utf8mb3")
                .Annotation("Relational:Collation", "utf8mb3_general_ci");

            migrationBuilder.CreateTable(
                name: "competitor_entry",
                columns: table => new
                {
                    entryNumber = table.Column<int>(type: "int", nullable: false)
                        .Annotation("MySql:ValueGenerationStrategy", MySqlValueGenerationStrategy.IdentityColumn),
                    idUser = table.Column<int>(type: "int", nullable: false),
                    idCompetition = table.Column<int>(type: "int", nullable: false),
                    idCompetitor = table.Column<int>(type: "int", nullable: true),
                    date = table.Column<DateTime>(type: "datetime", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PRIMARY", x => x.entryNumber);
                    table.ForeignKey(
                        name: "fk_PRIJAVA_TAKMICARA_ADMINISTRATOR_KLUBA1",
                        column: x => x.idUser,
                        principalTable: "club_admin",
                        principalColumn: "idUser");
                    table.ForeignKey(
                        name: "fk_PRIJAVA_TAKMICARA_TAKMICENJE1",
                        column: x => x.idCompetition,
                        principalTable: "competition",
                        principalColumn: "idCompetition");
                })
                .Annotation("MySql:CharSet", "utf8mb3")
                .Annotation("Relational:Collation", "utf8mb3_general_ci");

            migrationBuilder.CreateTable(
                name: "event",
                columns: table => new
                {
                    idEvent = table.Column<int>(type: "int", nullable: false)
                        .Annotation("MySql:ValueGenerationStrategy", MySqlValueGenerationStrategy.IdentityColumn),
                    idCompetition = table.Column<int>(type: "int", nullable: false),
                    start = table.Column<DateTime>(type: "datetime", nullable: false),
                    idCategory = table.Column<int>(type: "int", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PRIMARY", x => x.idEvent);
                    table.ForeignKey(
                        name: "fk_DISCIPLINA_TAKMICENJE1",
                        column: x => x.idCompetition,
                        principalTable: "competition",
                        principalColumn: "idCompetition");
                    table.ForeignKey(
                        name: "fk_event_category1",
                        column: x => x.idCategory,
                        principalTable: "category",
                        principalColumn: "idCategory");
                })
                .Annotation("MySql:CharSet", "utf8mb3")
                .Annotation("Relational:Collation", "utf8mb3_general_ci");

            migrationBuilder.CreateTable(
                name: "competitor_event",
                columns: table => new
                {
                    idCompetitor = table.Column<int>(type: "int", nullable: false),
                    idEvent = table.Column<int>(type: "int", nullable: false),
                    result = table.Column<string>(type: "varchar(20)", maxLength: 20, nullable: true, collation: "utf8mb3_general_ci")
                        .Annotation("MySql:CharSet", "utf8mb3")
                },
                constraints: table =>
                {
                    table.PrimaryKey("PRIMARY", x => new { x.idCompetitor, x.idEvent })
                        .Annotation("MySql:IndexPrefixLength", new[] { 0, 0 });
                    table.ForeignKey(
                        name: "fk_TAKMICAR_DISCIPLINA_DISCIPLINA1",
                        column: x => x.idEvent,
                        principalTable: "event",
                        principalColumn: "idEvent");
                    table.ForeignKey(
                        name: "fk_TAKMICAR_DISCIPLINA_TAKMICAR1",
                        column: x => x.idCompetitor,
                        principalTable: "competitor",
                        principalColumn: "idCompetitor");
                })
                .Annotation("MySql:CharSet", "utf8mb3")
                .Annotation("Relational:Collation", "utf8mb3_general_ci");

            migrationBuilder.CreateTable(
                name: "jumping_event",
                columns: table => new
                {
                    idEvent = table.Column<int>(type: "int", nullable: false),
                    startHeight = table.Column<string>(type: "varchar(45)", maxLength: 45, nullable: true, collation: "utf8mb3_general_ci")
                        .Annotation("MySql:CharSet", "utf8mb3")
                },
                constraints: table =>
                {
                    table.PrimaryKey("PRIMARY", x => x.idEvent);
                    table.ForeignKey(
                        name: "fk_SKAKACKA_DISCIPLINA_DISCIPLINA1",
                        column: x => x.idEvent,
                        principalTable: "event",
                        principalColumn: "idEvent");
                })
                .Annotation("MySql:CharSet", "utf8mb3")
                .Annotation("Relational:Collation", "utf8mb3_general_ci");

            migrationBuilder.CreateTable(
                name: "running_event",
                columns: table => new
                {
                    idEvent = table.Column<int>(type: "int", nullable: false),
                    groupNumber = table.Column<int>(type: "int", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PRIMARY", x => x.idEvent);
                    table.ForeignKey(
                        name: "fk_TRKACKA_DISCIPLINA_DISCIPLINA1",
                        column: x => x.idEvent,
                        principalTable: "event",
                        principalColumn: "idEvent");
                })
                .Annotation("MySql:CharSet", "utf8mb3")
                .Annotation("Relational:Collation", "utf8mb3_general_ci");

            migrationBuilder.CreateTable(
                name: "throwing_event",
                columns: table => new
                {
                    idEvent = table.Column<int>(type: "int", nullable: false),
                    weight = table.Column<string>(type: "varchar(45)", maxLength: 45, nullable: true, collation: "utf8mb3_general_ci")
                        .Annotation("MySql:CharSet", "utf8mb3")
                },
                constraints: table =>
                {
                    table.PrimaryKey("PRIMARY", x => x.idEvent);
                    table.ForeignKey(
                        name: "fk_BACACKA_DISCIPLINA_DISCIPLINA1",
                        column: x => x.idEvent,
                        principalTable: "event",
                        principalColumn: "idEvent");
                })
                .Annotation("MySql:CharSet", "utf8mb3")
                .Annotation("Relational:Collation", "utf8mb3_general_ci");

            migrationBuilder.CreateTable(
                name: "group",
                columns: table => new
                {
                    idGroup = table.Column<int>(type: "int", nullable: false),
                    number = table.Column<int>(type: "int", nullable: false),
                    idEvent = table.Column<int>(type: "int", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PRIMARY", x => x.idGroup);
                    table.ForeignKey(
                        name: "fk_GRUPA_TRKACKA_DISCIPLINA1",
                        column: x => x.idEvent,
                        principalTable: "running_event",
                        principalColumn: "idEvent");
                })
                .Annotation("MySql:CharSet", "utf8mb3")
                .Annotation("Relational:Collation", "utf8mb3_general_ci");

            migrationBuilder.CreateIndex(
                name: "fk_KLUB_ADMINISTRATOR_KLUBA1_idx",
                table: "club",
                column: "idUser");

            migrationBuilder.CreateIndex(
                name: "KodKluba_UNIQUE",
                table: "club",
                column: "clubCode",
                unique: true);

            migrationBuilder.CreateIndex(
                name: "fk_TAKMICENJE_LOKACIJA1_idx",
                table: "competition",
                column: "postNumber");

            migrationBuilder.CreateIndex(
                name: "fk_TAKMICENJE_ODGANIZATOR_TAKMICENJA1_idx",
                table: "competition",
                column: "idUser");

            migrationBuilder.CreateIndex(
                name: "fk_competitor_category1_idx",
                table: "competitor",
                column: "idCategory");

            migrationBuilder.CreateIndex(
                name: "fk_TAKMICAR_KLUB1_idx",
                table: "competitor",
                column: "idClub");

            migrationBuilder.CreateIndex(
                name: "BrojPrijave_UNIQUE",
                table: "competitor_entry",
                column: "entryNumber",
                unique: true);

            migrationBuilder.CreateIndex(
                name: "fk_PRIJAVA_NA_TAKMICENJE_TAKMICAR_DISCIPLINA1_idx",
                table: "competitor_entry",
                column: "idCompetitor");

            migrationBuilder.CreateIndex(
                name: "fk_PRIJAVA_TAKMICARA_ADMINISTRATOR_KLUBA1_idx",
                table: "competitor_entry",
                column: "idUser");

            migrationBuilder.CreateIndex(
                name: "fk_PRIJAVA_TAKMICARA_TAKMICENJE1_idx",
                table: "competitor_entry",
                column: "idCompetition");

            migrationBuilder.CreateIndex(
                name: "fk_TAKMICAR_DISCIPLINA_DISCIPLINA1_idx",
                table: "competitor_event",
                column: "idEvent");

            migrationBuilder.CreateIndex(
                name: "fk_DISCIPLINA_TAKMICENJE1_idx",
                table: "event",
                column: "idCompetition");

            migrationBuilder.CreateIndex(
                name: "fk_event_category1_idx",
                table: "event",
                column: "idCategory");

            migrationBuilder.CreateIndex(
                name: "idDiscipline_UNIQUE",
                table: "event",
                column: "idEvent",
                unique: true);

            migrationBuilder.CreateIndex(
                name: "fk_GRUPA_TRKACKA_DISCIPLINA1_idx",
                table: "group",
                column: "idEvent");

            migrationBuilder.CreateIndex(
                name: "KorisnickoIme_UNIQUE",
                table: "user",
                column: "username",
                unique: true);
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "competitor_entry");

            migrationBuilder.DropTable(
                name: "competitor_event");

            migrationBuilder.DropTable(
                name: "group");

            migrationBuilder.DropTable(
                name: "jumping_event");

            migrationBuilder.DropTable(
                name: "throwing_event");

            migrationBuilder.DropTable(
                name: "competitor");

            migrationBuilder.DropTable(
                name: "running_event");

            migrationBuilder.DropTable(
                name: "club");

            migrationBuilder.DropTable(
                name: "event");

            migrationBuilder.DropTable(
                name: "club_admin");

            migrationBuilder.DropTable(
                name: "competition");

            migrationBuilder.DropTable(
                name: "category");

            migrationBuilder.DropTable(
                name: "location");

            migrationBuilder.DropTable(
                name: "competition_organizer");

            migrationBuilder.DropTable(
                name: "user");
        }
    }
}
