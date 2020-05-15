<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Anasayfa.aspx.cs" Inherits="HastaneRandevuSistemi.Anasayfa" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
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
