using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace HastaneRandevuSistemi.Models.EFCore.Base.Interface
{
    public class IBaseModel
    {
        [Key]
        int Id { get; set; }
    }
}