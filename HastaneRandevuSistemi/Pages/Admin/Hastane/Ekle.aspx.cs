using HastaneRandevuSistemi.Models;
using HastaneRandevuSistemi.Models.EFCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HastaneRandevuSistemi.Pages.Admin.Hastane
{
    public partial class Ekle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void bttnSign_Click(object sender, EventArgs e)
        {
            try
            {
                using (MasterContext context = new MasterContext())
                {
                    Models.EFCore.Hastane yeniKayit = new Models.EFCore.Hastane(); // import etsem de nedense Hastane tipi importtan gelmediği için böyle kullandım.
                    yeniKayit.HastaneAdi = txtBoxHastaneAdi.Text;
                    yeniKayit.KlinikId = Convert.ToInt32(klinikDDL.SelectedValue);
                    context.Hastane.Add(yeniKayit);
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