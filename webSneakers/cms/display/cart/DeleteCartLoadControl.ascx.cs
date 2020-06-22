using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace webSneakers.cms.display.cart
{
    public partial class DeleteCartLoadControl : System.Web.UI.UserControl
    {
        int index = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Request.QueryString["index"] != null)
            {
                index = Convert.ToInt32(Request.QueryString["index"]);
                deleteCartPro(index);
            }
        }

        private void deleteCartPro(int index)
        {
            ArrayList listCart = (ArrayList)Application["cart"];
            listCart.RemoveAt(index);
            Response.Redirect("Default.aspx?modul=cart");
        }
    }
}