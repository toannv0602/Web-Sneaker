<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="CartHomeLoadControl.ascx.cs" Inherits="webSneakers.cms.display.cart.CartLoadControl" %>

        <!--gio hàng-->
        <div class="cart-detail">
            <div class="container">
                <div class="cart-content">
                    <div class="row">
                        <div class="row row-head">
                            <div class="list-pro">
                                <span>Sản Phẩm</span>
                            </div>
                            <div class="list-info text-center">
                                <span>Đơn Giá</span>
                            </div>
                            <div class="list-info text-center">
                                <span>Số Lượng</span>
                            </div>
                            <div class="list-info text-center">
                                <span>Thành Tiền</span>
                            </div>
                            <div class="list-info text-center">
                                <span>Xóa</span>
                            </div>                        
                        </div>
                       <%-- san pham--%>
                        <asp:Literal ID="ltrCartPro" runat="server"></asp:Literal>
                        <%-- san pham--%>
                       
                       
                    </div>


                    <div class="total-wrap">
                        <div class="row">
                            <div class="col-4 text-center">
                                <div class="total">
                                    <div class="sub">
                                        <span>Tổng tiền hàng : </span>
                                        <span>
                                            <asp:Literal ID="ltrSumMoney" runat="server"></asp:Literal></span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-8 text-center">
                                <button type="button" class="btn-order"  onclick="if (confirm('Xác nhận đặt hàng?')) " runat="server" onserverclick="btnOrderClick">Đặt Hàng</button>
                            </div>
                        </div>
                    </div>
                </div>
                
            </div>
        </div>

<script>
    function confirmDeleteCart(){
        return confirm("Bạn có chắc muốn bỏ sản phẩm này!");
    }
   
</script>