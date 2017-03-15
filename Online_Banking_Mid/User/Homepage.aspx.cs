using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;


namespace Online_Banking_Mid.User
{
    public partial class Homepage1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.LoadData();
            
        }
        protected void LoadData()
        {

            if (Session["user"]!= null)
            {
                string us = Session["user"].ToString();

                string newsql = "select * from users where acc_no = '" + us + "' ";

                string connectionString = ConfigurationManager.ConnectionStrings["DBC"].ConnectionString;

                SqlConnection connect = new SqlConnection(connectionString);

                SqlDataAdapter sda = new SqlDataAdapter(newsql, connect);

                DataTable dataTable = new DataTable();

                sda.Fill(dataTable);

                DetailsView1.DataSource = dataTable;
                DetailsView1.DataBind();
            }

            

        }
    }
}