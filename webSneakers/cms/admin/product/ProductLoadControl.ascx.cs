using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace webSneakers.cms.admin.product
{
    public partial class WebUserControl1 : System.Web.UI.UserControl
    {
        private string pro = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Request.QueryString["product"] != null)
            {
                pro = Request.QueryString["product"];
                switch (pro)
                        {
                            case "nike":
                                plProductControl.Controls.Add(LoadControl("NikeLoadControl.ascx"));
                                break;

                            case "balenciaga":
                                plProductControl.Controls.Add(LoadControl("BalenciagaLoadControl.ascx"));
                                break;

                            case "adidas":
                                plProductControl.Controls.Add(LoadControl("AdidasLoadControl.ascx"));
                                break;
                            case "converse":
                                plProductControl.Controls.Add(LoadControl("ConverseLoadControl.ascx"));
                                break;
                            case "insert":
                            case "edit":
                                plProductControl.Controls.Add(LoadControl("InsertProLoadControl.ascx"));
                                break;
                            case "delete":
                                plProductControl.Controls.Add(LoadControl("DeleteProLoadControl.ascx"));
                                break;
                            case "sort":
                                plProductControl.Controls.Add(LoadControl("ProSortLoadControl.ascx"));
                                break;

                }
                   
            }
            else
            {
                plProductControl.Controls.Add(LoadControl("HomeProLoadControl.ascx"));
            }

        }
    }
}