using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using webSneakers.AppCode.Database;

namespace webSneakers
{
    public partial class Login : System.Web.UI.Page
    {
        string userNameLg = "";
        string passWordLg = "";
        string userName = "";
        string password = "";
        string pwag = "";
        string fullName = "";
        string diaChi = "";
        string gioiTinh = "";
        string email = "";
        int sdt = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Mời bạn đăng nhập!');", true);
            Session["admin"] = null;
            Session["KhachHang"] = null;
            if (Request.Form.Get("unamelg") != null && Request.Form.Get("pswlg") != null)
            {
                this.userNameLg = Request.Form.Get("unamelg");
                this.passWordLg = Request.Form.Get("pswlg");
                checkAccount(userNameLg, passWordLg);
            }
            if(Request.Form.Get("uname") != null && Request.Form.Get("psw") != null)
            {
                this.userName = Request.Form.Get("uname");
                this.password = Request.Form.Get("psw");
                this.pwag = Request.Form.Get("pswag");
                this.fullName = Request.Form.Get("fullName");
                this.diaChi = Request.Form.Get("DiaChi");
                this.gioiTinh = Request.Form.Get("GioiTinh");
                this.email = Request.Form.Get("email");
                this.sdt = Int32.Parse(Request.Form.Get("phoneNumber"));
                registerClient(userName, password, fullName, diaChi, gioiTinh, email, sdt);
            }
        }

        private void registerClient(string userName, string password, string fullName, string diaChi, string gioiTinh, string email, int sdt)
        {
            //    Response.Write("<script>alert('email:"+email+"-"+"gt:"+gioiTinh+"')</script>");
            DataTable data = AppCode.Database.AccountKH.inforAccountNameLogin(userName);
            if(data.Rows.Count > 0 || userName == "admin")
            {
                Response.Write("<script>alert('Tên đăng nhập đã có người sử dụng! Mời chọn tên đăng nhập khác!')</script>");
            }
            //else if (this.password != pwag)
            //{
            //    Response.Write("<script>alert('Mat khau nhap lai khong khop!')</script>");
            //}
            else
            {
                AccountKH.Register_Account(userName, password, fullName, gioiTinh, diaChi, email, sdt);           
                Response.Write("<script>alert('Đăng kí thành công! Mời Đăng nhập')</script>");
            }
            

        }

        private void checkAccount(string userNameLg, string passWordLg)
        {
            if (userNameLg.Equals("admin"))
            {
                DataTable data = AppCode.Database.Admin.Login_Admin(userNameLg, passWordLg);
                if(data.Rows.Count > 0)
                {
                    Session["admin"] = userNameLg;
                    Response.Redirect("Admin.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Sai tên tài khoản hoặc mật khẩu')</script>");
                }
            }
            else
            {

                DataTable dataKH = AccountKH.Login_Account(userNameLg, passWordLg);
                if (dataKH.Rows.Count > 0)
                {
                    
                    Session["KhachHang"] = userNameLg.ToString();
                    Response.Redirect("Default.aspx");
                }
                else
                {
                    
                    Response.Write("<script>alert('Sai tên tài khoản hoặc mật khẩu: "+userNameLg+"-"+passWordLg+"')</script>");
                }
            }
            
        }

    }
}