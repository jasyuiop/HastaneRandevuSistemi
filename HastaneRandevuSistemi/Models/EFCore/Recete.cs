using HastaneRandevuSistemi.Models.EFCore.Base.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HastaneRandevuSistemi.Models.EFCore
{
    public class Recete : BaseModel
    {
        public int RandevuId { get; set; }
        public Randevu Randevu { get; set; }

        public string Ilac { get; set; }
        public string Aciklama { get; set; }
    }
}