using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using webSneakers.cms.admin.home;

namespace webSneakers
{
    public partial class Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
      
            if(Session["admin"]!= null && Session["admin"].ToString().Equals("admin"))
            {

            }
            else
            {
                Response.Redirect("Login.aspx");
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
            if(tenModul == modul)
            {
                s = "activemenungang";
            }
            return s;
        }
    }
}