using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EMS201724112106
{
    public partial class CRUD : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Usernum"] == null)
            {
                Response.Redirect("login.aspx");
            }
            Label1.Text = Session["Username"].ToString();
        }
    }
}