<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="webSneakers.Login" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>HQVT SNEAKER</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link
      href="https://fonts.googleapis.com/css?family=Montserrat&display=swap"
      rel="stylesheet"
    />
 
    <link href="cms/admin/css/adminCSS.css" rel="stylesheet" runat="server"  />
    <link href="Assets/css/StyleS.css" rel="stylesheet" />
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css"
    />
    <script src="Assets/js/ScripLogint.js"></script>
 <%--   <script src="cms/admin/js/jquery-3.5.0.min.js"></script>--%>
    <script src="Assets/js/script.js" ></script>
  </head>
  <body>
     
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
               <%-- <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link" href="Admin.aspx?">
                    <span id="<%=danhDau("") %>" class="nav-text ">Trang Chủ</span>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="Admin.aspx?modul=product">
                    <span id="<%=danhDau("product")%>" class="nav-text">Sản Phẩm</span>
                    </a>
                    <ul class="sub-dropdown">
                        <li class="nav-item"><a href="Admin.aspx?modul=product&product=nike">Nike</a></li>
                        <li class="nav-item"><a href="Admin.aspx?modul=product&product=adidas">Adidas</a></li>
                        <li class="nav-item"><a href="Admin.aspx?modul=product&product=balenciaga">Balenciaga</a></li>
                    </ul>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="Admin.aspx?modul=account">
                    <span id="<%=danhDau("account") %>" class="nav-text">Tài Khoản</span>
                    </a>
                    <ul class="sub-dropdown">
                        <li class="nav-item"><a href="Admin.aspx?modul=account&account=admin">Admin</a></li>
                        <li class="nav-item"><a href="Admin.aspx?modul=account&account=client">Khách Hàng</a></li>
                    </ul>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="Admin.aspx?modul=infor">
                    <span id="<%=danhDau("infor") %>" class="nav-text">Giới Thiệu</span>
                    </a>
                    
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="Admin.aspx?modul=contact">
                    <span id="<%=danhDau("contact") %>" class="nav-text ">Liên Hệ</span>
                    </a>
                </li>
                
                <li class="nav-item">
                    <a class="nav-link" href="#">
                    <span class="nav-text">
                        <button><i class="fa fa-sign-in-alt"></i> Đăng Xuất</button>
                    </span>
                    </a>
                </li>
                </ul>--%>
            </div>
            </nav>

        <%--    <nav class="navbar-mobile">
            <ul class="navbar-nav-mobile">
                <li class="nav-item active">
                <a onclick="toggleNavbar()" class="nav-link" href="#">
                    <span class="nav-text">X</span>
                </a>
                </li>
                <li class="nav-item active">
                <a class="nav-link" href="#">
                    <span class="nav-text">Trang Chủ</span>
                </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">
                    <span class="nav-text">Sản Phẩm</span>
                    </a>
                    <ul class="sub-dropdown">
                        <li class="nav-item"><a href="#">Nike</a></li>
                        <li class="nav-item"><a href="#">Adidas</a></li>
                        <li class="nav-item"><a href="#">Balenciaga</a></li>
                    </ul>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">
                    <span class="nav-text">Tài Khoản</span>
                    </a>
                    <ul class="sub-dropdown">
                        <li class="nav-item"><a href="#">Admin</a></li>
                        <li class="nav-item"><a href="#">Khách Hàng</a></li>
                    </ul>
                </li>
                <li class="nav-item">
                <a class="nav-link" href="#">
                    <span class="nav-text">Giới Thiệu</span>
                </a>
                </li>
                <li class="nav-item">
                <a class="nav-link" href="#">
                    <span class="nav-text">Liên Hệ</span>
                </a>
                </li>
                
                <li class="nav-item">
                    <a class="nav-link" href="#">
                    <span class="nav-text">
                        <button><i class="fa fa-sign-in-alt"></i> Đăng Xuất</button>
                    </span>
                    </a>
                </li>
            </ul>
            </nav>--%>
            <div onclick="toggleNavbar()" class="overplay"></div>
        </div>
      
    <div class="sale">
        <h2>SALE UP TO 50%</h2>
    </div>
          
 <!--login-->
        <div class="content-login content-main">
            <div class="container">
                <div class="wellcome">
                    <h2>Chào Mừng đến với HQVT-SNEAKER</h2>
                </div>
                <div class="login-container">
                    <div class="button-login-register">
                        <Button id="btnLogin" onclick="btnLoginClick();">Đăng Nhập</Button> <br>
                        <Button id="btnRegister" onclick="btnRegisterClick()">Đăng kí</Button>
                    </div>
                </div>
                <form class="form-login" id="formLogin" method="post">
                    <div class="modal-content animate" >
                        <div class="imgcontainer">
                            <span onclick="closeLogin()" class="close" title="Close Modal">&times;</span>
                            <img src="Assets/image/logo.jpg" alt="Avatar" class="avatar">
                        </div>

                        <div class="container-form">
                            <label for="uname"><b>Tên Đăng Nhập</b></label>
                            <input type="text" placeholder="Enter Username" name="unamelg" required>

                            <label for="psw"><b>Mật Khẩu</b></label>
                            <input type="password" placeholder="Enter Password" name="pswlg" required>

                            <button type="submit">Đăng Nhập</button>
                        </div>

                        <div class="container" style="background-color:#f1f1f1">

                            <span class="psw">Quên <a href="#">mật khẩu</a></span>
                        </div>
                    </div>
                </form>
                <form class="form-login" id="formRegister" method="post" >
                    <div class="modal-content animate" >
                        <div class="imgcontainer">
                            <span onclick="closeRegister()" class="close" title="Close Modal">&times;</span>
                            <img src="Assets/image/logo.jpg" alt="Avatar" class="avatar">
                        </div>

                        <div class="container-form">

                            <label for="uname"><b>Tên Đăng Nhập</b></label>
                            <input type="text" placeholder="Enter Username" name="uname" required>

                            <label for="psw"><b>Mật Khẩu</b></label>
                            <input id="psw" type="password"  pattern="<%--(?=.*\d)(?=.*[a-z])(?=.*[A-Z])--%>.{8,}" title="Có ít nhất kí tự là số, viết hoa, viết thường, và nhiều hơn 8 kí tự";
                             placeholder="Enter Password" name="psw" required
                             onfocus="foCus()" onblur="out()" onkeyup="keyUp()">
                             <div id="messagePass">
                                <%--<p id="letter" class="invalid">Có chứa chữ viết thường</p>
                                <p id="capital" class="invalid">Có chứa chữ hoa</p>
                                <p id="number" class="invalid">Có chứa số</p>--%>
                                <p id="length" class="invalid">Ít nhất 8 kí tự</p>
                            </div>
                            <label for="psw"><b>Nhập lại mật Khẩu</b></label>
                            <input id="pswag" type="password" onkeyup="checkPass()"  pattern="<%--(?=.*\d)(?=.*[a-z])(?=.*[A-Z])--%>.{8,}" title="<%--Có ít nhất kí tự là số, viết hoa, viết thường, và--%> nhiều hơn 8 kí tự"; 
                             placeholder="Enter Password Again" name="pswag" required>
                            <%--<br><p id="checkPass" style="display: none;"></p> <br> --%>                              
                            <label for="fullName"><b>Họ Và Tên</b></label>
                            <input type="text" placeholder="Full Username" name="fullName" required>
                            <label for="DiaChi"><b>Địa Chỉ</b></label>
                            <input type="text" placeholder="Address" name="DiaChi" required>
                            <label for="fullName"><b>Giới Tính</b></label> <br>
                            <input type="radio" name="GioiTinh" checked="checked" id="gtNam" value="Nam" style="width: 10%;">Nam
                            <input type="radio" name="GioiTinh" id="gtNu" value="Nữ" style="width: 10%;">Nữ
                            <br><label for="email"><b>Email</b></label>
                            <input id="email" type="text" <%--onblur="checkMail()"--%> placeholder="Email" name="email" required>
                            <br><p id="checkEmail" style="display: none;"></p> <br>  
                            <label for="phoneNumber"><b>Số Điện Thoại</b></label>
                            <input id="phone" type="text" placeholder="Phone Number" onkeyup="checkPhone()" name="phoneNumber" required>
                            <p style="color: red; display: none;" id="errPhone" ></p>
                            <button type="submit" >Đăng Kí</button>
                            
                        </div>

                       
                    </div>
                </form>
            </div>
        </div>

<%--          footer--%>
        <div class="colorlib-partner">
            <div class="container">
                <div class="row">
                    <div class="trusted-parner">
                        <h2>TRUSTED PARNER</h2>
                    </div>
                </div>
                <div class="row logo">
                    <div class="col-3 edit">
                        <a href="#"><img src="Assets/image/brand-1.jpg" alt="Adidas"></a>
                    </div>
                    <div class="col-3 edit">
                        <a href="#"><img src="Assets/image/brand-2.jpg" alt="Nike"></a>
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

  </body>
</html>
 