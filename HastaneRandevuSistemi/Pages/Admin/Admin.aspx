<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="HastaneRandevuSistemi.Admin" %>

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
    <title>Admin</title>
</head>
<body>
    <form id="form1" runat="server">
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <a class="navbar-brand" href="#">Admin</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNavDropdown">
                <ul class="navbar-nav">

                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Kayıtları görüntüle ve düzenle
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                            <a class="dropdown-item" href="Hasta/Goruntule.aspx">Hastaları görüntüle ve düzenle</a>
                            <a class="dropdown-item" href="Hekim/Goruntule.aspx">Hekimleri görüntüle ve düzenle</a>
                            <a class="dropdown-item" href="Sehir/Goruntule.aspx">Şehirleri görüntüle ve düzenle</a>
                            <a class="dropdown-item" href="Klinik/Goruntule.aspx">Klinikleri görüntüle ve düzenle</a>
                            <a class="dropdown-item" href="Hastane/Goruntule.aspx">Hastaneleri görüntüle ve düzenle</a>
                            <a class="dropdown-item" href="Polikinlik/Goruntule.aspx">Polikinlikleri görüntüle ve düzenle</a>
                            <a class="dropdown-item" href="Randevu/Goruntule.aspx">Randevuları görüntüle ve düzenle</a>
                            <a class="dropdown-item" href="Recete/Goruntule.aspx">Reçeteleri görüntüle ve düzenle</a>
                        </div>
                    </li>

                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Kayıt ekle
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                            <a class="dropdown-item" href="Hekim/Ekle.aspx">Hekim ekle</a>
                            <a class="dropdown-item" href="Sehir/Ekle.aspx">Şehir ekle</a>
                            <a class="dropdown-item" href="Klinik/Ekle.aspx">Klinik ekle</a>
                            <a class="dropdown-item" href="Hastane/Ekle.aspx">Hastane ekle</a>
                            <a class="dropdown-item" href="Polikinlik/Ekle.aspx">Polikinlik ekle</a>
                        </div>
                    </li>
                </ul>
            </div>
        </nav>
        <br />
        <h4>Sistemde kayıtlı olan kullanıcı sayıları</h4> <br />
        <div>
            <asp:Label ID="Label1" runat="server" Text="Sisteme kayıtlı olan hasta sayısı: "></asp:Label> <br />
            <asp:Label ID="Label2" runat="server" Text="Sisteme kayıtlı olan hekim sayısı: "></asp:Label>
        </div>
    </form>
</body>
</html>
