<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ProductLoadControl.ascx.cs" Inherits="webSneakers.cms.admin.product.WebUserControl1" %>



    <!--san pham-->
        <div class="content-product">
            <div class="container">
                <div class="row">
                    <div class="col-3">
                        <div class="list-category">
                            <h3>Thêm mới</h3>
                            <div class="list-category-menu">
                                <ul>
                                    <li><a href="Admin.aspx?modul=product&product=insert">
                                        <div class="icon"> <div class="fa fa-arrow-right"></div>
                                    </div>
                                    <div class="menu-content">Thêm mới sản phẩm</div>
                                    </a></li>
                                    
                                </ul>
                            </div>
                        </div>
                        <div class="list-category">
                            <h3>Thương Hiệu</h3>
                            
                            <div class="list-category-menu">
                                <ul>
                                    <li><a href="Admin.aspx?modul=product&product=nike">
                                        <div class="icon"> <div class="fa fa-arrow-right"></div>
                                    </div>
                                    <div class="menu-content">Nike</div>
                                    </a></li>
                                    <li><a href="Admin.aspx?modul=product&product=adidas">
                                        <div class="icon"> <div class="fa fa-arrow-right"></div>
                                    </div>
                                    <div class="menu-content">Adidas</div>
                                    </a></li>
                                    <li><a href="Admin.aspx?modul=product&product=balenciaga">
                                        <div class="icon"> <div class="fa fa-arrow-right"></div>
                                    </div>
                                    <div class="menu-content">Balenciaga</div>
                                    </a></li>
                                    <li><a href="Admin.aspx?modul=product&product=converse">
                                        <div class="icon"> <div class="fa fa-arrow-right"></div>
                                    </div>
                                    <div class="menu-content">Converse</div>
                                    </a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="list-sort">
                            <h3>Sắp Xếp</h3>
                            <div class="list-sort-menu list-menu">
                                <ul>
                                    <li><a href="#">
                                        <div class="icon"> <div class="fa fa-arrow-right"></div>
                                    </div>
                                    <div class="menu-content">Theo Tên Sản Phẩm</div>
                                    </a></li>
                                    <li><a href="#">
                                        <div class="icon"> <div class="fa fa-arrow-right"></div>
                                    </div>
                                    <div class="menu-content">Giá Tăng Dần</div>
                                    </a></li>
                                    <li><a href="#">
                                        <div class="icon"> <div class="fa fa-arrow-right"></div>
                                    </div>
                                    <div class="menu-content">Giá Giảm Dần</div>
                                    </a></li>
                                    <li><a href="#">
                                        <div class="icon"> <div class="fa fa-arrow-right"></div>
                                    </div>
                                    <div class="menu-content">Số lượng Tăng</div>
                                    </a></li>
                                    <li><a href="#">
                                        <div class="icon"> <div class="fa fa-arrow-right"></div>
                                    </div>
                                    <div class="menu-content">Số lượng Giảm</div>
                                    </a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-9">
                        <div class="row">
                        <div class="table-product">
                            <asp:PlaceHolder ID="plProductControl" runat="server"></asp:PlaceHolder>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>

<%--
   Admin.aspx?modul=product&product=sort&sort=byName
Admin.aspx?modul=product&product=sort&sort=giaTang
Admin.aspx?modul=product&product=sort&sort=giaGiam
Admin.aspx?modul=product&product=sort&sort=slTang
Admin.aspx?modul=product&product=sort&sort=slGiam
    --%>