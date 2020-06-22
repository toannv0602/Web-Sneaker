using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace webSneakers.cms.admin.account
{
    public partial class AccountLoadControl : System.Web.UI.UserControl
    {
        public string ac = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Request.QueryString["account"]!= null)
            {
                ac = Request.QueryString["account"];
                switch (ac)
                {
                    case "admin":
                        plAccountControl.Controls.Add(LoadControl("AdminLoadControl.ascx"));
                        break;

                    case "client":
                        plAccountControl.Controls.Add(LoadControl("ClientLoadControl.ascx"));
                        break;

                    case "delete":
                        plAccountControl.Controls.Add(LoadControl("DeleteAccountLoadControl.ascx"));
                        break;
                    case "sortName":
                        plAccountControl.Controls.Add(LoadControl("AccountSortLoadControl.ascx"));
                        break;
                }
            }
            else { plAccountControl.Controls.Add(LoadControl("ClientLoadControl.ascx")); }

        }
    }
}