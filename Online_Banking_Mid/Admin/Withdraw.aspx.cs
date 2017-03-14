using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_Banking_Mid.Admin
{
    public partial class Withdraw : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void save_button_Click(object sender, EventArgs e)
        {
            this.withdraw();
            this.transactionInfo();
        }
        protected void withdraw()
        {
            try
            {
                string sql = "update users set acc_balance-='" + amount_no_box.Text + "' Where (acc_no='" + acc_no_box.Text + "') And (acc_balance >'" + amount_no_box.Text + "');";
                string connectionString = ConfigurationManager.ConnectionStrings["DBC"].ConnectionString;
                SqlConnection connect = new SqlConnection(connectionString);
                SqlCommand cmd = new SqlCommand(sql, connect);
                connect.Open();
                int n = cmd.ExecuteNonQuery();
                connect.Close();
                if (n == 1)
                {
                    Response.Write("<script>alert('Withdrawn Completed')</script>");
                }
                else
                {
                    Response.Write("<script>alert('Withdrawn Not Completed')</script>");
                }
            }
            catch (Exception ex)
            {
                Response.Write(ex + "<script>alert('System Error')</script>");
            }
        }

        protected void transactionInfo()
        {
            string currentTime = DateTime.Now.ToString();
            string s = "Withdraw";

            try
            {
                string newsql = "insert into users_transaction_info Values ('" + acc_no_box.Text + "','" + acc_no_box.Text + "','" + amount_no_box.Text + "','" + s + "','" + currentTime + "') ";
                string connectionString = ConfigurationManager.ConnectionStrings["DBC"].ConnectionString;
                SqlConnection connect = new SqlConnection(connectionString);
                SqlCommand cmd = new SqlCommand(newsql, connect);
                connect.Open();
                int n = cmd.ExecuteNonQuery();
                connect.Close();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('System Error')</script>");
            }
        }
    }
}