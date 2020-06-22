<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="InsertProLoadControl.ascx.cs" Inherits="webSneakers.cms.admin.product.quanli.InsertProLoadControl" %>

<h3>Thêm mới, Chỉnh sửa sản phẩm</h3>
<asp:Literal ID="ltrThongBao" runat="server"></asp:Literal>
    <div class="thongTin">
        <div class="tenTruong">
            Mã Giày
        </div>
        <div class="inhap">
            <asp:TextBox ID="tbMaHang" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Mời bạn nhập"
                ControlToValidate="tbMaHang" SetFocusOnError="true" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
    </div>
    <div class="thongTin">
         <div class="tenTruong">
            Tên Giày
        </div>
        <div class="inhap">
            <asp:TextBox ID="tbTenGiay" runat="server"></asp:TextBox>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Mời bạn nhập"
                ControlToValidate="tbTenGiay" SetFocusOnError="true" Display="Dynamic"  ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
    </div>
    <div class="thongTin">
        <div class="tenTruong">
            Số Lượng
        </div>
        <div class="inhap">
            <asp:TextBox ID="tbSL" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1"
                    ControlToValidate="tbSL" runat="server"
                    ErrorMessage="Only Numbers allowed"
                    ValidationExpression="\d+">
                </asp:RegularExpressionValidator>
        </div>
    </div>
     <div class="thongTin">
        <div class="tenTruong">
            Hãng
        </div>
        <div class="inhap">
            <%--<asp:TextBox ID="tbHang" runat="server"></asp:TextBox>--%>
            <asp:DropDownList ID="tbHang" runat="server">
                <asp:ListItem Selected="True" Value="Nike">Nike</asp:ListItem>
                <asp:ListItem Value="Adidas">Adidas</asp:ListItem>
                <asp:ListItem Value="Balenciaga">Balenciaga</asp:ListItem>
                <asp:ListItem Value="Converse">Converse</asp:ListItem>
            </asp:DropDownList>
            <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Mời bạn nhập"
                ControlToValidate="tbHang" SetFocusOnError="true" Display="Dynamic" ForeColor="Red" ></asp:RequiredFieldValidator>--%>
        </div>
    </div>
    <div class="thongTin">
        <div class="tenTruong">
            Giá Bán
        </div>
        <div class="inhap">
            <asp:TextBox ID="tbGia" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2"
                    ControlToValidate="tbGia" runat="server"
                    ErrorMessage="Only Numbers allowed"
                    ValidationExpression="\d+">
                </asp:RegularExpressionValidator>
        </div>
    </div>
    <div class="thongTin">
        <div class="tenTruong">
            Ảnh Sản Phẩm
        </div>
        <div class="inhap">
            <div>
                <asp:HiddenField ID="hdAnhSP" runat="server" />
                <asp:Literal ID="ltrAnhSP" runat="server"></asp:Literal>

            </div>
            <asp:FileUpload ID="flAnhSP" runat="server" />
        </div>
    </div>
    <div class="thongTin">
        
        <asp:Button CssClass="them" ID="btnThemPro" runat="server" Text="Thêm Mới" OnClick="btnThemPro_Click" 
             />
       
        <asp:Button CssClass="huy" ID="btnHuyPro" runat="server" Text="Hủy" OnClick="btnHuyPro_Click" CausesValidation="false"
            />
    </div>
