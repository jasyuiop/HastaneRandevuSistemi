<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="HastaneRandevuSistemi.Admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <title>Admin</title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="form-group">
            <div class="col-sm-12">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" CssClass="table table-bordered table-hover" AllowSorting="True">
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Hasta] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Hasta] ([Isim], [Soyisim], [TckNo], [Adres], [Telefon], [Mail], [Sifre]) VALUES (@Isim, @Soyisim, @TckNo, @Adres, @Telefon, @Mail, @Sifre)" SelectCommand="SELECT * FROM [Hasta]" UpdateCommand="UPDATE [Hasta] SET [Isim] = @Isim, [Soyisim] = @Soyisim, [TckNo] = @TckNo, [Adres] = @Adres, [Telefon] = @Telefon, [Mail] = @Mail, [Sifre] = @Sifre WHERE [Id] = @Id">
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
