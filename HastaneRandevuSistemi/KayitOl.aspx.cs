using HastaneRandevuSistemi.Models;
using HastaneRandevuSistemi.Models.EFCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HastaneRandevuSistemi
{
    public partial class KayitOl : System.Web.UI.Page
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
                        Hasta yeniKayit = new Hasta();
                        yeniKayit.Isim = txtBoxName.Text;
                        yeniKayit.Soyisim = txtBoxSurrname.Text;
                        yeniKayit.TckNo = txtBoxTckNo.Text;
                        yeniKayit.Adres = txtBoxAdress.Text;
                        yeniKayit.Telefon = txtBoxPhoneNum.Text;
                        yeniKayit.Mail = txtBoxMail.Text;
                        yeniKayit.Sifre = txtBoxUserPass.Text;
                        context.Hasta.Add(yeniKayit);
                        context.SaveChanges();
                    }
                    Response.Redirect("Anasayfa.aspx");
                }
                catch
                {
                    Response.Write("Kayıt başarısız!");
                }
            }
        }
    }
}