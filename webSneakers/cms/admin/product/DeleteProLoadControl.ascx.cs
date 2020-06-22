using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using webSneakers.AppCode.Database;

namespace webSneakers.cms.admin.product
{
    public partial class DeleteProLoadControl : System.Web.UI.UserControl
    {
        string maHang = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if(Request.QueryString["mahang"] != null)
            {
                maHang = Request.QueryString["mahang"];
            }
            
            DeletePro(maHang);
            Response.Redirect("Admin.aspx?modul=product");
        }

        private void DeletePro(string maHang)
        {
            SanPham.sp_Delete(maHang);
            
            
        }
    }
}