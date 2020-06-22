<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="HomeLoadControl.ascx.cs" Inherits="webSneakers.cms.display.Home.HomeLoadControl" %>
<div class="slide">
        <div class="slideshow-container">
        <div class="mySlides fade">
            <img src="Assets/image/1970s-2.jpg" style="width: 100%">
            <div class="text">Sneaker is my Life</div>
        </div>

        <div class="mySlides fade">

            <img src="Assets/image/collection-sneaker.jpg" style="width: 100%">
            <div class="text">Sneaker is my Life</div>
        </div>

        <div class="mySlides fade">

            <img src="Assets/image/1970s-3.jpg" style="width: 100%">
            <div class="text">Sneaker is my Life</div>
        </div>

        <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
        <a class="next" onclick="plusSlides(1)">&#10095;</a>

    </div>
    <br>

    <div style="text-align: center">
        <span class="dot" onclick="currentSlide(1)"></span>
        <span class="dot" onclick="currentSlide(2)"></span>
        <span class="dot" onclick="currentSlide(3)"></span>
    </div>

   <%-- slide chay

    <div class="mySlides fade">
        <img src="Assets/image/1970s-2.jpg" style="width: 100%">
        <div class="text">Sneaker is my Life</div>
    </div>

    <div class="mySlides fade">
        <img src="Assets/image/collection-sneaker.jpg" style="width: 100%">
        <div class="text">Sneaker is my Life</div>
    </div>

    <div class="mySlides fade">
        <img src="Assets/image/1970s-3.jpg" style="width: 100%">
        <div class="text">Sneaker is my Life</div>
    </div>

<br>

<div style="text-align: center">
    <span class="dot"></span>
    <span class="dot"></span>
    <span class="dot"></span>
</div>--%>
</div>


<!--cua san pham-->
<div class="colorlib-intro">
    <div class="container">
        <div class="row">
            <div class="col-12 text-center">
                <h2 class="intro">Những Bộ Sưu Tập Mới Nhất
                </h2>
            </div>
        </div>
    </div>
</div>

<div class="page-product">
    <div class="container-fluid">
        <div class="row">
            <div class="col-6 text-center">
                <div class="colletion-item">
                    <a href="#">
                        <img src="Assets/image/adidas-collection.png" alt=""></a>
                    <h2 style="font-size: 30px;">Bộ Sưu Tập Adidas</h2>
                </div>

            </div>
            <div class="col-6 text-center">
                <div class="colletion-item">
                    <a href="#">
                        <img style="border-radius: 10%;" src="Assets/image/Nike-collection.jpg" alt=""></a>
                    <h2 style="font-size: 30px;">Bộ Sưu Tập Nike</h2>
                </div>

            </div>
        </div>
    </div>
</div>

<div class="page-product">
    <div class="container">
        <div class="container-pro">
            <div class="row">
                <div class="col-12 text-center" style="margin-bottom: 50px;">
                    <h2>SẢN PHẨM NỔI BẬT</h2>
                </div>
            </div>

            <div class="row">
                <!--san pham -->
                <asp:Literal ID="ltrLoadPro" runat="server"></asp:Literal>
                <!--san pham -->

            </div>


            <!--more product-->
            <div class="row">
                <div class="col-12 text-center">
                    <p style="padding-top: 100px;">
                        <a href="Default.aspx?modul=allProduct" class="btn-show-all">Xem Toàn Bộ Sản Phẩm</a>
                    </p>
                </div>
            </div>
        </div>
    </div>
</div>
