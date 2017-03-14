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
    public partial class Deposit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void save_button_Click(object sender, EventArgs e)
        {
            this.update();
            this.transaction();
        }
        protected void update()
        {
            
            try
            {
                string sql = "update users set acc_balance=acc_balance+'" + amount_no_box.Text + "' Where acc_no='" + acc_no_box.Text + "';";
                string connectionString = ConfigurationManager.ConnectionStrings["DBC"].ConnectionString;
                SqlConnection connect = new SqlConnection(connectionString);
                SqlCommand cmd = new SqlCommand(sql, connect);
                connect.Open();
                int n = cmd.ExecuteNonQuery();
                connect.Close();
                if (n == 1)
                {
                    Response.Write("<script>alert('Deposit Completed')</script>");

                    //Response.Redirect("~/Deposit.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Deposit Not Completed')</script>");
                    //Response.Redirect("~/Homepage.aspx");
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('System Error')</script>");
            }



            


        }

        protected void transaction()
        {
            //Transaction Info

            string currentTime = DateTime.Now.ToString();
            string s = "Deposit";

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