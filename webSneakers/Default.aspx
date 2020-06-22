 <%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="webSneakers.Default" %>

<%@ Register Src="~/cms/display/DisplayLoadControl.ascx" TagPrefix="uc1" TagName="DisplayLoadControl" %>


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>HQVT SNEAKER</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <link
      href="https://fonts.googleapis.com/css?family=Montserrat&display=swap"
      rel="stylesheet"
    />
    <link href="cms/display/css/StyleDis.css" rel="stylesheet"/>
    <link href="Assets/css/StyleS.css" rel="stylesheet" />
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css"
    />
    <script src="Assets/js/script.js" ></script>
  </head>
<body>
    <form id="form1" runat="server">
              <div id="page">
        <div class="container">
            <nav class="navbar">
            <div class="wrap">
                <div class="logo-container">
                <img id="image-logo"
                    src="Assets/image/logo.jpg"
                    alt=""
                />
                <div class="input-container">
                    <input placeholder="Search..." type="text" />
                    <a href="#"><i class="fas fa-search"></i></a>
                </div>
                <span onclick="toggleNavbar()" class="button-toggle"
                    ><i class="fas fa-align-justify"></i
                ></span>
                </div>
                <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link" href="Default.aspx">
                    <span class="nav-text" id="<%=danhDau("") %>">Trang Chủ</span>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="Default.aspx?modul=product">
                    <span class="nav-text" id="<%=danhDau("product")%>" >Thương Hiệu</span>
                    </a>
                    <ul class="sub-dropdown">
                        <li class="nav-item"><a href="Default.aspx?modul=product&product=balenciaga">Balenciaga</a></li>
                        <li class="nav-item"><a href="Default.aspx?modul=product&product=converse">Converse</a></li>
                        <li class="nav-item"><a href="Default.aspx?modul=product&product=adidas">Adidas</a></li>
                        <li class="nav-item"><a href="Default.aspx?modul=product&product=nike">Nike</a></li>
                    </ul>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="Default.aspx?modul=infor">
                    <span class="nav-text" id="<%=danhDau("infor") %>">Giới Thiệu</span>
                    </a>
                    
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="Default.aspx?modul=contact">
                    <span class="nav-text" id="<%=danhDau("contact") %>">Liên Hệ</span>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="Default.aspx?modul=cart">
                    <span class="nav-text" id="<%=danhDau("cart") %>">
                        <i class="fa fa-shopping-cart" ></i> Giỏ [<asp:Literal ID="ltrSLGio" runat="server"></asp:Literal>]</span
                    >
                    </a>
                </li>
                    <li class="nav-item last">
                    <span class="nav-text">
                        <asp:Literal ID="ltrHello" runat="server"></asp:Literal>
                       
                        </span>
                </li>
                
                <li class="nav-item">
                    <a class="nav-link logout" href="Login.aspx">
                    <span class="nav-text">
                        <i class="fa fa-sign-in-alt"></i>
                        <asp:Literal ID="ltrInOutt" runat="server"></asp:Literal>
                    </span>
                    </a>
                </li>

                </ul>
            </div>
            </nav>

            <nav class="navbar-mobile">
            <ul class="navbar-nav-mobile">
                <li class="nav-item active">
                <a onclick="toggleNavbar()" class="nav-link" href="#">
                    <span class="nav-text">X</span>
                </a>
                </li>
                <li class="nav-item active">
                <a class="nav-link" href="Default.aspx">
                    <span class="nav-text">Trang Chủ</span>
                </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="Default.aspx?modul=product">
                    <span class="nav-text">Thương Hiệu</span>
                    </a>
                    <ul class="sub-dropdown">
                        <li class="nav-item"><a href="#">Balenciaga</a></li>
                        <li class="nav-item"><a href="#">Convert</a></li>
                        <li class="nav-item"><a href="#">Adidas</a></li>
                        <li class="nav-item"><a href="#">Nike</a></li>
                    </ul>
                </li>
                               
                <li class="nav-item">
                <a class="nav-link" href="Default.aspx?modul=infor">
                    <span class="nav-text" >Giới Thiệu</span>
                </a>
                </li>
                <li class="nav-item">
                <a class="nav-link" href="Default.aspx?modul=contact">
                    <span class="nav-text">Liên Hệ</span>
                </a>
                </li>
                <li class="nav-item last">
                <a class="nav-link" href="Default.aspx?modul=cart">
                    <span class="nav-text">
                    <i class="fas fa-shopping-cart"></i> Giỏ [<asp:Literal ID="ltrSLGio1" runat="server"></asp:Literal>]</span
                    >
                </a>
                </li>
                 
                <li class="nav-item">
                    
                    <a class="nav-link logout" href="Login.aspx">
                    <span class="nav-text">
                        <i class="fa fa-sign-in-alt"></i>
                        <asp:Literal ID="ltrInOut" runat="server"></asp:Literal>
                    </span>
                    </a>
                </li>
            </ul>
            </nav>
            <div onclick="toggleNavbar()" class="overplay"></div>
        </div>
      
    <div class="sale">
        <h2>SALE UP TO 50%</h2>
    </div>

   <uc1:DisplayLoadControl runat="server" ID="DisplayLoadControl" />

 <div class="colorlib-partner">
            <div class="container">
                <div class="row">
                    <div class="trusted-parner">
                        <h2>TRUSTED PARNER</h2>
                    </div>
                </div>
                <div class="row logo">
                    <div class="col-3 edit">
                        <a href="#"><img src="Assets/image/brand-1.jpg" alt="Adidas"/></a>
                    </div>
                    <div class="col-3 edit">
                        <a href="#"><img src="Assets/image/brand-2.jpg" alt="Nike"/></a>
                    </div>
                    <div class="col-3 edit">
                        <a href="#"><img src="Assets/image/logo-converse.jpg" alt="Convert"></a>
                    </div>
                    <div class="col-3">
                        <a href="#"><img src="Assets/image/balenciaga-vector-logo.png" alt="Balenciaga"></a>
                    </div>
                </div>
            </div>
        </div>
        <div class="colorlib-footer">
            <div class="container">
                <div class="row">
                    <div class="col-4">
                        <div class="row"></div>
                                <h4>Support</h4>
                                <p>Tel: 0123456789</p><br>
                                <p>Address: 96 Dinh Cong, Hoang Mai, Ha Noi</p><br>
                                <a class="col-4" href="#"><img src="Assets/image/facebook.png" alt="facebook"></a>
                                <a  class="col-4"href="#"><img src="Assets/image/instagram-logo.png" alt="instagram"></a>
                                <a  class="col-4" href="#"><img src="Assets/image/twitter_PNG33.png" alt="twitter"></a>
                        </div>
                        <div class="col-4">
                        <h4>Information
                        </h4>
                        <p>
							<ul class="colorlib-footer-links">
								<li><a href="#">Contact</a></li>
								<li><a href="#">Returns/Exchange</a></li>
								<li><a href="#">Gift Voucher</a></li>
								<li><a href="#">Wishlist</a></li>
								<li><a href="#">Special</a></li>
								<li><a href="#">Customer Services</a></li>
								<li><a href="#">Site maps</a></li>
							</ul>
						</p>
                    </div>
                    <div class="col-4">
						<h4>News</h4>
						<ul class="colorlib-footer-links">
							<li><a href="#">Procduct</a></li>
							<li><a href="#">Press</a></li>
							<li><a href="#">Exhibitions</a></li>
						</ul>
					</div>
                    </div>
                    
                </div>
            </div>
        </div>

    </form>
</body>
</html>
