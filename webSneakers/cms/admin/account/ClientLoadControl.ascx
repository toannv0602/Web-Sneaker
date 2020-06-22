<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ClientLoadControl.ascx.cs" Inherits="webSneakers.cms.admin.account.client.ClientLoadControl" %>

<!--tai khoan-->
        <div class="content-product">
            <div class="container">
                <div class="row">
                    <div class="col-3">
                        <div class="list-category">
                            <h3>Tài Khoản</h3>
                            <div class="list-category-menu">
                                <ul>
                                    <%--<li><a href="#">
                                            <div class="icon">
                                                <div class="fa fa-arrow-right"></div>
                                            </div>
                                            <div class="menu-content">Admin</div>
                                        </a></li>--%>
                                    <li><a href="#">
                                            <div class="icon">
                                                <div class="fa fa-arrow-right"></div>
                                            </div>
                                            <div class="menu-content">Khách Hàng</div>
                                        </a></li>

                                </ul>
                            </div>
                        </div>
                        <div class="list-sort">
                            <h3>Sắp Xếp</h3>
                            <div class="list-sort-menu list-menu">
                                <ul>
                                    <li><a href="#">
                                            <div class="icon">
                                                <div class="fa fa-arrow-right"></div>
                                            </div>
                                            <div class="menu-content">Theo Tên Khách Hàng</div>
                                        </a></li>
                                    <li><a href="#">
                                            <div class="icon">
                                                <div class="fa fa-arrow-right"></div>
                                            </div>
                                            <div class="menu-content">Khách Hàng Thân Thiết</div>
                                        </a></li>

                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-9">
                        <div class="table-product">
                            <h3>Thống Kê</h3>
                            <table class="table-tk">
                                <tr class="tr-client">
                                    <td>Tên Đăng Nhập</td>
                                    <td>Mật Khẩu</td>
                                    <td>Họ Và tên</td>
                                    <td>Giới Tính</td>
                                    <td>Địa chỉ</td>                                  
                                    <td>Email</td>
                                    <td>Số Điện Thoại</td>
                                    <td>Xóa</td>
                                </tr>
                                <asp:Literal ID="ltrThemKH" runat="server"></asp:Literal>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
<script>
    function confirmDeleteAcc() {
        return confirm("Bạn có muốn xóa tài khoản!");
    }
</script>

<%--Admin.aspx?modul=account&account=sortName--%>