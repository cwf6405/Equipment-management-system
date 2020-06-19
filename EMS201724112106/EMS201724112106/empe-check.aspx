<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="empe-check.aspx.cs" Inherits="EMS201724112106.empe_check" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <script src="js/jquery-3.5.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</head>
<body style="background:url(imgaes/bg/bg2.png); height:50%; ">
    <form id="form1" runat="server">
        <div>
            <div class="container" style="width:70%;margin-top:150px;">
                <div class="row">
                    <div class=" col">
                   <div class="card">
                      <div class="card-header bg-info text-white" style="text-align:center">

                  <div> <div style="text-align:center"><h1>员工信息查询</h1></div><div><div style="text-align:left;"><a href="admin.aspx" style="color:white; font-weight: 600;">返回首页 </a>
                      <div style="text-align:center; margin-top:-26px; font-weight:600;">Logining:<asp:Label ID="Label1" runat="server" ForeColor="#3333CC"></asp:Label></div>
                      <div style="text-align:right; margin-top:-26px;"><a href="login.aspx" style="color:white; font-weight: 600;">退出登录</a></div></div> </div></div>
                          </div>
            <div style="margin-left:30px;margin-top:30px;">
            <p>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Employee] WHERE ([Enum] = @Enum)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="TextBox1" Name="Enum" PropertyName="Text" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Employee] WHERE ([ename] = @ename)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="TextBox2" Name="ename" PropertyName="Text" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Employee] WHERE ([dmnum] = @dmnum)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="TextBox3" Name="dmnum" PropertyName="Text" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </p>
            <p>
                员工代号：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <asp:Button ID="Button1" runat="server" Text="查询" CssClass=" btn btn-success" />
            </p>
                       <p>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="Enum" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" OnRowCreated="GridView1_RowCreated" >
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="Enum" HeaderText="员工编号" ReadOnly="True" SortExpression="Enum" />
                        <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
                        <asp:BoundField DataField="ename" HeaderText="员工姓名" SortExpression="ename" />
                        <asp:BoundField DataField="phone" HeaderText="电话" SortExpression="phone" />
                        <asp:CheckBoxField DataField="admin" HeaderText="是否为管理员" SortExpression="admin" />
                        <asp:BoundField DataField="dmnum" HeaderText="所在部门编号" SortExpression="dmnum" />
                    </Columns>
                    <FooterStyle BackColor="#CCCC99" />
                    <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                    <RowStyle BackColor="#F7F7DE" />
                    <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#FBFBF2" />
                    <SortedAscendingHeaderStyle BackColor="#848384" />
                    <SortedDescendingCellStyle BackColor="#EAEAD3" />
                    <SortedDescendingHeaderStyle BackColor="#575357" />
                </asp:GridView>
                           </p>
            <p>员工姓名：<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <asp:Button ID="Button2" runat="server" Text="查询" CssClass=" btn btn-success" />
                       </p>
                       <p>
                           <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="Enum" DataSourceID="SqlDataSource2" ForeColor="Black" GridLines="Vertical" OnRowCreated="GridView2_RowCreated">
                               <AlternatingRowStyle BackColor="White" />
                               <Columns>
                                   <asp:BoundField DataField="Enum" HeaderText="员工编号" ReadOnly="True" SortExpression="Enum" />
                                   <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
                                   <asp:BoundField DataField="ename" HeaderText="员工姓名" SortExpression="ename" />
                                   <asp:BoundField DataField="phone" HeaderText="电话" SortExpression="phone" />
                                   <asp:CheckBoxField DataField="admin" HeaderText="是否为管理人" SortExpression="admin" />
                                   <asp:BoundField DataField="dmnum" HeaderText="所在部门编号" SortExpression="dmnum" />
                               </Columns>
                               <FooterStyle BackColor="#CCCC99" />
                               <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                               <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                               <RowStyle BackColor="#F7F7DE" />
                               <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                               <SortedAscendingCellStyle BackColor="#FBFBF2" />
                               <SortedAscendingHeaderStyle BackColor="#848384" />
                               <SortedDescendingCellStyle BackColor="#EAEAD3" />
                               <SortedDescendingHeaderStyle BackColor="#575357" />
                           </asp:GridView>
                       </p>
                       <p>部门编号：<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                           <asp:Button ID="Button3" runat="server" Text="查询" CssClass=" btn btn-success"/>
                       </p>
                       <p>
                           <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="Enum" DataSourceID="SqlDataSource3" ForeColor="Black" GridLines="Vertical" OnRowCreated="GridView3_RowCreated">
                               <AlternatingRowStyle BackColor="White" />
                               <Columns>
                                   <asp:BoundField DataField="Enum" HeaderText="员工编号" ReadOnly="True" SortExpression="Enum" />
                                   <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
                                   <asp:BoundField DataField="ename" HeaderText="员工姓名" SortExpression="ename" />
                                   <asp:BoundField DataField="phone" HeaderText="电话" SortExpression="phone" />
                                   <asp:CheckBoxField DataField="admin" HeaderText="是否为管理员" SortExpression="admin" />
                                   <asp:BoundField DataField="dmnum" HeaderText="所在部门编号" SortExpression="dmnum" />
                               </Columns>
                               <FooterStyle BackColor="#CCCC99" />
                               <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                               <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                               <RowStyle BackColor="#F7F7DE" />
                               <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                               <SortedAscendingCellStyle BackColor="#FBFBF2" />
                               <SortedAscendingHeaderStyle BackColor="#848384" />
                               <SortedDescendingCellStyle BackColor="#EAEAD3" />
                               <SortedDescendingHeaderStyle BackColor="#575357" />
                           </asp:GridView>
                       </p>
                </div>
            </div></div></div></div>
        </div>

    </form>
</body>
</html>
