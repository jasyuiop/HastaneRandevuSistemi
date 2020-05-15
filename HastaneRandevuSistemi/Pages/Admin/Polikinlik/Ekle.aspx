<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ekle.aspx.cs" Inherits="HastaneRandevuSistemi.Pages.Admin.Polikinlik.Ekle" %>

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
    <title>Polikinlik Ekle</title>
</head>
<body>
    <div class="container">
        <div class="card bg-light">
            <article class="card-body mx-auto" style="max-width: 800px;">
                <form id="form1" runat="server" class="form-horizontal">
                    <div class="form-group">
                        <asp:Label ID="lblPolikinlikAdi" runat="server" Text="Polikinlik Adı" CssClass="col-sm-3 control-label"></asp:Label>
                        <div class="col">
                            <asp:TextBox ID="txtBoxPolikinlikAdi" runat="server" placeholder="Polikinlik Adını girin" class="form-control" required="required"></asp:TextBox>
                        </div>
                    </div>

                    <div class="form-group">
                        <asp:Label ID="lblSehirId" runat="server" Text="Şehir" CssClass="col-sm-3 control-label"></asp:Label>
                        <div class="col">
                            <asp:DropDownList ID="sehirDDL" runat="server" class="form-control" AutoPostBack="True" DataSourceID="sehirSqlDataSource" DataTextField="SehirAdi" DataValueField="Id"></asp:DropDownList>
                            <asp:SqlDataSource ID="sehirSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Sehir]"></asp:SqlDataSource>
                        </div>
                    </div>

                    <div class="form-group">
                        <asp:Label ID="lblKlinikId" runat="server" Text="Klinik" CssClass="col-sm-3 control-label"></asp:Label>
                        <div class="col">
                            <asp:DropDownList ID="klinikDDL" runat="server" class="form-control" AutoPostBack="True" DataSourceID="klinikSqlDataSource" DataTextField="KlinikAdi" DataValueField="Id"></asp:DropDownList>
                            <asp:SqlDataSource ID="klinikSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Klinik] WHERE ([SehirId] = @SehirId)">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="sehirDDL" DefaultValue="1" Name="SehirId" PropertyName="SelectedValue" Type="Int32" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </div>
                    </div>

                    <div class="form-group">
                        <asp:Label ID="lblHastaneId" runat="server" Text="Hastane" CssClass="col-sm-3 control-label"></asp:Label>
                        <div class="col">
                            <asp:DropDownList ID="hastaneDDL" runat="server" class="form-control" DataSourceID="hastaneSqlDataSource" DataTextField="HastaneAdi" DataValueField="Id"></asp:DropDownList>
                            <asp:SqlDataSource ID="hastaneSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Hastane] WHERE ([KlinikId] = @KlinikId)">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="klinikDDL" DefaultValue="1" Name="KlinikId" PropertyName="SelectedValue" Type="Int32" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col">
                            <asp:Button ID="bttnSign" runat="server" Text="Kayıt" class="btn btn-primary btn-block" OnClick="bttnSign_Click" />
                        </div>
                    </div>
                </form>
            </article>
        </div>
    </div>
</body>
</html>
