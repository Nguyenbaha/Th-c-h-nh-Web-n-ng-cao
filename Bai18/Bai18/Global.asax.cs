using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace Bai18
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {
            Application["loginError"] = 0;
            Application["timeError"] = "";
            Application["users"] = new List<User>() {
                new User() {UserName = "nguyenbaha1", Password = "123456"},
                new User() {UserName = "nguyenbaha2", Password = "123456"},
                new User() {UserName = "nguyenbaha3", Password = "123456"},
                new User() {UserName = "nguyenbaha4", Password = "123456"},
                new User() {UserName = "nguyenbaha5", Password = "123456"},
                new User() {UserName = "nguyenbaha6", Password = "123456"},
                new User() {UserName = "nguyenbaha7", Password = "123456"},
                new User() {UserName = "nguyenbaha8", Password = "123456"}
            };
        }

        protected void Session_Start(object sender, EventArgs e)
        {
            Session["statusLogin"] = false;
            Session["username"] = "";
            Session["history_login"] = new List<String>();
        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {

        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}