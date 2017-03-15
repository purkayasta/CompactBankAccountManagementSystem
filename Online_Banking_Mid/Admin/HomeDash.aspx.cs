using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_Banking_Mid.Admin
{
    public partial class HomeDash : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void searchButton_Click(object sender, ImageClickEventArgs e)
        {
            string sql = "select acc_name,acc_no,acc_balance,acc_opening_date,acc_pass from users where (acc_name like '%' + @search + '%') ";
            string connectionString = ConfigurationManager.ConnectionStrings["DBC"].ConnectionString;
            SqlConnection connect = new SqlConnection(connectionString);
            SqlCommand cmd = new SqlCommand(sql, connect);
            
            cmd.Parameters.Add("@search", SqlDbType.VarChar).Value = search_box.Text;

            connect.Open();

            cmd.ExecuteNonQuery();

            SqlDataAdapter sda = new SqlDataAdapter();
            sda.SelectCommand = cmd;
            DataSet ds = new DataSet();
            sda.Fill(ds,"acc_name");
            GridView1.DataSource = ds;
            GridView1.DataBind();
            connect.Close();

        }

        protected void clear_search_Click(object sender, EventArgs e)
        {
            search_box.Text = "";
            GridView1.Visible = false;
        }
    }
}