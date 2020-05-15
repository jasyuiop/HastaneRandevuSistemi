<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Goruntule.aspx.cs" Inherits="HastaneRandevuSistemi.Pages.Admin.Hasta.Goruntule" %>

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
    <title>Hasta Görüntüle</title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="form-group">
            <div class="col-sm-12">
                <asp:GridView ID="hastaGridView" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="hastaSqlDataSource" CssClass="table table-bordered table-hover" AllowSorting="True" AllowPaging="True">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" Visible="False" />
                        <asp:BoundField DataField="Isim" HeaderText="İsim" SortExpression="Isim" />
                        <asp:BoundField DataField="Soyisim" HeaderText="Soyisim" SortExpression="Soyisim" />
                        <asp:BoundField DataField="TckNo" HeaderText="T.C No" SortExpression="TckNo" />
                        <asp:BoundField DataField="Adres" HeaderText="Adres" SortExpression="Adres" />
                        <asp:BoundField DataField="Telefon" HeaderText="Telefon" SortExpression="Telefon" />
                        <asp:BoundField DataField="Mail" HeaderText="E-Posta" SortExpression="Mail" />
                        <asp:BoundField DataField="Sifre" HeaderText="Şifre" SortExpression="Sifre" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="hastaSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Hasta] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Hasta] ([Isim], [Soyisim], [TckNo], [Adres], [Telefon], [Mail], [Sifre]) VALUES (@Isim, @Soyisim, @TckNo, @Adres, @Telefon, @Mail, @Sifre)" SelectCommand="SELECT * FROM [Hasta]" UpdateCommand="UPDATE [Hasta] SET [Isim] = @Isim, [Soyisim] = @Soyisim, [TckNo] = @TckNo, [Adres] = @Adres, [Telefon] = @Telefon, [Mail] = @Mail, [Sifre] = @Sifre WHERE [Id] = @Id">
                    <DeleteParameters>
                        <asp:Parameter Name="Id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Isim" Type="String" />
                        <asp:Parameter Name="Soyisim" Type="String" />
                        <asp:Parameter Name="TckNo" Type="String" />
                        <asp:Parameter Name="Adres" Type="String" />
                        <asp:Parameter Name="Telefon" Type="String" />
                        <asp:Parameter Name="Mail" Type="String" />
                        <asp:Parameter Name="Sifre" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Isim" Type="String" />
                        <asp:Parameter Name="Soyisim" Type="String" />
                        <asp:Parameter Name="TckNo" Type="String" />
                        <asp:Parameter Name="Adres" Type="String" />
                        <asp:Parameter Name="Telefon" Type="String" />
                        <asp:Parameter Name="Mail" Type="String" />
                        <asp:Parameter Name="Sifre" Type="String" />
                        <asp:Parameter Name="Id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </div>
        </div>
    </form>
</body>
</html>
