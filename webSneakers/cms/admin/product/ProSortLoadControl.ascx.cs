using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace webSneakers.cms.admin.product
{
    public partial class ProSortLoadControl : System.Web.UI.UserControl
    {
        private static string sort = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Request.QueryString["sort"] != null)
            {
                sort = Request.QueryString["sort"];
            }
            if (!IsPostBack)
            {
                loadSanPham();
            }
        }

        private void loadSanPham()
        {

            DataTable tb = new DataTable();
            switch (sort)
            {
                case "byName":
                    tb = webSneakers.AppCode.Database.SanPham.sortByName();
                    break;
                case "giaGiam":
                    tb = webSneakers.AppCode.Database.SanPham.sortByGiaGiam();
                    break;
                case "giaTang":
                    tb = webSneakers.AppCode.Database.SanPham.sortByGiaTang();
                    break;
                case "slTang":
                    tb = webSneakers.AppCode.Database.SanPham.sortBySLTang();
                    break;
                case "slGiam":
                    tb = webSneakers.AppCode.Database.SanPham.sortBySLGiam();
                    break;
            }
            
            for (int i = 0; i < tb.Rows.Count; i++)
            {
                //@ lay ca chuoi
                ltrThemDong.Text += @"<tr>
                                    <td class='set-img'>
                                        <img src='/Assets/image/SanPham/" + tb.Rows[i]["sAnh"] + @"'  alt='das'></td>
                                    <td>" + tb.Rows[i]["sMaHang"] + @"</td>
                                    <td>" + tb.Rows[i]["sTenHang"] + @"</td>
                                    <td>" + tb.Rows[i]["sThuongHieu"] + @"</td>
                                    <td>" + tb.Rows[i]["iSoLuong"] + @"</td>
                                    <td>" + String.Format("{0:0,0 đ}", tb.Rows[i]["fGia"]) + @"</td>
                                    <td><a href='/Admin.aspx?modul=product&product=edit&mahang=" + tb.Rows[i]["sMaHang"] + @"' style='font-size: 30px;'><i class='fa fa-edit' style='color: green; '></i></a></td>
                                    <td><a href='/Admin.aspx?modul=product&product=delete&mahang=" + tb.Rows[i]["sMaHang"] + @"'  onclick='return confirmDelete()' style='font-size: 30px;'><i class='fa fa-minus-square' style='color: red; '></i></a></td>
                                </tr>";
            }
        }
    }
}