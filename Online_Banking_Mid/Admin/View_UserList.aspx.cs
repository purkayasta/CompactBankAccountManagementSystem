using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_Banking_Mid.Admin
{
    public partial class edit_Users : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        protected void Page_PreRender(object sender, EventArgs e)
        {
            if (GridView1.SelectedRow != null)
            {
                Label1.Visible = true;
                DetailsView1.Visible = true;
            }
            else
            {
                Label1.Visible = false;
                DetailsView1.Visible = false;
            }
            
        }




    }
}
