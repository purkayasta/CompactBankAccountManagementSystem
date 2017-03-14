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
    public partial class Report : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void pick_fromDate_Click(object sender, EventArgs e)
        {
            fromCalender.Visible = !fromCalender.Visible;
        }

        protected void pick_toDate_Click(object sender, EventArgs e)
        {
            toCalender.Visible = !toCalender.Visible;
        }

        protected void toCalender_SelectionChanged(object sender, EventArgs e)
        {
            toDateBox.Text = toCalender.SelectedDate.ToString("yyyy-MM-dd");
            toCalender.Visible = false;
        }
        protected void fromCalender_SelectionChanged(object sender, EventArgs e)
        {
            fromdateBox.Text = fromCalender.SelectedDate.ToString("yyyy-MM-dd");
            fromCalender.Visible = false;
        }

        protected void getReport_Click(object sender, EventArgs e)
        {
            this.generateReport();
        }

        protected void generateReport()
        {
            string sql = "select * from users_transaction_info where transaction_date >= '" + fromdateBox.Text + "' AND transaction_date <= '" + toDateBox.Text + "' ";
            string connectionString = ConfigurationManager.ConnectionStrings["DBC"].ConnectionString;
            SqlConnection connect = new SqlConnection(connectionString);
            SqlCommand cmd = new SqlCommand(sql, connect);
            connect.Open();
            try
            { 
                SqlDataReader reader = cmd.ExecuteReader();
                GridView1.DataSource = reader;
                GridView1.DataBind();
                
            }
            catch (Exception ex)
            {
                Response.Write(ex+ "<script>alert('System Error')</script>");
            }
            connect.Close();
        }

    }
}