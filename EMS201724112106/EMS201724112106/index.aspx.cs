using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;



namespace EMS201724112106
{
    public partial class index : System.Web.UI.Page
    {
        //连接数据库字符串
        
        string sqlconn = "Data Source=(LocalDB)\\MSSQLLocalDB;" + "AttachDbFilename='|DataDirectory|\\Database1.mdf';";
        string num ="";
        string name = "";
        string boolean = "";
        string bool1 = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Usernum"] == null)   //如果没有人登录，跳转到登录页面上
            {
                Response.Redirect("login.aspx");
            }
            
            num = Session["Usernum"].ToString();
          SqlConnection conn = new SqlConnection(sqlconn);
            conn.Open();
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = "select * from Employee where Enum=N'"+num+"'";   //通过员工编号寻找员工
            SqlDataReader myReader;
            myReader = cmd.ExecuteReader();
            while (myReader.Read())       
            {   
                   name = myReader[2].ToString();   //登录者的名字
                   bool1 = myReader[4].ToString();  //获取admin字段的数据
            }
            Label1.Text = name;  //显示登录者的名字
            conn.Close();
            myReader.Close();
            Session["Username"] = name;
            Session["bool"] = bool1;
        }

        protected void admin_Click(object sender, EventArgs e)
        {
            num = Session["Usernum"].ToString();
            SqlConnection conn = new SqlConnection(sqlconn);
            conn.Open();
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = "select * from Employee where Enum=N'" + num + "'"; //通过员工编号寻找员工
            SqlDataReader myReader;
            myReader = cmd.ExecuteReader();
            while (myReader.Read())
            {
               boolean = myReader[4].ToString();
            }
            if (boolean == "True")  //判断登录者是否为管理员
            {
                Response.Redirect("admin.aspx");   //跳转到管理员页面
            }
            else
            {  
                Response.Write("<script>alert('你不是管理员！')</script>");
            }
            
            conn.Close();
            myReader.Close();
        }

        protected void employee_Click(object sender, EventArgs e)
        {
            Response.Redirect("employee.aspx");    //跳转到普通员工页面
        

        }

        protected void exit_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");   //跳转到登录页面
        }
    }
}