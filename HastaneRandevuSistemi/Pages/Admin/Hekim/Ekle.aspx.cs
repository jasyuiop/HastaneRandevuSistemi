using HastaneRandevuSistemi.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HastaneRandevuSistemi.Pages.Admin.Hekim
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
                        Models.EFCore.Hekim yeniKayit = new Models.EFCore.Hekim();
                        yeniKayit.Isim = txtBoxName.Text;
                        yeniKayit.Soyisim = txtBoxSurrname.Text;
                        yeniKayit.TckNo = txtBoxTckNo.Text;
                        yeniKayit.Adres = txtBoxAdress.Text;
                        yeniKayit.Telefon = txtBoxPhoneNum.Text;
                        yeniKayit.Mail = txtBoxMail.Text;
                        yeniKayit.Sifre = txtBoxUserPass.Text;
                        yeniKayit.PolikinlikId = Convert.ToInt32(polikinlikDDL.SelectedValue);
                        context.Hekim.Add(yeniKayit);
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