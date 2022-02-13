using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace Bai18
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int count_error = Convert.ToInt32(WebConfigurationManager.AppSettings["Kerror"]);
            string time = WebConfigurationManager.AppSettings["timeBack"];
              
            // xử lý cho đăng nhập sai 
            int count = (int)Application["loginError"];
            if (count > 0 && count < count_error)
            {
                lblNotification.InnerText = "Đăng nhập sai lần : " + count + "/" + (count_error - 1) + " !";
                lblNotification.Attributes.Add("color", "red");
            }
            if (count >= count_error)
            {
                text1.InnerText = "Đăng nhập lại sau: ";
                timerLabel.InnerText = time;
                login.Style.Add("visibility", "hidden");
            }

            if ((bool)Session["statusLogin"])
            {
                info.Style.Add("display", "block");

                List<String> histories = (List<String>)Session["history_login"];
                string str = ". { username : " + Session["username"] + " & " + "time : " + DateTime.Now.ToString("dd/MM/yyyy hh:mm:ss") + "}";
                histories.Add(str);
                Session["history_login"] = histories;

                foreach (string st in histories)
                {
                    info_user.Controls.Add(optionTag((histories.IndexOf(st) + 1) + st));
                }
            }
        }

        public HtmlContainerControl optionTag(String content)
        {
            HtmlContainerControl p = (HtmlContainerControl)new HtmlGenericControl("p");
            p.InnerText = content;
            return p;
        }
    }
}