using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Bai16
{
    public partial class SaveFile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpPostedFile file = Request.Files["selectedFile"];
            string folderName = Server.MapPath("~/App_Data");
            if ( !Directory.Exists(folderName))
            {
                Directory.CreateDirectory(folderName);
            }

            if (file != null && file.ContentLength > 0)
            {
                
                file.SaveAs(Path.Combine(Server.MapPath("~/App_Data"), Path.GetFileName(file.FileName)));
                Response.Redirect("FileExplorer.aspx");
            }

           

          

        }
      
    }
}