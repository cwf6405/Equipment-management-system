using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EMS201724112106
{
    public partial class photo_check_em : System.Web.UI.Page
    {
        //连接数据库字符串
        string sqlconn = "Data Source=(LocalDB)\\MSSQLLocalDB;" + "AttachDbFilename='|DataDirectory|\\Database1.mdf';";
        string name = "";
        string name1 = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Usernum"] == null)
            {
                Response.Redirect("login.aspx");
            }
            Label2.Text = Session["Username"].ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            name = TextBox1.Text;
            SqlConnection conn = new SqlConnection(sqlconn);
            conn.Open();
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = "select * from equipment where photo LIKE '" + name + "%'";
            SqlDataReader myReader;
            myReader = cmd.ExecuteReader();
            while (myReader.Read())
            {
                name1 = myReader[3].ToString();
            }
            Image1.Visible = true;
            Image1.ImageUrl = "./imgaes/" + name1;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string bool1 = "";
            bool1 = Session["bool"].ToString();
            if (bool1 == "True")
            {
                Response.Redirect("admin.aspx");
            }
            else
            {
                Response.Redirect("employee.aspx");
            }
        }
    }
}