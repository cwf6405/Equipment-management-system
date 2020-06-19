using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EMS201724112106
{
    public partial class photo : System.Web.UI.Page
    {
        

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
            bool files = false;
            if (this.FileUpload1.HasFile)
            {
                //获取上传文件的后缀
                String fileExtension = System.IO.Path.GetExtension(this.FileUpload1.FileName).ToLower();
                String[] restrictExtension = { ".gif", ".jpg", ".bmp", ".png" };
                //判断文件类型是否符合
                for (int i = 0; i < restrictExtension.Length; i++)
                {
                    if (fileExtension == restrictExtension[1])
                    {
                        files = true;
                    }
                }
                //调用SaveAs方法实现上传
                if (files == true)
                {
                    try
                    {
                        this.Image1.ImageUrl = "./imgaes/" + FileUpload1.FileName;
                        this.FileUpload1.SaveAs(Server.MapPath("") + "/imgaes/" + FileUpload1.FileName);
                        this.Label1.Text = "文件上传成功!";
                        this.Label1.Text += "<br/>";
                        this.Label1.Text += "<li>" + "原文件路径：" + this.FileUpload1.PostedFile.FileName;
                        this.Label1.Text += "<br/>";
                        this.Label1.Text += "<li>" + "文件大小：" + this.FileUpload1.PostedFile.ContentLength + "字节";
                        this.Label1.Text += "<br/>";
                        this.Label1.Text += "<li>" + "文件类型：" + this.FileUpload1.PostedFile.ContentType;
                    }
                    catch
                    {
                        this.Label1.Text = "文件上传不成功";
                    }
                }
                else
                {
                    this.Label1.Text = "只能够上传后缀为.gif、 .jpg、 .bmp、.png的文件夹";
                }
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string bool1 = Session["bool"].ToString();

            if (bool1 =="True"){
                  Response.Redirect("admin.aspx");
            }
            else
            {
                  Response.Redirect("employee.aspx");
            }
             
            

            
        }
    }
}