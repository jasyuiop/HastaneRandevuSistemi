using HastaneRandevuSistemi.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HastaneRandevuSistemi
{
    public partial class Anasayfa : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BttnSignUp_Click(object sender, EventArgs e)
        {
            Response.Redirect("KayitOl.aspx");
        }

        protected void bttnSignIn_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                try
                {
                    using (MasterContext context = new MasterContext())
                    {
                       var user = context.Hasta.FirstOrDefault(x => x.TckNo == txtBoxTckNo.Text && x.Sifre == txtBoxPass.Text);
                        if (user != null)
                        {
                            // kullanıcı var
                            Transporter transporter = new Transporter();
                            transporter.Id = user.Id;
                            transporter.TckNo = user.TckNo;
                            transporter.Sifre = user.Sifre;
                            Session.Add("Account", transporter);
                            Page.Response.Write("kullanıcı var session oluşturuldu, yönlendirme sayfası yazılmadı");
                        }
                        else
                        {
                            Page.Response.Write("böyle bir kullanıcı yok yönlendirme sayfası yazılmadı");
                        }
                    }    
                }
                catch
                {
                    Page.Response.Write("Oturum açma hatası!!!");

                }
            }
        }

        protected void BttnAdminPage_Click(object sender, EventArgs e)
        {
            Response.Redirect("Admin.aspx");
        }
    }
}