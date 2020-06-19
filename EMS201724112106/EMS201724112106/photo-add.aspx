<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="photo-add.aspx.cs" Inherits="EMS201724112106.photo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <script src="js/jquery-3.5.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <style>
         .body1{
            
            text-align:center;
            border-radius : 2px;
            padding:5px 10px;
           margin-top:20px;
             background-color:lightgrey;
             height:600px;
        }
        .ImgDiv{
            float:left;
            text-align:center;
            width:48%;
            height:40%;
            margin:5px;
             

        }
        .Img{
            z-index: 102; 
            left: 20px;
            top: 49px;
            width:330px;
            margin:26px;
            height:100%;
            margin-top:10px;
        }
    </style>
</head>
<body style="background:url(imgaes/bg/bg2.png)">
    <form id="form1" runat="server">
        <div>
            <div class=" container" style="width:80%; margin-top:20px; ">
        <div class="row">
          <div class=" col">
          <div class="card">
           <div class=" card-header  bg-success text-white" style="height:80px;">
              <table style="text-align:center;margin:30px; margin-left:80px; margin-top:10px;">
                  <tr>
                      <td style="width:200px;font-size:large;">欢迎您！<asp:Label ID="Label2" runat="server" ForeColor="#6600FF"></asp:Label></td>
                      <td style="width:200px; font-size:large;"><a href="WebForm1.aspx" style="color:white;">设备查询</a></td>
                      <td style="width:200px;font-size:large;"><a href="depm-check.aspx" style="color:white;">部门查询</a></td>
                      <td style="width:200px;font-size:large;"><a href="empe-check.aspx" style="color:white;">员工查询</a></td>
                      <td style="width:200px;font-size:large;"><a href="CRUD.aspx" style="color:white;">综合管理</a></td>
                      <td style="width:200px;font-size:large;"><a href="login.aspx" style="color:white;">退出登录</a></td>
                  </tr>
              </table>
           </div>
        </div>
              <div class="body1">
                  <div style="text-align:center;"><h2>图片上传</h2></div>
                  <br />
                  <asp:FileUpload ID="FileUpload1" runat="server" />
                <br />
                  <br />

                  <div style="text-align:center;">
                      <asp:Button ID="Button1" runat="server" Text="上传" CssClass="btn btn-primary" OnClick="Button1_Click" />
                      <asp:Button ID="Button2" runat="server" Text="返回首页" CssClass="btn btn-primary" OnClick="Button2_Click" />
                  </div>
                  <div class="ImgDiv">
                  <asp:Image ID="Image1" runat="server" CssClass="Img"/>
                   <asp:Label ID="Label1" runat="server"></asp:Label>
                  </div>
                 
            
              </div>
              
            </div>
             </div>
             </div>
        
        </div>
    </form>
</body>
</html>
