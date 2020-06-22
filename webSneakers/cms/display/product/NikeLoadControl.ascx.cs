using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace webSneakers.cms.display.product
{
    public partial class NikeLoadControl : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                loadSanPham();
            }
        }

        private void loadSanPham()
        {
            DataTable tb = new DataTable();
            tb = AppCode.Database.SanPham.infoSPByHang("nike");
            string linkSp = "";
            for (int i = 0; i < tb.Rows.Count; i++)
            {
                ltrHang.Text = tb.Rows[i]["sThuongHieu"].ToString();
                linkSp = "Default.aspx?modul=product&product=detailpro&id=" + tb.Rows[i]["sMaHang"];
                ltrLoadPro.Text +=
                    @"<div class='col-3 text-center'>
                            <div class='product-entry''>
                            <a href = '" + linkSp + @"' >
                                <img src='/Assets/image/SanPham/" + tb.Rows[i]["sAnh"] + @"' class='img-pro' alt=''>
                            </a>
                            <div class='pro-info'>
                                <h2> <a href = '#' >" + tb.Rows[i]["sTenHang"] + @"</a></h2>
                                <span class='price'>" + String.Format("{0:0,0 đ}", tb.Rows[i]["fGia"]) + @"</span>
                            </div>
                        </div>
                    </div>";
            }
        }
    }
}