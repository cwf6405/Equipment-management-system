using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EMS201724112106
{
    public partial class admin : System.Web.UI.Page
    {
        string sqlconn = "Data Source=(LocalDB)\\MSSQLLocalDB;" +
            "AttachDbFilename='|DataDirectory|\\Database1.mdf';";
         string []a = new string[30];
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Usernum"] == null)        //如果没有人登录，跳转到登录页面上
            {
                Response.Redirect("login.aspx");
            }
            Label2.Text = Session["Username"].ToString();   //显示登录者名字
            SqlConnection conn = new SqlConnection(sqlconn);
            conn.Open();
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = "select * from equipment";
            SqlDataReader myReader;
            myReader = cmd.ExecuteReader();
            Image1.Visible = true;    //显示图片
            Image2.Visible = true;
            Image3.Visible = true;
            Image4.Visible = true;
            
            int i = 0;
            while (myReader.Read())
            {
                a[i] = myReader[3].ToString();  //获取图片的文件名字
                i++;

            }
            Image1.ImageUrl = "./imgaes/" + a[0];    //显示图片
            Image2.ImageUrl= "./imgaes/" + a[1];
            Image3.ImageUrl = "./imgaes/" + a[2];
            Image4.ImageUrl = "./imgaes/" + a[3];
            Image5.ImageUrl = "./imgaes/" + a[4];
            Image6.ImageUrl = "./imgaes/" + a[5];
            conn.Close();
            myReader.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("photo-add.aspx");        //跳转到图片上传页面
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("photo-check.aspx");  //跳转到查看设备图片页面
        }
    }
}