using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Baitap17
{
    public class Sanpham
    {
        public int mahang { get; set; }
        public string tenhang { get; set;}
        public float dongia { get; set; }
        public string hinhanh { get; set; }

        public Sanpham() { }

        public Sanpham(int mahang, string tenhang, float dongia, string hinhanh)
        {
            this.mahang = mahang;
            this.tenhang = tenhang;
            this.dongia = dongia;
            this.hinhanh = hinhanh;
        }

    }
}