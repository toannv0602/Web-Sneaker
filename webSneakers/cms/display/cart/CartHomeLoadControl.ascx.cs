using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace webSneakers.cms.display.cart
{
    public partial class CartLoadControl : System.Web.UI.UserControl
    {
        string nameClient = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["KhachHang"] != null)
            {
                nameClient = Session["KhachHang"].ToString();
                LoadCart();
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "redirect",
                   "alert('Mời bạn đăng nhập để xem giỏ hàng!'); window.location='" +
                   Request.ApplicationPath + "Login.aspx';", true);
            }
        }

        private void LoadCart()
        {
            int d = 0;
            int sum = 0;
            int moneyPro = 0;
            ArrayList listCart = (ArrayList)Application["cart"];
            if (checkCart())
            {
                foreach (AppCode.DTO.Cart cart in listCart)
                {
                    if (cart.UserName.Equals(nameClient))
                    {
                        moneyPro = cart.DonGia * cart.SoLuong;
                        sum += moneyPro;
                        ltrCartPro.Text +=
                            @"<div class='row row-detail boder-bt'>
                                <div class='list-pro d-flext' style='align-items: center;'>
                                <div class='img-cart'>
                                    <img src = '/Assets/image/SanPham/"+cart.LinkAnh+@"' alt='' class='img-pro'>
                                </div>
                                <span class='pro-name'>"+cart.NamePro+@"</span>
                            </div>
                            <div class='list-info text-center'>
                                <span>"+ String.Format("{0:0,0 đ}", cart.DonGia)+@"</span>
                            </div>
                            <div class='list-info text-center'>
                                <input type = 'number' name='solg' value='"+cart.SoLuong+@"' id='slGio' readonly>
                            </div>
                            <div class='list-info text-center'>
                                <span>"+ String.Format("{0:0,0 đ}", moneyPro) + @"</span>
                            </div>
                            <div class='list-info text-center'>
                                 <a href='Default.aspx?modul=cart&cart=delete&index=" + d+ @"' onclick='return confirmDeleteCart()' style='color: red;'>
                                    <i class='fa fa-times'></i>
                                </a>
                            </div>
                        </div>";
                        
                    }
                    d++;
                }
                ltrSumMoney.Text = String.Format("{0:0,0 đ}", sum);
            }
            else
            {
                Response.Redirect("Default.aspx?modul=cart&cart=blank");
            }
        }

        private bool checkCart()
        {
            int d = 0;
            
            ArrayList listCart = (ArrayList)Application["cart"];
            foreach (AppCode.DTO.Cart cart in listCart)
            {
                if (cart.UserName.Equals(nameClient))
                {
                    d++;
                }
            }
            return d > 0;
        }

        protected void btnOrderClick(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx?modul=cart&cart=success");
        }
    }
}