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
    public partial class Transfer : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void transfer_Button_Click(object sender, EventArgs e)
        {
            this.transfer();
        }


        protected void transfer()
        {
            string s = Session["user"].ToString();
            try
            {
                //Connection String
                string connectionString = ConfigurationManager.ConnectionStrings["DBC"].ConnectionString;
                SqlConnection connect = new SqlConnection(connectionString);

                //Receiver Account Check Wheather it exists or not
                string checkReciver = "select acc_balance from users Where acc_no ='" +s+ "' ;";

                SqlCommand check = new SqlCommand(checkReciver, connect);

                connect.Open();

                //Select Commnad Use   

                SqlDataReader dr = check.ExecuteReader();


                if (dr.Read())
                {
                    connect.Close();
                    //Update Logic Start Here: 

                    string fromsql = "update users set acc_balance-='" + amount_box.Text + "' Where (acc_no='" + s + "') And (acc_balance >'" + amount_box.Text + "');";

                    string tosql = "update users set acc_balance+='" + amount_box.Text + "' Where (acc_no='" + to_acc_box.Text + "');";



                    //From Sql
                    SqlCommand cmd = new SqlCommand(fromsql, connect);

                    //To Sql
                    SqlCommand cmd2 = new SqlCommand(tosql, connect);

                    connect.Open();

                    int n = cmd.ExecuteNonQuery();




                    if (n == 1)
                    {
                        int n2 = cmd2.ExecuteNonQuery();

                        if (n2 == 1)
                        {
                            Response.Write("<script>alert('Transfered Successfully')</script>");
                        }
                        else
                        {
                            Response.Write("<script>alert('Problem in Receiver Account, Please Try Again later')</script>");
                        }

                    }
                    else
                    {
                        Response.Write("<script>alert('Problem In Sender Account, Check Out First')</script>");
                    }
                    connect.Close();
                    //End Of Update Logic

                }
                //End of CheckReciver Logic
                else
                {
                    Response.Write("<script>alert('Invalid Receiver')</script>");
                }
            }
            catch (Exception ex)
            {
                Response.Write(ex + "<script>alert('Problem Occured')</script>");
            }

            this.transactionInfo();
        }

        protected void transactionInfo()
        {
            string s = Session["user"].ToString();
            string currentTime = DateTime.Now.ToString();
            string t = "Transfer";

            try
            {
                string newsql = "insert into users_transaction_info Values ('" + s + "','" + to_acc_box.Text + "','" + amount_box.Text + "','" + t + "','" + currentTime + "') ";

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