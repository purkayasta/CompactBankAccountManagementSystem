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
    public partial class changePass : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void changePass_button_Click(object sender, EventArgs e)
        {

            string s = Session["user"].ToString();

            try
            {
                

                string newsql = " update users set acc_pass='"+change_box.Text+"' where acc_no='"+s+"' ";

                string connectionString = ConfigurationManager.ConnectionStrings["DBC"].ConnectionString;

                SqlConnection connect = new SqlConnection(connectionString);

                SqlCommand cmd = new SqlCommand(newsql, connect);

                connect.Open();
                cmd.ExecuteNonQuery();

                connect.Close();
            }
            catch (Exception ex)
            {
                Response.Write(ex + "<script>alert('System Error')</script>");
            }


        }
    }
}