using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace webSneakers.AppCode.Database
{
    public class SanPham
    {
        public static void sp_Delete(string maMH)
        {
            SqlCommand cmd = new SqlCommand("delMatHang");
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@maMH", maMH);
            SQLDatabase.ExecuteNoneQuery(cmd);
        }

        public static void sp_Inser(string maMH, string tenHang, string sl, string thuongHieu,
            string gia,string anh)
        {
            SqlCommand cmd = new SqlCommand("insertMH");
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@maHang", maMH);
            cmd.Parameters.AddWithValue("@tenHang", tenHang);
            cmd.Parameters.AddWithValue("@soLuong", sl);
            cmd.Parameters.AddWithValue("@hang", thuongHieu);
            cmd.Parameters.AddWithValue("@gia", gia);
            cmd.Parameters.AddWithValue("@anh", anh);
            SQLDatabase.ExecuteNoneQuery(cmd);
        }

        public static void sp_Update(string maMH, string tenHang, string sl, string thuongHieu,
            string gia, string anh)
        {
            SqlCommand cmd = new SqlCommand("upMH");
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@maHang", maMH);
            cmd.Parameters.AddWithValue("@tenHang", tenHang);
            cmd.Parameters.AddWithValue("@soLuong", sl);
            cmd.Parameters.AddWithValue("@hang", thuongHieu);
            cmd.Parameters.AddWithValue("@gia", gia);
            cmd.Parameters.AddWithValue("@anh", anh);
            SQLDatabase.ExecuteNoneQuery(cmd);
        }

        public static DataTable infoByMaSP(string maMH)
        {
            SqlCommand cmd = new SqlCommand("infoMHByMaMH");
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@maMH", maMH);
            return SQLDatabase.GetData(cmd);
        }

        public static DataTable infoSP()
        {
            SqlCommand cmd = new SqlCommand("infoMatHang");
            cmd.CommandType = CommandType.StoredProcedure;
            return SQLDatabase.GetData(cmd);
        }

        public static DataTable infoSPByHang(string hang)
        {
            SqlCommand cmd = new SqlCommand("infoMHByHang");
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@hang", hang);
            return SQLDatabase.GetData(cmd);
        }

        public static DataTable sortByName()
        {
            SqlCommand cmd = new SqlCommand("sortByName");
            cmd.CommandType = CommandType.StoredProcedure;
            return SQLDatabase.GetData(cmd);
        }
        public static DataTable sortByGiaTang()
        {
            SqlCommand cmd = new SqlCommand("sortByGiaTang");
            cmd.CommandType = CommandType.StoredProcedure;
            return SQLDatabase.GetData(cmd);
        }
        public static DataTable sortByGiaGiam()
        {
            SqlCommand cmd = new SqlCommand("sortByGiaGiam");
            cmd.CommandType = CommandType.StoredProcedure;
            return SQLDatabase.GetData(cmd);
        }
        public static DataTable sortBySLTang()
        {
            SqlCommand cmd = new SqlCommand("sortBySLTang");
            cmd.CommandType = CommandType.StoredProcedure;
            return SQLDatabase.GetData(cmd);
        }
        public static DataTable sortBySLGiam()
        {
            SqlCommand cmd = new SqlCommand("sortBySLGiam");
            cmd.CommandType = CommandType.StoredProcedure;
            return SQLDatabase.GetData(cmd);
        }
    }
}
