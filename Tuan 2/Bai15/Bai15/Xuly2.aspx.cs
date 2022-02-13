using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Bai15
{
    public partial class Xuly2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string Ten = Request.QueryString["hoten"];
            string NS = Request.QueryString["ngaysinh"];
            string GT = Request.QueryString["gioitinh"];
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