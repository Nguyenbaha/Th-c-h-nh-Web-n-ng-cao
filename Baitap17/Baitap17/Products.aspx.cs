using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Baitap17
{
    public partial class Products : System.Web.UI.Page
    {
        public List<Sanpham> dsSanPham;

        protected void Page_Load(object sender, EventArgs e)
        {
            dsSanPham = (List<Sanpham>)Application["Sanpham"];   
        }

        protected void AddToCart_ServerClick(object sender, EventArgs e)
        {

        }
    }
}