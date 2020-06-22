using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace webSneakers.cms.admin
{
    public partial class AdminControl : System.Web.UI.UserControl
    {
        string modul = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Request.QueryString["modul"]!= null)
            {
                modul = Request.QueryString["modul"];
            }
            else
            {
                plAdminLoadControl.Controls.Add(LoadControl("home/HomeLoadControl.ascx"));
            }

            switch (modul)
            {
                case "product":
                    plAdminLoadControl.Controls.Add(LoadControl("product/ProductLoadControl.ascx"));
                    break;

                case "account":
                    plAdminLoadControl.Controls.Add(LoadControl("account/AccountLoadControl.ascx"));
                    break;

                case "infor":
                    plAdminLoadControl.Controls.Add(LoadControl("infor/InforLoadCotrol.ascx"));
                    break;
                case "contact":
                    plAdminLoadControl.Controls.Add(LoadControl("contact/ContactLoadControl.ascx"));
                    break;
                case "insert":
                    plAdminLoadControl.Controls.Add(LoadControl("quanli/InsertProLoadControl.ascx"));
                    break;
            }
 //           Response.Write(modul);
        }
    }
}