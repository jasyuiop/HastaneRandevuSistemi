<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Anasayfa.aspx.cs" Inherits="HastaneRandevuSistemi.Anasayfa" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <title>Anasayfa</title>
</head>
<body>
    <div class="container">
        <div class="card bg-light">
            <article class="card-body mx-auto" style="max-width: 400px;">
                <form id="form1" runat="server" class="form-horizontal">
                    <h1>Randevu Sistemi</h1>
                    <br />
                    <br />
                    <div class="form-group">
                        <asp:Label ID="lblTckno" runat="server" Text="T.C. Kimlik Numarası" CssClass="col-lg control-label"></asp:Label>
                        <div class="col">
                            <asp:TextBox ID="txtBoxTckNo" runat="server" placeholder="T.C. Kimlik numaranızı girin" class="form-control"></asp:TextBox>
                        </div>
                    </div>

                    <div class="form-group">
                        <asp:Label ID="lblPasswd" runat="server" Text="Şifre" CssClass="col-sm-3 control-label"></asp:Label>
                        <div class="col">
                            <asp:TextBox ID="txtBoxPass" runat="server" placeholder="Şifrenizi girin" TextMode="Password" class="form-control"></asp:TextBox>
                        </div>
                    </div>

                    <div>
                        <div class="form-group">
                            <div class="col">
                                <asp:Button ID="bttnSignIn" runat="server" Text="Giriş yap" class="btn btn-primary btn-block" OnClick="bttnSignIn_Click" />
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col">
                                <asp:Button ID="BttnSignUp" runat="server" Text="Kayıt Ol" class="btn btn-primary btn-block" OnClick="BttnSignUp_Click" />
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col">
                                <asp:Button ID="BttnAdminPage" runat="server" Text="Admin Girişi" class="btn btn-primary btn-block" OnClick="BttnAdminPage_Click" />
                            </div>
                        </div>
                    </div>
                </form>
        </div>
    </div>
</body>
</html>
