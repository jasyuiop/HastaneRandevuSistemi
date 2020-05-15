using HastaneRandevuSistemi.Models;
using HastaneRandevuSistemi.Models.EFCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HastaneRandevuSistemi.Pages.Admin.Sehir
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
                        Models.EFCore.Sehir yeniKayit = new Models.EFCore.Sehir();
                        yeniKayit.SehirAdi = txtBoxSehirAdi.Text;
                        context.Sehir.Add(yeniKayit);
                        context.SaveChanges();
                    }
                    Response.Redirect("Goruntule.aspx");
                }
                catch(Exception ex)
                {
                    Response.Write("Kayıt başarısız! {0}"+ex.Message);
                }
            }
        }
    }
}