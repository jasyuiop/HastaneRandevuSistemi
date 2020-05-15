using HastaneRandevuSistemi.Models.EFCore.Base.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HastaneRandevuSistemi.Models.EFCore
{
    public class Randevu : BaseModel
    {
        public int HastaId { get; set; }
        public Hasta hasta { get; set; }

        public int HekimId { get; set; }
        public Hekim hekim { get; set; }

        public DateTime Baslangic { get; set; }
        public DateTime Bitis { get; set; }

        public Recete Recete { get; set; }
    }
}