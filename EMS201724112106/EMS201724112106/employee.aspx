<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="employee.aspx.cs" Inherits="EMS201724112106.employee" %>

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
             height:700px;
        }
        .ImgDiv{
            float:left;
            text-align:center;
            width:48%;
            height:27%;
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
                      <td style="width:200px;font-size:large;">欢迎您！<asp:Label ID="Label2" runat="server" ForeColor="#6666FF"></asp:Label></td>
                      <td style="width:200px; font-size:large;"><a href="WebForm_em.aspx" style="color:white;">设备查询</a></td>
                      <td style="width:200px;font-size:large;"><div style="color:black;">部门查询</div></td>
                      <td style="width:200px;font-size:large;"><div style="color:black;">员工查询</div></td>
                      <td style="width:200px;font-size:large;"><div style="color:black;">综合管理</div></td>
                      <td style="width:200px;font-size:large;"><a href="login.aspx" style="color:white;">退出登录</a></td>
                  </tr>
              </table>
           </div>
        </div>
              <div class="body1">
                 <div style="text-align:center"> <h4>部分设备图片显示</h4></div>
                  <div class="ImgDiv">
                      <asp:Image ID="Image1" runat="server" CssClass="Img"/>
                  </div>
                  <div class="ImgDiv">
                      <asp:Image ID="Image2" runat="server" CssClass="Img"/>
                  </div>
                  <div class="ImgDiv">
                      <asp:Image ID="Image3" runat="server" CssClass="Img"/>
                  </div>
                  <div class="ImgDiv">
                      <asp:Image ID="Image4" runat="server" CssClass="Img"/>
                  </div>
                  <div class="ImgDiv">
                      <asp:Image ID="Image5" runat="server" CssClass="Img"/>
                  </div>
                  <div class="ImgDiv">
                      <asp:Image ID="Image6" runat="server" CssClass="Img"/>
                      <br />
                  </div>
                  
                
              </div>
              <div style="text-align:center; background-color:lightgrey; margin-bottom:4px;">
 
                      <asp:Button ID="Button2" runat="server" Text="查看设备图片" CssClass="btn btn-success" OnClick="Button2_Click" /><br />
                      <br /></div>
                      
              <br />
                    

            </div>
             </div>
             </div>

        </div>
    </form>
</body>
</html>
