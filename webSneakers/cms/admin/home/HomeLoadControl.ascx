<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="HomeLoadControl.ascx.cs" Inherits="webSneakers.cms.admin.home.HomeLoadControl" %>

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
    
<%--    <div class="slideshow-container">

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

    </div>
    <br>
                
    <div style="text-align: center">
        <span class="dot"></span>
        <span class="dot"></span>
        <span class="dot"></span>
    </div>--%>
</div>

          
          
<!--cua admin-->
<div class="content-admin">
    <div class="container">
        <div class="chao-mung">
            <h1>Chào Mừng Admin  </h1>
        </div>
        <div class="row">
            <div class="col-6">
                <div class="border-tt">
                    <a href="#" class="border-animation">
                        <i class="fa fa-euro-sign"><span> 30M <%--<asp:Literal ID="ltrTongTien" runat="server"></asp:Literal>--%></span></i>
                    </a>
                </div>
            </div>
            <div class="col-6">
                <div class="border-tt">
                    <a href="#" class="border-animation">
                        <i class="fa fa-shoe-prints"><span>TC: <asp:Literal ID="ltrTruyCap" runat="server"></asp:Literal> </span></i>
                    </a>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-6">
                <div class="border-tt">
                    <a href="#" class="border-animation">
                        <i class="fa fa-cart-plus"><span>30M</span></i>
                    </a>
                </div>
            </div>
            <div class="col-6">
                <div class="border-tt">
                    <a href="#" class="border-animation">
                        <i class="fa fa-users"><span>2000</span></i>
                    </a>
                </div>
            </div>
        </div>
    </div>
</div>

