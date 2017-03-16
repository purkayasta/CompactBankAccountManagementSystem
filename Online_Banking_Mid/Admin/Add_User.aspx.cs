using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;

namespace Online_Banking_Mid.Admin
{
    public partial class Add_User : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void add_account_box_Click(object sender, EventArgs e)
        {
            this.add();
        }

        protected void add()
        {
            string currentTime = DateTime.Now.ToString();

            

            if (user_pic_upload.HasFile)
            {
                string extention = Path.GetExtension(user_pic_upload.FileName);

                if (extention == ".jpg" || extention == ".png")
                {


                    string name = user_pic_upload.FileName;

                    user_pic_upload.PostedFile.SaveAs(Server.MapPath(".") + "//Pictures//" + name );

                    string userpicture = "~/Admin/Pictures/" + name.ToString();



                    string sql = "INSERT into users Values ('" + acc_number_box.Text + "','" + acc_name_box.Text + "','" + acc_pass_box.Text + "','" + userpicture + "','" + currentTime.ToString() + "','')";

                    string connectionString = ConfigurationManager.ConnectionStrings["DBC"].ConnectionString;

                    SqlConnection connect = new SqlConnection(connectionString);
                    SqlCommand cmd = new SqlCommand(sql, connect);

                    connect.Open();

                    try
                    {
                        int n = cmd.ExecuteNonQuery();

                        if (n == 1)
                        {
                            connect.Close();
                            Response.Write("<script>alert('Account Added!!')</script>");
                        }
                        else
                        {
                            Response.Write("<script>alert('Not Added!')</script>");
                        }
                    }
                    catch (Exception ex)
                    {
                        Response.Write("<script>alert('Duplicate Account Found')</script>");

                    }





                }
                else
                {
                    Response.Write("<script>alert('Upload Only JPG or PNG Format Image File')</script>");
                }
                
                
            }
            else
            {

            }
        }
    }
}
