<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="EMS201724112106.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <script src="js/jquery-3.5.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    
   
</head>
<body style="background:url(imgaes/bg/bg2.png)">
    <form id="form1" runat="server">
        <div>
            <div class="container" style="width:70%;margin-top:150px;">
                <div class="row">
                    <div class=" col">
                   <div class="card">
                      <div class="card-header bg-info text-white" style="text-align:center"><h1>设备保管及查询系统</h1></div>
                       <div class="card-body">
                           
                           <div class=" form-group">                             
                               <label for="txtNum">编号</label>
                               <asp:TextBox ID="txtNum" runat="server" CssClass=" form-control"></asp:TextBox>
                           </div>
                           <div class=" form-group">
                               <label for="passwrd">密码</label>
                               <asp:TextBox ID="passwrd" runat="server"  TextMode="password" CssClass=" form-control" ></asp:TextBox>
                               
                           </div><br />
                           <p>
                               <asp:Button ID="Button1" runat="server" Text="登录" CssClass=" btn btn-success" OnClick="Button1_Click" />
                           </p>
                       </div>
                       
                   </div> 
                </div>
            </div>
        </div>
        </div>
    </form>
</body>
</html>
