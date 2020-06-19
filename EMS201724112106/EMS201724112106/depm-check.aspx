<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="depm-check.aspx.cs" Inherits="EMS201724112106.depm_check" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <script src="js/jquery-3.5.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
  <style>
      
  </style>
</head>
<body style="background:url(imgaes/bg/bg2.png)">
    <form id="form1" runat="server">
        <div>
              <div class="container" style="width:70%;margin-top:150px;">
                <div class="row">
                    <div class=" col">
                   <div class="card">
                      <div class="card-header bg-info text-white" style="text-align:center">

                  <div> <div style="text-align:center"><h1>部门信息查询</h1></div><div><div style="text-align:left;"><a href="admin.aspx" style="color:white; font-weight: 600;">返回首页</a>
                      <div style="text-align:center; margin-top:-26px; font-weight:600;">Logining:<asp:Label ID="Label1" runat="server" ForeColor="#6600FF"></asp:Label></div>
                      <div style="text-align:right; margin-top:-26px;"><a href="login.aspx" style="color:white; font-weight: 600;">退出登录</a></div></div> </div></div>
                          </div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [department] WHERE ([dnum] = @dnum)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox1" Name="dnum" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>


            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [department] WHERE ([dname] = @dname)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox2" Name="dname" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [department] WHERE ([dmanager] = @dmanager)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox3" Name="dmanager" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>


<div style="margin-left:30px; margin-top:30px">
            <p>
            部门代号：<asp:TextBox ID="TextBox1" runat="server" ></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="查询" CssClass=" btn btn-success" />
           </p>
                       <p>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="dnum" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="dnum" HeaderText="部门代号" ReadOnly="True" SortExpression="dnum" />
                    <asp:BoundField DataField="dname" HeaderText="部门名称" SortExpression="dname" />
                    <asp:BoundField DataField="dmanager" HeaderText="部门主管" SortExpression="dmanager" />
                </Columns>
                <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                <RowStyle BackColor="White" ForeColor="#330099" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                <SortedAscendingCellStyle BackColor="#FEFCEB" />
                <SortedAscendingHeaderStyle BackColor="#AF0101" />
                <SortedDescendingCellStyle BackColor="#F6F0C0" />
                <SortedDescendingHeaderStyle BackColor="#7E0000" />
            </asp:GridView>
                           </p>
            <p>
            部门名称：<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <asp:Button ID="Button2" runat="server" Text="查询" CssClass=" btn btn-success" />
            </p>
                       <p>
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="dnum" DataSourceID="SqlDataSource2">
                <Columns>
                    <asp:BoundField DataField="dnum" HeaderText="部门代号" ReadOnly="True" SortExpression="dnum" />
                    <asp:BoundField DataField="dname" HeaderText="部门名称" SortExpression="dname" />
                    <asp:BoundField DataField="dmanager" HeaderText="部门主管" SortExpression="dmanager" />
                </Columns>
                <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                <RowStyle BackColor="White" ForeColor="#330099" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                <SortedAscendingCellStyle BackColor="#FEFCEB" />
                <SortedAscendingHeaderStyle BackColor="#AF0101" />
                <SortedDescendingCellStyle BackColor="#F6F0C0" />
                <SortedDescendingHeaderStyle BackColor="#7E0000" />
            </asp:GridView>
                           </p>
            <p>
            部门负责人：<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <asp:Button ID="Button3" runat="server" Text="查询" CssClass=" btn btn-success" />
            </p>
                       <p>
            <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="dnum" DataSourceID="SqlDataSource3">
                <Columns>
                    <asp:BoundField DataField="dnum" HeaderText="部门代号" ReadOnly="True" SortExpression="dnum" />
                    <asp:BoundField DataField="dname" HeaderText="部门名称" SortExpression="dname" />
                    <asp:BoundField DataField="dmanager" HeaderText="部门主管" SortExpression="dmanager" />
                </Columns>
                <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                <RowStyle BackColor="White" ForeColor="#330099" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                <SortedAscendingCellStyle BackColor="#FEFCEB" />
                <SortedAscendingHeaderStyle BackColor="#AF0101" />
                <SortedDescendingCellStyle BackColor="#F6F0C0" />
                <SortedDescendingHeaderStyle BackColor="#7E0000" />
            </asp:GridView>
                           </p>
    </div>
        </div></div></div></div></div>
    </form>
</body>
</html>
