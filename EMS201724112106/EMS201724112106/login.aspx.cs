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
    public partial class login : System.Web.UI.Page
    {
        //连接数据库字符串
        string sqlconn = "Data Source=(LocalDB)\\MSSQLLocalDB;" + "AttachDbFilename='|DataDirectory|\\Database1.mdf';";


        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(sqlconn);
            conn.Open();
            SqlCommand cmd = new SqlCommand("select count(*) from Employee where Enum=@enum and password=@Psd", conn);  
            cmd.Parameters.Add("@enum", SqlDbType.NChar);
            cmd.Parameters.Add("@Psd", SqlDbType.NChar);
            cmd.Parameters[0].Value = txtNum.Text;
            cmd.Parameters[1].Value = passwrd.Text;
            int count = (int)cmd.ExecuteScalar();  
            if (count == 1)  //在数据库找到对应的员工编号和密码，登陆成功
            {
                Session["Usernum"] = txtNum.Text;  //将编号保存在session里面
                Response.Redirect("index.aspx");//跳转到index.aspx上


            }
            else    //登陆失败，弹窗提示
            {
                Response.Write("<script>alert('员工编号或密码错误')</script>");
            }
            conn.Close();
        }
    }
}