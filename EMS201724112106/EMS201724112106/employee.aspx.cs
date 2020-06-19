using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EMS201724112106
{
    public partial class employee : System.Web.UI.Page
    {
        string sqlconn = "Data Source=(LocalDB)\\MSSQLLocalDB;" +
            "AttachDbFilename='|DataDirectory|\\Database1.mdf';";
        string[] a = new string[30];
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Usernum"] == null)
            {
                Response.Redirect("login.aspx");
            }
            Label2.Text= Session["Username"].ToString();
           
            SqlConnection conn = new SqlConnection(sqlconn);
            conn.Open();
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = "select * from equipment";
            SqlDataReader myReader;
            myReader = cmd.ExecuteReader();
            Image1.Visible = true;
            Image2.Visible = true;
            Image3.Visible = true;
            Image4.Visible = true;

            int i = 0;
            while (myReader.Read())
            {
                a[i] = myReader[3].ToString();
                i++;

            }
            Image1.ImageUrl = "./imgaes/" + a[0];
            Image2.ImageUrl = "./imgaes/" + a[1];
            Image3.ImageUrl = "./imgaes/" + a[2];
            Image4.ImageUrl = "./imgaes/" + a[3];
            Image5.ImageUrl = "./imgaes/" + a[4];
            Image6.ImageUrl = "./imgaes/" + a[5];
            conn.Close();
            myReader.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("photo-check-em.aspx");
        }
    }
}