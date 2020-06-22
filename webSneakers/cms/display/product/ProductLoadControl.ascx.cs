using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace webSneakers.cms.display.product
{
    public partial class ProductLoadControl : System.Web.UI.UserControl
    {
        private string pro = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["product"] != null)
            {
                pro = Request.QueryString["product"];
                switch (pro)
                {
                    case "nike":
                        plProControl.Controls.Add(LoadControl("NikeLoadControl.ascx"));
                        break;

                    case "balenciaga":
                        plProControl.Controls.Add(LoadControl("BalenciagaLoadControl.ascx"));
                        break;

                    case "adidas":
                        plProControl.Controls.Add(LoadControl("AdidasLoadControl.ascx"));
                        break;
                    case "converse":
                        plProControl.Controls.Add(LoadControl("ConverseLoadControl.ascx"));
                        break;
                    case "detailpro":
                        plProControl.Controls.Add(LoadControl("DetailProductLoadControl.ascx"));
                        break;
                }

            }
            else
            {
                plProControl.Controls.Add(LoadControl("NikeLoadControl.ascx"));
            }

        }
    }
}