using System.Configuration;
using System.Data.SqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Baikiemtra
{
    public partial class Xuly : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
string ten = Request.Form["ten"];
string mota = Request.Form["mota"];
string soluong = Request.Form["soluong"];
string gianhap = Request.Form["gianhap"];
string donvitinh = Request.Form["donvitinh"];
string loaihang = Request.Form["loaihang"];

string connectionString = ConfigurationManager.ConnectionStrings["connectionStrings"].ConnectionString;

SqlConnection connection = new SqlConnection (connectionString);
connection.Open();

string sql = "INSERT INTO tblMathang (sTen, sMota, iSoluong, mGianhap, sDonvitinh, FK_iLoaihangID) VALUES (@sTen, @sMota, @iSoluong, @mGianhap, @sDonvitinh, @FK_iLoaihangID)";
using (SqlCommand cmd = new SqlCommand (sql, connection)) {
    cmd.Parameters.AddWithValue ("@sTen", ten);
    cmd.Parameters.AddWithValue ("@sMota", mota);
    cmd.Parameters.AddWithValue ("@iSoluong", Convert.ToInt32(soluong));
    cmd.Parameters.AddWithValue ("@mGianhap", Convert.ToDouble(gianhap));
    cmd.Parameters.AddWithValue ("@sDonvitinh", donvitinh);
    cmd.Parameters.AddWithValue ("@FK_iLoaihangID", loaihang);
    cmd.ExecuteNonQuery ();
}
connection.Close();
}
        }
    }
