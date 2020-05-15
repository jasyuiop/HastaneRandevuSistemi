using HastaneRandevuSistemi.Models.EFCore;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HastaneRandevuSistemi.Models
{
    public class MasterContext : DbContext
    {
        public MasterContext()
        {

        }
        public MasterContext(DbContextOptions option) : base(option)
        {
        }

        public DbSet<Hekim> Hekim { get; set; }
        public DbSet<Hasta> Hasta { get; set; }
        public DbSet<Hastane> Hastane { get; set; }
        public DbSet<Klinik> Klinik { get; set; }
        public DbSet<Polikinlik> Polikinlik { get; set; }
        public DbSet<Randevu> Randevu { get; set; }
        public DbSet<Recete> Recete { get; set; }
        public DbSet<Sehir> Sehir { get; set; }


        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Sehir>() //referans alınan model
                .HasMany(p => p.Klinikler) //Hangi modele foregin bağladığımız 
                .WithOne(s => s.sehir) //hangi modelden alınacağı
                .HasForeignKey(k => k.SehirId); // foreign olan sütun

            modelBuilder.Entity<Klinik>()
                .HasMany(p => p.Hastaneler)
                .WithOne(s => s.klinik)
                .HasForeignKey(k => k.KlinikId);

            modelBuilder.Entity<Hastane>()
                .HasMany(p => p.Polikinlikler)
                .WithOne(s => s.hastane)
                .HasForeignKey(k => k.HastaneId);

            modelBuilder.Entity<Polikinlik>()
                .HasMany(p => p.Hekimler)
                .WithOne(s => s.polikinlik)
                .HasForeignKey(k => k.PolikinlikId);

            modelBuilder.Entity<Hasta>()
                .HasMany(p => p.Randevular)
                .WithOne(s => s.hasta)
                .HasForeignKey(k => k.HastaId);

            modelBuilder.Entity<Hekim>()
                .HasMany(p => p.Randevular)
                .WithOne(s => s.hekim)
                .HasForeignKey(k => k.HekimId);
        }
        protected override void OnConfiguring(DbContextOptionsBuilder options)
            => options.UseSqlServer(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\RandevuDB.mdf;Integrated Security=True");
    }
}