using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Bai19
{
    public partial class Register : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            for (int i = 1; i <= 10; i++) ClassName.Items.Add(new ListItem("B" + i, i.ToString()));
        }
    }
}