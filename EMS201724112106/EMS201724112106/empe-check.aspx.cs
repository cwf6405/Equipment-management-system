using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EMS201724112106
{
    public partial class empe_check : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Usernum"] == null)
            {
                Response.Redirect("login.aspx");  //如果没有人登录，跳转到登录页面上
            }
            Label1.Text = Session["Username"].ToString();
        }

        protected void GridView1_RowCreated(object sender, GridViewRowEventArgs e)
        {
            e.Row.Cells[1].Visible = false;     //隐藏密码列的数据
        }

        protected void GridView2_RowCreated(object sender, GridViewRowEventArgs e)
        {
            e.Row.Cells[1].Visible = false;   //隐藏密码列的数据
        }

        protected void GridView3_RowCreated(object sender, GridViewRowEventArgs e)
        {
            e.Row.Cells[1].Visible = false;  //隐藏密码列的数据
        }
    }
}