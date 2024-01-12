using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace Proyecto.Migrations
{
    /// <inheritdoc />
    public partial class InitialMigration : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "Factura",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    NumeroFactura = table.Column<int>(type: "int", nullable: false),
                    Fecha = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    TipodePago = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    DocumentoCliente = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    NombreCliente = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    Subtotal = table.Column<int>(type: "int", nullable: false),
                    Descuento = table.Column<int>(type: "int", nullable: false),
                    Iva = table.Column<int>(type: "int", nullable: false),
                    TotalDescuento = table.Column<int>(type: "int", nullable: false),
                    TotalImpuesto = table.Column<int>(type: "int", nullable: false),
                    Total = table.Column<int>(type: "int", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Factura", x => x.Id);
                });
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "Factura");
        }
    }
}
