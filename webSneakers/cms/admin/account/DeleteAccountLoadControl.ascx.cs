using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using webSneakers.AppCode.Database;

namespace webSneakers.cms.admin.account
{
    public partial class DeleteAccountLoadControl : System.Web.UI.UserControl
    {
        string tendangnhap = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if(Request.QueryString["tendangnhap"]!= null)
            {
                tendangnhap = Request.QueryString["tendangnhap"];
            }
            DeleteAccount(tendangnhap);
        }

        private void DeleteAccount(string tendangnhap)
        {
            AccountKH.Account_Delete(tendangnhap);
            Response.Redirect("/Admin.aspx?modul=account");
        }
    }
}