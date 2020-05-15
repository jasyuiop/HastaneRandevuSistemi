using HastaneRandevuSistemi.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HastaneRandevuSistemi.Pages.Admin.Klinik
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
                        Models.EFCore.Klinik yeniKayit = new Models.EFCore.Klinik();
                        yeniKayit.KlinikAdi = txtKlinikAdi.Text;
                        yeniKayit.SehirId = Convert.ToInt32(sehirDDL.SelectedValue);
                        context.Klinik.Add(yeniKayit);
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