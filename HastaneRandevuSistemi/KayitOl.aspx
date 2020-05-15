﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="KayitOl.aspx.cs" Inherits="HastaneRandevuSistemi.KayitOl" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <title>Kayıt Ol</title>
</head>
<body>
    <div class="container">
        <div class="card bg-light">
            <article class="card-body mx-auto" style="max-width: 800px;">
                <form id="form1" runat="server" class="form-horizontal">
                    <div class="form-group">
                        <asp:Label ID="lblName" runat="server" Text="Adı" CssClass="col-sm-3 control-label"></asp:Label>
                        <div class="col">
                            <asp:TextBox ID="txtBoxName" runat="server" placeholder="Adınızı girin" class="form-control" required="required"></asp:TextBox>
                        </div>
                    </div>

                    <div class="form-group">
                        <asp:Label ID="lblSurrname" runat="server" Text="Soyadı" CssClass="col-sm-3 control-label"></asp:Label>
                        <div class="col">
                            <asp:TextBox ID="txtBoxSurrname" runat="server" placeholder="Soyadınızı girin" class="form-control" required="required"></asp:TextBox>
                        </div>
                    </div>

                    <div class="form-group">
                        <asp:Label ID="lblTckNo" runat="server" Text="T.C. Kimlik Numarası" CssClass="col-sm-3 control-label"></asp:Label>
                        <div class="col">
                            <asp:TextBox ID="txtBoxTckNo" runat="server" placeholder="T.C. Kimlik numaranızı girin" class="form-control" required="required"></asp:TextBox>
                        </div>
                    </div>

                    <div class="form-group">
                        <asp:Label ID="lblAdress" runat="server" Text="Adres" CssClass="col-sm-3 control-label"></asp:Label>
                        <div class="col">
                            <asp:TextBox ID="txtBoxAdress" runat="server" placeholder="Adresinizi girin" class="form-control" TextMode="MultiLine" required="required"></asp:TextBox>
                        </div>
                    </div>

                    <div class="form-group">
                        <asp:Label ID="lblPhoneNum" runat="server" Text="Telefon Numarası" CssClass="col-sm-3 control-label"></asp:Label>
                        <div class="col">
                            <asp:TextBox ID="txtBoxPhoneNum" runat="server" placeholder="Telefon numaranızı girin" class="form-control" required="required"></asp:TextBox>
                            <asp:RegularExpressionValidator CssClass="validation" ID="PhoneRegExpValidator" runat="server" ErrorMessage="Geçerli bir telefon numarası girin" ControlToValidate="txtBoxPhoneNum" Display="Dynamic" SetFocusOnError="True" ValidationExpression="^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]*$"></asp:RegularExpressionValidator>
                        </div>
                    </div>

                    <div class="form-group">
                        <asp:Label ID="lblMail" runat="server" Text="Mail Adresi" CssClass="col-sm-3 control-label"></asp:Label>
                        <div class="col">
                            <asp:TextBox ID="txtBoxMail" runat="server" placeholder="Mail adresinizi girin" class="form-control" required="required"></asp:TextBox>
                            <asp:RegularExpressionValidator CssClass="validation" ID="MailRegExpValidator" runat="server" ErrorMessage="Geçerli bir mail adresi girin" ControlToValidate="txtBoxMail" Display="Dynamic" SetFocusOnError="True" ValidationExpression="\w+([-+.’]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        </div>
                    </div>

                    <div class="form-group">
                        <asp:Label ID="lblPasswd" runat="server" Text="Şifre" CssClass="col-sm-3 control-label"></asp:Label>
                        <div class="col">
                            <asp:TextBox ID="txtBoxUserPass" placeholder="Şifrenizi girin" runat="server" class="form-control" TextMode="Password" required="required"></asp:TextBox>
                        </div>
                    </div>

                    <div class="form-group">
                        <asp:Label ID="lblPasswdAgain" runat="server" Text="Şifrenizi tekrar girin" CssClass="col-sm-3 control-label"></asp:Label>
                        <div class="col">
                            <asp:TextBox ID="txtBoxVerifyPass" placeholder="Şifrenizi Tekrar Girin" runat="server" class="form-control" TextMode="Password" required="required"></asp:TextBox>
                            <asp:CompareValidator CssClass="validation" ID="PassCompareValidator" runat="server" ControlToCompare="txtBoxUserPass" ControlToValidate="txtBoxVerifyPass" ErrorMessage="Şifreler uyuşmuyor!" Display="Dynamic" SetFocusOnError="True"></asp:CompareValidator>
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col">
                            <asp:Button ID="bttnSign" runat="server" Text="Kayıt ol" class="btn btn-primary btn-block" OnClick="bttnSign_Click"/>
                        </div>
                    </div>
                </form>
            </article>
        </div>
    </div>
</body>
</html>
