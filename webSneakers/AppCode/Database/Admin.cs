using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace webSneakers.AppCode.Database
{
    public class Admin
    {
        public static void Admin_ChangePass(string nameLogin, string matKhau)
        {
            SqlCommand cmd = new SqlCommand("changePassAd");
            cmd.Parameters.AddWithValue("@nameLogin", nameLogin);
            cmd.Parameters.AddWithValue("@matKhau", matKhau);
            
            SQLDatabase.ExecuteNoneQuery(cmd);
        }

        public static DataTable Login_Admin(string nameLogin, string password)
        {
            SqlCommand cmd = new SqlCommand("loginAdmin");
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@nameLogin", nameLogin);
            cmd.Parameters.AddWithValue("@passWord", password);

            return SQLDatabase.GetData(cmd);
        } 
    }
}