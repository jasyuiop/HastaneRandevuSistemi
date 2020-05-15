using HastaneRandevuSistemi.Models.EFCore.Base.Interface;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HastaneRandevuSistemi.Models.EFCore.Base.Model
{
    public abstract class BaseModel : IBaseModel
    {
        public int Id { get; set; }
    }
}