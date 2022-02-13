using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Bai18
{
    public partial class DoLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["statusLogin"] = false;
            string username = Request.Form["username"];
            string password = Request.Form["password"];

            bool isCheck = false;
            List<User> users = (List<User>)Application["users"];
            foreach (User user in users)
            {
                if (username.Equals(user.UserName)
                && password.Equals(user.Password))
                {
                    isCheck = true;
                }
            }

            if (isCheck)
            {
                Application["loginError"] = 0;
                Session["statusLogin"] = true;
                Session["username"] = username;
            }
            else
            {
                Application["loginError"] = (int)Application["loginError"] + 1;
            }
            Response.Redirect("Login.aspx");
        }
    }
}