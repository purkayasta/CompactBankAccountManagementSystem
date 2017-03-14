using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_Banking_Mid.User
{
    public partial class Homepage : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["user"] != null)
            {
                string userno= Session["user"].ToString();

                string sql = "select acc_name from users where acc_no = '"+userno+"' ";
                string connectionString = ConfigurationManager.ConnectionStrings["DBC"].ConnectionString;
                SqlConnection connect = new SqlConnection(connectionString);
                SqlCommand cmd = new SqlCommand(sql, connect);
                connect.Open();
                string s = (string) cmd.ExecuteScalar();
                connect.Close();
                userLabel.Text = s;

            }
            else
            {
                Response.Redirect("~/Login.aspx");
            }
        }
        
    }
}