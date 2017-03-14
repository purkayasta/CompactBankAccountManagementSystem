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
    public partial class Summary : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] != null)
            {
                string s = Session["user"].ToString();
                string sql = "select * from users_transaction_info where from_acc='"+s+"' ";
                string connectionString = ConfigurationManager.ConnectionStrings["DBC"].ConnectionString;
                SqlConnection connect = new SqlConnection(connectionString);
                SqlCommand cmd = new SqlCommand(sql, connect);
                connect.Open();
                try
                {
                    SqlDataReader reader = cmd.ExecuteReader();
                    userSummary_gridView.DataSource = reader;
                    userSummary_gridView.DataBind();
                }
                catch (Exception ex)
                {
                    Response.Write(ex + "<script>alert('System Error')</script>");
                }
                connect.Close();
            }
            else
            {

            }
        }
    }
}