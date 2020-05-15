using System;
using Microsoft.EntityFrameworkCore.Migrations;

namespace HastaneRandevuSistemi.Migrations
{
    public partial class RandevuDB : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "Hasta",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Isim = table.Column<string>(nullable: true),
                    Soyisim = table.Column<string>(nullable: true),
                    TckNo = table.Column<string>(nullable: true),
                    Adres = table.Column<string>(nullable: true),
                    Telefon = table.Column<string>(nullable: true),
                    Mail = table.Column<string>(nullable: true),
                    Sifre = table.Column<string>(nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Hasta", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "Sehir",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    SehirAdi = table.Column<string>(nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Sehir", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "Klinik",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    KlinikAdi = table.Column<string>(nullable: true),
                    SehirId = table.Column<int>(nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Klinik", x => x.Id);
                    table.ForeignKey(
                        name: "FK_Klinik_Sehir_SehirId",
                        column: x => x.SehirId,
                        principalTable: "Sehir",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "Hastane",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    HastaneAdi = table.Column<string>(nullable: true),
                    KlinikId = table.Column<int>(nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Hastane", x => x.Id);
                    table.ForeignKey(
                        name: "FK_Hastane_Klinik_KlinikId",
                        column: x => x.KlinikId,
                        principalTable: "Klinik",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "Polikinlik",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    PolikinlikAdi = table.Column<string>(nullable: true),
                    HastaneId = table.Column<int>(nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Polikinlik", x => x.Id);
                    table.ForeignKey(
                        name: "FK_Polikinlik_Hastane_HastaneId",
                        column: x => x.HastaneId,
                        principalTable: "Hastane",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "Hekim",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Isim = table.Column<string>(nullable: true),
                    Soyisim = table.Column<string>(nullable: true),
                    TckNo = table.Column<string>(nullable: true),
                    Adres = table.Column<string>(nullable: true),
                    Telefon = table.Column<string>(nullable: true),
                    Mail = table.Column<string>(nullable: true),
                    Sifre = table.Column<string>(nullable: true),
                    PolikinlikId = table.Column<int>(nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Hekim", x => x.Id);
                    table.ForeignKey(
                        name: "FK_Hekim_Polikinlik_PolikinlikId",
                        column: x => x.PolikinlikId,
                        principalTable: "Polikinlik",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "Randevu",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    HastaId = table.Column<int>(nullable: false),
                    HekimId = table.Column<int>(nullable: false),
                    Baslangic = table.Column<DateTime>(nullable: false),
                    Bitis = table.Column<DateTime>(nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Randevu", x => x.Id);
                    table.ForeignKey(
                        name: "FK_Randevu_Hasta_HastaId",
                        column: x => x.HastaId,
                        principalTable: "Hasta",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_Randevu_Hekim_HekimId",
                        column: x => x.HekimId,
                        principalTable: "Hekim",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "Recete",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    RandevuId = table.Column<int>(nullable: false),
                    Ilac = table.Column<string>(nullable: true),
                    Aciklama = table.Column<string>(nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Recete", x => x.Id);
                    table.ForeignKey(
                        name: "FK_Recete_Randevu_RandevuId",
                        column: x => x.RandevuId,
                        principalTable: "Randevu",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateIndex(
                name: "IX_Hastane_KlinikId",
                table: "Hastane",
                column: "KlinikId");

            migrationBuilder.CreateIndex(
                name: "IX_Hekim_PolikinlikId",
                table: "Hekim",
                column: "PolikinlikId");

            migrationBuilder.CreateIndex(
                name: "IX_Klinik_SehirId",
                table: "Klinik",
                column: "SehirId");

            migrationBuilder.CreateIndex(
                name: "IX_Polikinlik_HastaneId",
                table: "Polikinlik",
                column: "HastaneId");

            migrationBuilder.CreateIndex(
                name: "IX_Randevu_HastaId",
                table: "Randevu",
                column: "HastaId");

            migrationBuilder.CreateIndex(
                name: "IX_Randevu_HekimId",
                table: "Randevu",
                column: "HekimId");

            migrationBuilder.CreateIndex(
                name: "IX_Recete_RandevuId",
                table: "Recete",
                column: "RandevuId",
                unique: true);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "Recete");

            migrationBuilder.DropTable(
                name: "Randevu");

            migrationBuilder.DropTable(
                name: "Hasta");

            migrationBuilder.DropTable(
                name: "Hekim");

            migrationBuilder.DropTable(
                name: "Polikinlik");

            migrationBuilder.DropTable(
                name: "Hastane");

            migrationBuilder.DropTable(
                name: "Klinik");

            migrationBuilder.DropTable(
                name: "Sehir");
        }
    }
}
