using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EMS201724112106
{
    public partial class photo_check : System.Web.UI.Page
    {

        //连接数据库字符串
        string sqlconn = "Data Source=(LocalDB)\\MSSQLLocalDB;" + "AttachDbFilename='|DataDirectory|\\Database1.mdf';";
        string name = "";
        string name1 = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Usernum"] == null)
            {
                Response.Redirect("login.aspx");     //如果没有人登录，跳转到登录页面上
            }
            Label2.Text = Session["Username"].ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            name = TextBox1.Text;
            SqlConnection conn = new SqlConnection(sqlconn);
            conn.Open();
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = "select * from equipment where photo LIKE '" + name + "%'";   //根据获取的图片名字来找对应的数据
            SqlDataReader myReader;
            myReader = cmd.ExecuteReader();
            while (myReader.Read())
            {
                name1 = myReader[3].ToString();  //获取图片的名字
            }
            Image1.Visible = true;
            Image1.ImageUrl = "./imgaes/" + name1;   //显示图片
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string bool1 = "";
            bool1 = Session["bool"].ToString();     
            if (bool1 == "True")   //判断是否为管理员
            {
              Response.Redirect("admin.aspx");  //是，跳转到管理员页面 
            }
            else
            {
                Response.Redirect("employee.aspx"); //否，跳转到普通员工页面
            }
           
        }
    }
}