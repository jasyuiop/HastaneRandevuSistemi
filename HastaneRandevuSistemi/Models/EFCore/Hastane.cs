using HastaneRandevuSistemi.Models.EFCore.Base.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HastaneRandevuSistemi.Models.EFCore
{
    public class Hastane : BaseModel
    {
        public string HastaneAdi { get; set; }
        public int KlinikId { get; set; }
        public Klinik klinik { get; set; }
        public virtual ICollection<Polikinlik> Polikinlikler { get; set; }
    }
}