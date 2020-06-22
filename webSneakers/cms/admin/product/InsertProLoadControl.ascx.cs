using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using webSneakers.AppCode.Database;

namespace webSneakers.cms.admin.product.quanli
{
    public partial class InsertProLoadControl : System.Web.UI.UserControl
    {
        private string product = "";
        private string mahang = "";
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Request.QueryString["product"] != null)
            {
                product = Request.QueryString["product"];
            }
            if(Request.QueryString["mahang"] != null)
            {
                mahang = Request.QueryString["mahang"];
            }
            if (!IsPostBack)
            {
                hienThongTinSP(mahang);
            }
        }

        private void hienThongTinSP(string mahang)
        {
            if (product == "edit")
            {
                btnThemPro.Text = "Chỉnh Sửa";
                DataTable data = SanPham.infoByMaSP(mahang);
                if(data.Rows.Count > 0)
                {
                    tbMaHang.ReadOnly = true;
                    tbMaHang.Text = data.Rows[0]["sMaHang"].ToString();
                    tbTenGiay.Text = data.Rows[0]["sTenHang"].ToString();
                    tbSL.Text = data.Rows[0]["iSoLuong"].ToString();
                    //tbHang.SelectedValue = data.Rows[0]["sThuongHieu"].ToString();
                    tbHang.ClearSelection();
                    string hang = data.Rows[0]["sThuongHieu"].ToString().Trim();
                    tbHang.Items.FindByValue(hang).Selected = true;
                    tbGia.Text = data.Rows[0]["fGia"].ToString();
                    ltrAnhSP.Text = "<img class='anhSP' src='/Assets/image/SanPham/" + data.Rows[0]["sAnh"] + @"'  alt='das'></td>";
                    hdAnhSP.Value = data.Rows[0]["sAnh"].ToString();
                }    
            }
            else
            {
                btnThemPro.Text = "Thêm Mới";
              
            }
        }

        protected void btnThemPro_Click(object sender, EventArgs e)
        {
            if(product== "insert")
            {
                if (flAnhSP.FileContent.Length > 0)
                {
                    if (flAnhSP.FileName.EndsWith(".jpg") || flAnhSP.FileName.EndsWith(".png") || flAnhSP.FileName.EndsWith(".gif"))
                    {
                        flAnhSP.SaveAs(Server.MapPath("Assets/image/SanPham/") + flAnhSP.FileName);
                    }
                }
                webSneakers.AppCode.Database.SanPham.sp_Inser(tbMaHang.Text, tbTenGiay.Text, tbSL.Text, tbHang.SelectedValue, tbGia.Text, flAnhSP.FileName);
                ltrThongBao.Text = "<div class='ltrThongBao'>Đã thêm sản phẩm " + tbTenGiay.Text + "</div>";
                Response.Redirect("Admin.aspx?modul=product");
            }
            else
            {
                string anhSPNew = "";
                if (flAnhSP.FileContent.Length > 0)
                {
                    if (flAnhSP.FileName.EndsWith(".jpg") || flAnhSP.FileName.EndsWith(".png") || flAnhSP.FileName.EndsWith(".gif"))
                    {
                        flAnhSP.SaveAs(Server.MapPath("Assets/image/SanPham/") + flAnhSP.FileName);
                        anhSPNew = flAnhSP.FileName;
                    }
                }
                if(anhSPNew == "")
                {
                    anhSPNew = hdAnhSP.Value;
                }

                SanPham.sp_Update(mahang, tbTenGiay.Text, tbSL.Text, tbHang.SelectedValue, tbGia.Text, anhSPNew);
                //                ltrThongBao.Text = "<s>Đã cập nhật sản phẩm " + tbTenGiay.Text + "</div>";
                //Response.Write("<script>alert('Đã cập nhật sản phẩm')</script>");
                //Response.Redirect("Admin.aspx?modul=product");
                ScriptManager.RegisterStartupScript(this, this.GetType(), "redirect",
                    "alert('Đã cập nhật sản phẩm!'); window.location='" +
                    Request.ApplicationPath + "Admin.aspx?modul=product';", true);

            }
            
        }

        protected void btnHuyPro_Click(object sender, EventArgs e)
        {
            Response.Redirect("Admin.aspx?modul=product");
        }
    }
}