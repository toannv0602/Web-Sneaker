using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace webSneakers.cms.admin.account.client
{
    public partial class ClientLoadControl : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                loadDSKhachHanh();
            }
            
        }

        private void loadDSKhachHanh()
        {
            DataTable tb = new DataTable();
            tb = webSneakers.AppCode.Database.AccountKH.infoAccount();
            for(int i=0; i<tb.Rows.Count; i++)
            {
                ltrThemKH.Text += @"
                                <tr>
                                    <td class=''>"+tb.Rows[i]["sTKKhachHang"] + @"</td>
                                    <td>" + tb.Rows[i]["sMatKhau"] + @"</td>
                                    <td>" + tb.Rows[i]["sHoTen"] + @"</td>
                                    <td>" + tb.Rows[i]["sGioiTinh"] + @"</td>
                                    <td>" + tb.Rows[i]["sDiaChi"] + @"</td>
                                    <td>" + tb.Rows[i]["sEmail"] + @"</td>
                                    <td>" + tb.Rows[i]["iSDT"] + @"</td>
                                    <td><a href='/Admin.aspx?modul=account&account=delete&tendangnhap=" + tb.Rows[i]["sTKKhachHang"] + @"'  onclick='return confirmDeleteAcc()' style='font-size: 30px;'><i class='fa fa-minus-square' style='color: red; '></i></a></button></td>
                                </tr>";
            }
        }
    }
}