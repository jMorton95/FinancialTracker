using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace FinancialTracker.Migrations
{
    /// <inheritdoc />
    public partial class BalanceHistory : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "Balance",
                table: "Accounts");

            migrationBuilder.CreateTable(
                name: "Balance",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    BalanceFigure = table.Column<double>(type: "float(9)", precision: 9, scale: 2, nullable: false),
                    AccountId = table.Column<int>(type: "int", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Balance", x => x.Id);
                    table.ForeignKey(
                        name: "FK_Balance_Accounts_AccountId",
                        column: x => x.AccountId,
                        principalTable: "Accounts",
                        principalColumn: "Id");
                });

            migrationBuilder.CreateIndex(
                name: "IX_Balance_AccountId",
                table: "Balance",
                column: "AccountId");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "Balance");

            migrationBuilder.AddColumn<double>(
                name: "Balance",
                table: "Accounts",
                type: "float(11)",
                precision: 11,
                scale: 2,
                nullable: false,
                defaultValue: 0.0);
        }
    }
}
