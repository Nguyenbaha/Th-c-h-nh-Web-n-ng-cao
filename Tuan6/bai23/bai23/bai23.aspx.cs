using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace bai23
{
    public partial class bai23 : System.Web.UI.Page
    {
        string sCnnStr = @"Data Source=DESKTOP-J0VICPA;Initial Catalog=Bai23;Integrated Security=True";
        SqlConnection cnn;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataTable dt;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                cnn = new SqlConnection(sCnnStr);
                cmd = new SqlCommand("sp_getHangsanxuat", cnn);
                cmd.CommandType = CommandType.StoredProcedure;
                da = new SqlDataAdapter(cmd);
                dt = new DataTable();
                da.Fill(dt);
                ddlhang.Items.Clear();
                ddlhang.Items.Add(new ListItem("Tất cả", "0"));
                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    ddlhang.Items.Add(new ListItem(dt.Rows[i]["sTenhang"].ToString(), dt.Rows[i]["PK_iHangsanxuat"].ToString()));
                }
                loadsanpham();
            }
        }
        private void loadsanpham()
        {
            cnn = new SqlConnection(sCnnStr);
            cmd = new SqlCommand("sp_getDienthoai", cnn);
            cmd.CommandType = CommandType.StoredProcedure;
            da = new SqlDataAdapter(cmd);
            dt = new DataTable();
            da.Fill(dt);
            lv.DataSource = dt;
            lv.DataBind();
        }
        protected void tim_Click(object sender, EventArgs e)
        {
            cnn = new SqlConnection(sCnnStr);
            cmd = new SqlCommand("sp_getDsHangdienthoai", cnn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@hang", int.Parse(ddlhang.SelectedValue));
            cmd.Parameters.AddWithValue("@giadttu", int.Parse(Giatu.Text));
            cmd.Parameters.AddWithValue("@giadtden", int.Parse(Giaden.Text));
            da = new SqlDataAdapter(cmd);
            dt = new DataTable();
            da.Fill(dt);
            lv.DataSource = dt;
            lv.DataBind();
        }
        protected void DataPager1_PreRender(object sender, EventArgs e)
        {
            String giaMin = Giatu.Text.ToString();
            String giaMax = Giaden.Text.ToString();
            if (giaMin.Equals("") && giaMax.Equals(""))
            {
                loadsanpham();
            }
            else
            {
                cnn = new SqlConnection(sCnnStr);
                cmd = new SqlCommand("sp_getDsHangdienthoai", cnn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@hang", int.Parse(ddlhang.SelectedValue));
                cmd.Parameters.AddWithValue("@giadttu", int.Parse(Giatu.Text));
                cmd.Parameters.AddWithValue("@giadtden", int.Parse(Giaden.Text));
                da = new SqlDataAdapter(cmd);
                dt = new DataTable();
                da.Fill(dt);
                lv.DataSource = dt;
                lv.DataBind();
            }
        }

        protected void lv_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}