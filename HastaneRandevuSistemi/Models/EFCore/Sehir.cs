using HastaneRandevuSistemi.Models.EFCore.Base.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HastaneRandevuSistemi.Models.EFCore
{
    public class Sehir : BaseModel
    {
        public string SehirAdi { get; set; }
        public virtual ICollection<Klinik> Klinikler { get; set; }
    }
}