using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace webSneakers.cms.display.product
{
    public partial class DetailProductLoadControl : System.Web.UI.UserControl
    {
        string id="";
        string linkAnh = "";
        int giaSP=0;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["id"] != null) id = Request.QueryString["id"];
            else
            {
                Response.Write("<script>alert('Mời bạn chọn sản phẩm!')</script>");
            }
            if (!IsPostBack)
            {
                LoadDetailProduct(id);
            }
        }

        private void LoadDetailProduct(string id)
        {
            int gia = 0;
            DataTable tb = new DataTable();
            tb = AppCode.Database.SanPham.infoByMaSP(id);
            if (tb.Rows.Count > 0)
            {
                ltrAnh.Text = @"<img src='/Assets/image/SanPham/" + tb.Rows[0]["sAnh"] + @"' alt='anh' class='img-pro'>";
                ltrHang.Text = tb.Rows[0]["sThuongHieu"].ToString();
                ltrTenSP.Text = tb.Rows[0]["sTenHang"].ToString();
                ltrGia.Text = String.Format("{0:0,0 đ}", tb.Rows[0]["fGia"]);
                Session["gia"] = Convert.ToInt32(tb.Rows[0]["fGia"].ToString());
                
            }
 
        }

        protected void btnAddCart_Click(object sender, EventArgs e)
        {
            if(Session["KhachHang"] != null)
            {
                addCart();
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Thêm giỏ hàng thành công!');", true);
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "redirect",
                    "alert('Mời bạn đăng nhập để thêm giỏ hàng!'); window.location='" +
                    Request.ApplicationPath + "Login.aspx';", true);
            }
        }

        protected void btnBuyNow_Click(object sender, EventArgs e)
        {
            if (Session["KhachHang"] != null)
            {
                addCart();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "redirect",
                    "alert('Thêm giỏ hàng thành công!'); window.location='" +
                    Request.ApplicationPath + "Default.aspx?modul=cart';", true);

            }
            else
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "redirect",
                    "alert('Mời bạn đăng nhập để thêm giỏ hàng!'); window.location='" +
                    Request.ApplicationPath + "Login.aspx';", true);
            }
        }

        public void addCart()
        {
            int gia = (int)Session["gia"];
            string tenSP = ltrTenSP.Text;
            linkAnh = Request.QueryString["anhSP"];
            string size = Request.Form.Get("size");
            int d = -1;
            int sl = Int32.Parse(Request.Form.Get("soluong"));
            ArrayList listCart = (ArrayList)Application["cart"];
            string userName = Session["KhachHang"].ToString();
            foreach (AppCode.DTO.Cart cart in listCart)
            {
                if (userName.Equals(cart.UserName) && id.Equals(cart.MaMH))
                {
                    sl += cart.SoLuong;
                    cart.SoLuong = sl;
                    d++;
                }
            }
            if (d == -1)
            {
                listCart.Add(new AppCode.DTO.Cart(id, userName, linkAnh, tenSP, gia, sl));
                
            }
            //ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Thêm giỏ hàng thành công!');", true);
            //Response.Write("<script>alert('ten: " + id + @" size: "
            //    + size + @" so luong: " + sl + @" anh: "
            //    + linkAnh + @"  gia: " + gia + @"  tensp: "
            //    + tenSP + @" ')</script>");
        }

        
    }
}