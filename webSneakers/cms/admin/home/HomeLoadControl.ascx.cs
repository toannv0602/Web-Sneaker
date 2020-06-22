using System;
using System.Collections.Generic;
using System.Data;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace webSneakers.cms.admin.home
{
    public partial class HomeLoadControl : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int soLuot = Convert.ToInt32(Application["soluottruycap"]);
            ltrTruyCap.Text = soLuot.ToString();
            //CultureInfo cul = CultureInfo.GetCultureInfo("vi-VN");
            //double s = double.Parse(tongTien().ToString(), CultureInfo.InvariantCulture);
            //ltrTongTien.Text = s.ToString("#,###", cul.NumberFormat);
        }

        private float tongTien()
        {
            float s = 0;
            DataTable tb = new DataTable();
            tb = webSneakers.AppCode.Database.SanPham.infoSP();
            for (int i = 0; i < tb.Rows.Count; i++)
            {
                s += Convert.ToInt32(tb.Rows[i]["fGia"]);
            }
            return s;
        }
    }
}