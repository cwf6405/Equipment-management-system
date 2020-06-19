<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="EMS201724112106.index" %>

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
                      <div class="card-header bg-info text-white" style="text-align:center"><h1>欢迎您！<asp:Label ID="Label1" runat="server"></asp:Label></h1></div>
                       <div class="card-body">
                    
                         <br />
                           <div style="text-align:center">
                           <p>
                               <asp:Button ID="admin" runat="server" Text="管理员入口" CssClass=" btn  btn-info" OnClick="admin_Click" />
                           </p>
                           </div>
                           <br />
                           <div style="text-align:center">
                           <p>
                               <asp:Button ID="employee" runat="server" Text="一般员工入口" CssClass=" btn  btn-info" OnClick="employee_Click" />
                           </p>

                           </div>
                           <br />
                           <div style="text-align:center">
                             <p>
                           <asp:Button ID="exit" runat="server" Text="退出登录" CssClass=" btn  btn-info" OnClick="exit_Click" />
                           <br />               
                           </p>

                           </div>
                           <br />
                       </div>
                       
                   </div> 
                </div>
            </div>
        </div>
        </div>
    </form>
</body>
</html>
