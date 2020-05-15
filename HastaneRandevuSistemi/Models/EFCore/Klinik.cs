using HastaneRandevuSistemi.Models.EFCore.Base.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HastaneRandevuSistemi.Models.EFCore
{
    public class Klinik : BaseModel
    {
        public string KlinikAdi { get; set; }

        public int SehirId { get; set; }
        public Sehir sehir { get; set; }
        public virtual ICollection<Hastane> Hastaneler { get; set; }
    }
}