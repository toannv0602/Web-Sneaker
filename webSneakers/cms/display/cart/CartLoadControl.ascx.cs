using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace webSneakers.cms.display.cart
{
    public partial class CartLoadControl1 : System.Web.UI.UserControl
    {
        string cart = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Request.QueryString["cart"]!= null)
            {
                cart = Request.QueryString["cart"];
                switch (cart)
                {
                    case "delete":
                        plCartControl.Controls.Add(LoadControl("DeleteCartLoadControl.ascx"));
                        break;
                    case "blank":
                        plCartControl.Controls.Add(LoadControl("BlankCartLoadControl.ascx"));
                        break;
                    case "success":
                        plCartControl.Controls.Add(LoadControl("SuccessCartLoadControl.ascx"));
                        break;
                }
            }
            else
            {
                plCartControl.Controls.Add(LoadControl("CartHomeLoadControl.ascx"));
            }
        }
    }
}