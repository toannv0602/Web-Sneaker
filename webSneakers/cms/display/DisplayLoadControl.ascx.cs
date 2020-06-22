using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace webSneakers.cms.display
{
    public partial class DisplayLoadControl : System.Web.UI.UserControl
    {
        string modul = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["modul"] != null)
            {
                modul = Request.QueryString["modul"];
            }
            else
            {
                plLoadControl.Controls.Add(LoadControl("home/HomeLoadControl.ascx"));
            }

            switch (modul)
            {
                case "cart":
                    plLoadControl.Controls.Add(LoadControl("cart/CartLoadControl.ascx"));
                    break;
                case "product":
                    plLoadControl.Controls.Add(LoadControl("product/ProductLoadControl.ascx"));
                    break;
                case "infor":
                    plLoadControl.Controls.Add(LoadControl("infor/InforLoadCotrol.ascx"));
                    break;
                case "contact":
                    plLoadControl.Controls.Add(LoadControl("contact/ContactLoadControl.ascx"));
                    break;
                case "allProduct":
                    plLoadControl.Controls.Add(LoadControl("home/AllProductLoadControl.ascx"));
                    break;
            }
        }
    }
}