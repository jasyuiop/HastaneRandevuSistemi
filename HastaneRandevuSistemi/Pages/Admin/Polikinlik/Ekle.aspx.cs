using HastaneRandevuSistemi.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HastaneRandevuSistemi.Pages.Admin.Polikinlik
{
    public partial class Ekle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void bttnSign_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                try
                {
                    using (MasterContext context = new MasterContext())
                    {
                        Models.EFCore.Polikinlik yeniKayit = new Models.EFCore.Polikinlik();
                        yeniKayit.PolikinlikAdi = txtBoxPolikinlikAdi.Text;
                        yeniKayit.HastaneId = Convert.ToInt32(hastaneDDL.SelectedValue);
                        context.Polikinlik.Add(yeniKayit);
                        context.SaveChanges();
                    }
                    Response.Redirect("Goruntule.aspx");
                }
                catch
                {
                    Response.Write("Kayıt başarısız!");
                }
            }
        }
    }
}