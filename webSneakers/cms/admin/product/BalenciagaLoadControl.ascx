<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="BalenciagaLoadControl.ascx.cs" Inherits="webSneakers.cms.admin.product.balenciaga.BalenciagaLoadControl" %>
<h3>Thống Kê</h3>
<table class="table-tk">
    <tr class="table-header">
        <td>Ảnh</td>
        <td>Mã Giày</td>
        <td>Tên Sản Phẩm</td>
        <td>Hãng</td>
        <td>SL Kho</td>

        <td>Giá Tiền</td>
        <td>Sửa</td>
        <td>Xóa</td>
    </tr>

    <asp:Literal ID="ltrThemDong" runat="server"></asp:Literal>
</table>
<script>
    function confirmDelete() {
        return confirm("Bạn có muốn xóa sản phẩm!");
    }
</script>