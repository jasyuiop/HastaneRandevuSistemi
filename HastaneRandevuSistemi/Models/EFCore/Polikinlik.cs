using HastaneRandevuSistemi.Models.EFCore.Base.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HastaneRandevuSistemi.Models.EFCore
{
    public class Polikinlik : BaseModel
    {
        public string PolikinlikAdi { get; set; }
        public int HastaneId { get; set; }
        public Hastane hastane { get; set; }
        public virtual ICollection<Hekim> Hekimler { get; set; }
    }
}