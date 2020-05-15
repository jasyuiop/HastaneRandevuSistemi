using HastaneRandevuSistemi.Models.EFCore.Base.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HastaneRandevuSistemi.Models.EFCore
{
    public class Hasta : BaseModel
    {
        public string Isim { get; set; }
        public string Soyisim { get; set; }
        public string TckNo { get; set; }
        public string Adres { get; set; }
        public string Telefon { get; set; }
        public string Mail { get; set; }
        public string Sifre { get; set; }

        public virtual ICollection<Randevu> Randevular { get; set; }
    }
}