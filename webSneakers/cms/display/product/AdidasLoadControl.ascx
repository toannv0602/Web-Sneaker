<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="AdidasLoadControl.ascx.cs" Inherits="webSneakers.cms.display.product.AdidasLoadControl" %>

    <div class="page-product">
        <div class="container-fluid">
            <div class="row">
                <div class="col-12">
                <img src="Assets/image/Adidas-collection.jpg" alt="anh-bosutap" width="100%">
            </div>
            </div>
        </div>
    </div>

<!--cua san pham-->
    <div class="colorlib-intro">
        <div class="container">
            <div class="row">
                <div class="col-12 text-center">
                    <h2 class="intro">
                        <asp:Literal ID="ltrHang" runat="server"></asp:Literal> Collection
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
                        <a href="#"><img src="Assets/image/adidas-collection.png" alt=""></a>
                        <h2 style="font-size: 30px;">Bộ Sưu Tập Adidas</h2>
                    </div>

                </div>
                <div class="col-6 text-center">
                    <div class="colletion-item">
                        <a href="#"><img style="border-radius: 10%;" src="Assets/image/Nike-collection.jpg" alt=""></a>
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
                       <!--san pham -->
                    <asp:Literal ID="ltrLoadPro" runat="server"></asp:Literal>
                      <!--san pham -->
                      
                </div>
            </div>
        </div>
    </div>