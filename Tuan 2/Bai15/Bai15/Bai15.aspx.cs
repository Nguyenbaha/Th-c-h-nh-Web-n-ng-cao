using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Bai15
{
    public partial class Bai15 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)

            //<!--  code here -->
        {
            string Ten = Request.Form["hoten"];
            string NS = Request.Form["ngaysinh"];
            string GT = Request.Form["gioitinh"];
            Response.ContentType = "text/xml";
            string XML = "<?xml version=\"1.0\" encoding=\"UTF-8\"?>" + "<Bai15>" +
             "<Ten>" + Ten + "</Ten>" +
             "<Ngaysinh>" + NS + "</Ngaysinh>" +
             "<Gioitinh>" + GT + "</Gioitinh>" + "</Bai15>";
            Response.Write(XML);
            Response.End();
        }
    }
}