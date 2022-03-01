using System;
using Microsoft.EntityFrameworkCore.Migrations;

namespace Tura.DataAccess.Migrations
{
    public partial class InitialMigration : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "Connectors",
                columns: table => new
                {
                    Id = table.Column<Guid>(nullable: false),
                    Name = table.Column<string>(nullable: true),
                    AppRefName = table.Column<string>(nullable: true),
                    IP = table.Column<string>(nullable: true),
                    Uname = table.Column<string>(nullable: true),
                    Passwd = table.Column<string>(nullable: true),
                    DBName = table.Column<string>(nullable: true),
                    Port = table.Column<int>(nullable: false),
                    OtherInfo = table.Column<string>(nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Connectors", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "CorrelationRules",
                columns: table => new
                {
                    Guid = table.Column<Guid>(nullable: false),
                    name = table.Column<string>(nullable: true),
                    rule = table.Column<string>(nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_CorrelationRules", x => x.Guid);
                });

            migrationBuilder.CreateTable(
                name: "Identities",
                columns: table => new
                {
                    Id = table.Column<Guid>(nullable: false),
                    UserName = table.Column<string>(nullable: true),
                    Name = table.Column<string>(nullable: true),
                    Surname = table.Column<string>(nullable: true),
                    Email = table.Column<string>(nullable: true),
                    IsActive = table.Column<bool>(nullable: false),
                    Created = table.Column<DateTime>(nullable: false),
                    Modified = table.Column<DateTime>(nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Identities", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "Users",
                columns: table => new
                {
                    Id = table.Column<Guid>(nullable: false),
                    ConnectorID = table.Column<Guid>(nullable: false),
                    Username = table.Column<string>(nullable: true),
                    Name = table.Column<string>(nullable: true),
                    Surname = table.Column<string>(nullable: true),
                    InternalID = table.Column<int>(nullable: true),
                    IsActive = table.Column<int>(nullable: true),
                    IdentityID = table.Column<Guid>(nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Users", x => x.Id);
                    table.ForeignKey(
                        name: "FK_Users_Connectors_ConnectorID",
                        column: x => x.ConnectorID,
                        principalTable: "Connectors",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "Identities2Users",
                columns: table => new
                {
                    UserID = table.Column<Guid>(nullable: false),
                    IdentityID = table.Column<Guid>(nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Identities2Users", x => new { x.IdentityID, x.UserID });
                    table.ForeignKey(
                        name: "FK_Identities2Users_Identities_IdentityID",
                        column: x => x.IdentityID,
                        principalTable: "Identities",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_Identities2Users_Users_UserID",
                        column: x => x.UserID,
                        principalTable: "Users",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateIndex(
                name: "IX_Identities2Users_UserID",
                table: "Identities2Users",
                column: "UserID",
                unique: true);

            migrationBuilder.CreateIndex(
                name: "IX_Users_ConnectorID",
                table: "Users",
                column: "ConnectorID");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "CorrelationRules");

            migrationBuilder.DropTable(
                name: "Identities2Users");

            migrationBuilder.DropTable(
                name: "Identities");

            migrationBuilder.DropTable(
                name: "Users");

            migrationBuilder.DropTable(
                name: "Connectors");
        }
    }
}
