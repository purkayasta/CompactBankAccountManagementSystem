using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_Banking_Mid
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void login_button_Click(object sender, EventArgs e)
        {
            try
            {
                string sql = "select * from admins_table Where user_name='" + user_name.Text + "' and user_pass='" + user_pass.Text + "' ";
                string sql2 = "select * from users Where acc_no= '"+user_name.Text+"' and acc_pass= '"+user_pass.Text+"' ";

                string connectionString = ConfigurationManager.ConnectionStrings["DBC"].ConnectionString;
                SqlConnection conn = new SqlConnection(connectionString);
                conn.Open();

                SqlCommand cmd = new SqlCommand(sql, conn);
                SqlCommand cmd2 = new SqlCommand(sql2, conn);

                SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                SqlDataAdapter adapter2 = new SqlDataAdapter(cmd2);

                DataTable dataTable = new DataTable();
                DataTable dataTable2 = new DataTable();

                adapter.Fill(dataTable);
                adapter2.Fill(dataTable2);

                if (dataTable.Rows.Count.ToString() == "1")
                {
                    Session["user"] = user_name.Text;
                    Response.Redirect("~/Admin/HomeDash.aspx");
                }
                else if (dataTable2.Rows.Count.ToString() == "1")
                {
                    Session["user"] = user_name.Text;
                    Response.Redirect("~/User/Homepage.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Invalid Username/Password');</script>");
                    user_name.Focus();
                }
                conn.Close();
            }
            catch (Exception ex)
            {
                Response.Write(ex+"<script>alert('Problem in system');</script>");
                //Response.Redirect("~/Login.aspx");
            }
        }
    }
}