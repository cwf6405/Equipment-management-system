using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EMS201724112106
{
    public partial class WebForm_em : System.Web.UI.Page
    {
        string sqlconn = "Data Source=(LocalDB)\\MSSQLLocalDB;" + "AttachDbFilename='|DataDirectory|\\Database1.mdf';";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Usernum"] == null)
            {
                Response.Redirect("login.aspx");
            }
            Label1.Text = Session["Username"].ToString();
        }

        protected void GridView7_DataBound(object sender, EventArgs e)
        {
            GridView7.HeaderRow.Cells[0].Text = "设备编号";
            GridView7.HeaderRow.Cells[1].Text = "设备名称";
            GridView7.HeaderRow.Cells[2].Text = "设备规格";
            GridView7.HeaderRow.Cells[3].Text = "设备图片名字";
            GridView7.HeaderRow.Cells[4].Text = "价格";
            GridView7.HeaderRow.Cells[5].Text = "购入日期";
            GridView7.HeaderRow.Cells[6].Text = "存放位置";
            GridView7.HeaderRow.Cells[7].Text = "设备负责人";
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            string date = TextBox3.Text;
            SqlConnection conn = new SqlConnection(sqlconn);
            conn.Open();
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = "select * from equipment where buydate LIKE '" + date + "%'";
            SqlDataReader myReader;
            myReader = cmd.ExecuteReader();
            GridView7.DataSource = myReader;
            GridView7.DataBind();
            conn.Close();
            myReader.Close();
        }
    }
}