using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace webSneakers.AppCode.Database
{
    public class AccountKH
    {

        public static void Account_Delete(string sNameLogin)
        {
            SqlCommand cmd = new SqlCommand("delAccount");
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@nameLogin", sNameLogin);
            SQLDatabase.ExecuteNoneQuery(cmd);
        }

        public static void Account_Inser(string nameLogin, string matKhau, string hoTen, string gioiTinh, string diaChi,
            string email, string sdt)
        {
            SqlCommand cmd = new SqlCommand("insertAccount");
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@nameLogin", nameLogin);
            cmd.Parameters.AddWithValue("@matKhau", matKhau);
            cmd.Parameters.AddWithValue("@hoTen", hoTen);
            cmd.Parameters.AddWithValue("@gioiTinh", gioiTinh);
            cmd.Parameters.AddWithValue("@diaChi", diaChi);
            cmd.Parameters.AddWithValue("@email", email);
            cmd.Parameters.AddWithValue("@sdt", sdt);
            SQLDatabase.ExecuteNoneQuery(cmd);
        }

        public static void Account_Update(string nameLogin, string matKhau, string hoTen, string gioiTinh, string diaChi,
            string email, string sdt)
        {
            SqlCommand cmd = new SqlCommand("upAccount");
            cmd.Parameters.AddWithValue("@nameLogin", nameLogin);
            cmd.Parameters.AddWithValue("@matKhau", matKhau);
            cmd.Parameters.AddWithValue("@hoTen", hoTen);
            cmd.Parameters.AddWithValue("@gioiTinh", gioiTinh);
            cmd.Parameters.AddWithValue("@diaChi", diaChi);
            cmd.Parameters.AddWithValue("@email", email);
            cmd.Parameters.AddWithValue("@sdt", sdt);
            SQLDatabase.ExecuteNoneQuery(cmd);
        }



        public static DataTable infoAccount()
        {
            SqlCommand cmd = new SqlCommand("infoAccount");
            cmd.CommandType = CommandType.StoredProcedure;
            return SQLDatabase.GetData(cmd);
        }

        public static DataTable sortByName()
        {
            SqlCommand cmd = new SqlCommand("sortByNameKH");
            cmd.CommandType = CommandType.StoredProcedure;
            return SQLDatabase.GetData(cmd);
        }


        public static DataTable inforAccountNameLogin(string nameLogin)
        {
            SqlCommand cmd = new SqlCommand("infoAccount_by_logginName");
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@nameLogin", nameLogin);
            return SQLDatabase.GetData(cmd);
        }

        public static DataTable Login_Account(string nameLogin, string password)
        {
            SqlCommand cmd = new SqlCommand("loginKH");
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@nameLogin", nameLogin);
            cmd.Parameters.AddWithValue("@passWord", password);

            return SQLDatabase.GetData(cmd);
        }

        public static void Register_Account(string nameLogin, string password, string fullName, string gt,
            string diaChi, string email,int sdt)
        {
            SqlCommand cmd = new SqlCommand("insertAccount");
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@nameLogin", nameLogin);
            cmd.Parameters.AddWithValue("@matKhau", password);
            cmd.Parameters.AddWithValue("@hoTen", fullName);
            cmd.Parameters.AddWithValue("@gioiTinh", gt);
            cmd.Parameters.AddWithValue("@diaChi", diaChi);
            cmd.Parameters.AddWithValue("@email", email);
            cmd.Parameters.AddWithValue("@sdt", sdt);

            SQLDatabase.ExecuteNoneQuery(cmd);
        }
    }
}