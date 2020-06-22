<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="DetailProductLoadControl.ascx.cs" Inherits="webSneakers.cms.display.product.DetailProductLoadControl" %>

<link href="display/css/CssDetail.css" rel="stylesheet" />
<!--cua san pham-->

    <div class="product-detail">
        <div class="container">
            <div class="content-detail">
                <div class="header-link">
                    <span style="color: #88c8bc;">Trang chủ</span><span> / Chi tiết sản phẩm</span>
                </div>
                <div class="content-pro">
                    <div class="row">
                        <div class="col-8">
                            <div class="product-img">
                                <asp:Literal ID="ltrAnh" runat="server"></asp:Literal>
                                 
                            </div> 
                        </div>
                        <div class="col-4">
                            <div class="product-info">
                                <h3>
                                    <asp:Literal ID="ltrTenSP" runat="server"></asp:Literal></h3>
                                <div class="pro-price">
                                    <span>Hãng : </span><span style="text-transform: uppercase;"><asp:Literal ID="ltrHang" runat="server"></asp:Literal></span>
                                </div>
                                <div class="pro-price">
                                    
                                    <span style="font-size: 22px;">
                                        <asp:Literal ID="ltrGia" runat="server"></asp:Literal></span>
                                    <br>
                                    <span class="rate">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i> 
                                        <i class="fa fa-star"></i> 
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star-half"></i> 
                                        (4.5/5)
                                    </span>
                                </div>
                                <div class="size-pro">
                                    <span>SIZE  </span>
                                    <select name="size" id="size">
                                        <option value="36">36</option>
                                        <option value="37">37</option>
                                        <option value="38">38</option>
                                        <option value="39">39</option>
                                        <option value="40">40</option>
                                        <option value="41">41</option>
                                        <option value="42">42</option>
                                        <option value="43">43</option>
                                        <option value="44">44</option>
                                    </select>
                                </div>
                                <div class="soluong">
                                    <span>SỐ LƯỢNG   </span>
                                    <input type="number" name="soluong" value="1" id="soluong" min="1" max="50">
                                </div>
                                <p class="cart">
                                    <button type="submit" class="btn-add-cart" runat="server" onserverclick="btnAddCart_Click">
                                        <i class="fa fa-cart-plus"></i> Thêm vào giỏ hàng
                                    </button>
                                
                                    <button type="submit" class="btn-buy" runat="server" onserverclick="btnBuyNow_Click">
                                        <i class="fa fa-dollar-sign"></i>Mua ngay
                                    </button>
                                </p>
                            </div>
                    </div>
                    </div>
                    
                </div>
                <div class="footer-pro">
                    <div class="row" style="margin-top: 75px;">
                        <h2>Bảng Quy Đổi Kích Cỡ</h2>
                    </div>
                    <div class="row">
                        <img src="Assets/image/QuyDoiSize.png" alt="" style="width: 80%;">
                    </div>
                </div>
            </div>

        </div>
    </div>
