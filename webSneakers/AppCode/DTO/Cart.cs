using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace webSneakers.AppCode.DTO
{
    public class Cart
    {
        // ctrl + R + E
        string maMH;
        string userName;
        string linkAnh;
        string namePro;
        int donGia;
        int soLuong;

        public Cart (string maMH, string userName, string linkAnh, string namePro, int donGia, int soLuong)
        {
            this.MaMH = maMH;
            this.UserName = userName;
            this.LinkAnh = linkAnh;
            this.NamePro = namePro;
            this.DonGia = donGia;
            this.SoLuong = soLuong;
        }

        public string UserName { get => userName; set => userName = value; }
        public string MaMH { get => maMH; set => maMH = value; }
        public int SoLuong { get => soLuong; set => soLuong = value; }
        public string LinkAnh { get => linkAnh; set => linkAnh = value; }
        public string NamePro { get => namePro; set => namePro = value; }
        public int DonGia { get => donGia; set => donGia = value; }
    }
}