using HastaneRandevuSistemi.Models.EFCore.Base.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HastaneRandevuSistemi.Models
{
    public class Transporter : BaseModel
    {
        public string TckNo { get; set; }
        public string Sifre { get; set; }

    }
}