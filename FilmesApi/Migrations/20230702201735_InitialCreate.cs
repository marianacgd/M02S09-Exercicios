using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

#pragma warning disable CA1814 // Prefer jagged arrays over multidimensional

namespace FilmesApi.Migrations
{
    /// <inheritdoc />
    public partial class InitialCreate : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "Filmes",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Nome = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    Duracao = table.Column<int>(type: "int", nullable: false),
                    Diretor = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Genero = table.Column<string>(type: "nvarchar(max)", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Filmes", x => x.Id);
                });

            migrationBuilder.InsertData(
                table: "Filmes",
                columns: new[] { "Id", "Diretor", "Duracao", "Genero", "Nome" },
                values: new object[,]
                {
                    { 1, "Jane Campion", 60, "Suspense", "Blade Runner" },
                    { 2, "Jane Campion", 60, "Suspense", "Blade Runner2" },
                    { 3, "Jane Campion", 60, "Suspense", "Blade Runner3" },
                    { 4, "Jane Campion", 60, "Suspense", "Blade Runner4" },
                    { 5, "Jane Campion", 60, "Suspense", "Blade Runner5" }
                });
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "Filmes");
        }
    }
}
