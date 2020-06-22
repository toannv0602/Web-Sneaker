using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace webSneakers
{
    public partial class Default : System.Web.UI.Page
    {
        string nameClient = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            int soluot = Convert.ToInt32(Application["soluottruycap"]);
            Application["soluottruycap"] = soluot + 1;
            int d = 0;
            if(Session["KhachHang"] != null)
            {
                nameClient = Session["KhachHang"].ToString();
                ltrHello.Text = @"Xin Chao: <b>" + nameClient + @"</b>";
                ltrInOut.Text = "Đăng Xuất";
                ltrInOutt.Text = "Đăng Xuất";
                ArrayList listCart = (ArrayList)Application["cart"];
                foreach(AppCode.DTO.Cart cart  in listCart)
                {
                    if (cart.UserName.Equals(nameClient))
                    {
                        d++;
                    }
                }
                ltrSLGio.Text = Convert.ToString(d);
                ltrSLGio1.Text= Convert.ToString(d);
            }
            else
            {
                ltrInOut.Text = "Đăng Nhập";
                ltrInOutt.Text = "Đăng Nhập";
            }
        }

        protected string danhDau(string tenModul)
        {
            string s = "";
            string modul = "";
            if (Request.QueryString["modul"] != null)
            {
                modul = Request.QueryString["modul"];
            }
            if (tenModul == modul)
            {
                s = "activemenungang";
            }
            return s;
        }
    }
}