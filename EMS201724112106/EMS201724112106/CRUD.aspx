<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CRUD.aspx.cs" Inherits="EMS201724112106.CRUD" %>

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
            
                  
                      <div class="card-header  bg-primary text-white" style="text-align:center; margin:30px; ">

                  <div> <div style="text-align:center"><h1>综合管理</h1></div><div><div style="text-align:left;"><a href="admin.aspx" style="color:white; font-weight: 600;">返回首页</a>
                      <div style="text-align:center; margin-top:-26px; font-weight:600;">Logining:<asp:Label ID="Label1" runat="server" ForeColor="#6600FF"></asp:Label></div>
                      <div style="text-align:right; margin-top:-26px;"><a href="login.aspx" style="color:white; font-weight: 600;">退出登录</a></div></div> </div></div>
                          </div>
            <div style="margin-left:30px;">
                       <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [department] WHERE [dnum] = @dnum" InsertCommand="INSERT INTO [department] ([dnum], [dname], [dmanager]) VALUES (@dnum, @dname, @dmanager)" SelectCommand="SELECT * FROM [department]" UpdateCommand="UPDATE [department] SET [dname] = @dname, [dmanager] = @dmanager WHERE [dnum] = @dnum">
                           <DeleteParameters>
                               <asp:Parameter Name="dnum" Type="String" />
                           </DeleteParameters>
                           <InsertParameters>
                               <asp:Parameter Name="dnum" Type="String" />
                               <asp:Parameter Name="dname" Type="String" />
                               <asp:Parameter Name="dmanager" Type="String" />
                           </InsertParameters>
                           <UpdateParameters>
                               <asp:Parameter Name="dname" Type="String" />
                               <asp:Parameter Name="dmanager" Type="String" />
                               <asp:Parameter Name="dnum" Type="String" />
                           </UpdateParameters>
                       </asp:SqlDataSource>
                       <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Employee] WHERE [Enum] = @Enum" InsertCommand="INSERT INTO [Employee] ([Enum], [password], [ename], [phone], [admin], [dmnum]) VALUES (@Enum, @password, @ename, @phone, @admin, @dmnum)" SelectCommand="SELECT * FROM [Employee]" UpdateCommand="UPDATE [Employee] SET [password] = @password, [ename] = @ename, [phone] = @phone, [admin] = @admin, [dmnum] = @dmnum WHERE [Enum] = @Enum">
                           <DeleteParameters>
                               <asp:Parameter Name="Enum" Type="String" />
                           </DeleteParameters>
                           <InsertParameters>
                               <asp:Parameter Name="Enum" Type="String" />
                               <asp:Parameter Name="password" Type="String" />
                               <asp:Parameter Name="ename" Type="String" />
                               <asp:Parameter Name="phone" Type="String" />
                               <asp:Parameter Name="admin" Type="Boolean" />
                               <asp:Parameter Name="dmnum" Type="String" />
                           </InsertParameters>
                           <UpdateParameters>
                               <asp:Parameter Name="password" Type="String" />
                               <asp:Parameter Name="ename" Type="String" />
                               <asp:Parameter Name="phone" Type="String" />
                               <asp:Parameter Name="admin" Type="Boolean" />
                               <asp:Parameter Name="dmnum" Type="String" />
                               <asp:Parameter Name="Enum" Type="String" />
                           </UpdateParameters>
                       </asp:SqlDataSource>
                       <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [equipment] WHERE [qnum] = @qnum" InsertCommand="INSERT INTO [equipment] ([qnum], [qname], [specification], [photo], [price], [buydate], [loation], [leadername]) VALUES (@qnum, @qname, @specification, @photo, @price, @buydate, @loation, @leadername)" SelectCommand="SELECT * FROM [equipment]" UpdateCommand="UPDATE [equipment] SET [qname] = @qname, [specification] = @specification, [photo] = @photo, [price] = @price, [buydate] = @buydate, [loation] = @loation, [leadername] = @leadername WHERE [qnum] = @qnum">
                           <DeleteParameters>
                               <asp:Parameter Name="qnum" Type="String" />
                           </DeleteParameters>
                           <InsertParameters>
                               <asp:Parameter Name="qnum" Type="String" />
                               <asp:Parameter Name="qname" Type="String" />
                               <asp:Parameter Name="specification" Type="String" />
                               <asp:Parameter Name="photo" Type="String" />
                               <asp:Parameter Name="price" Type="Int32" />
                               <asp:Parameter DbType="Date" Name="buydate" />
                               <asp:Parameter Name="loation" Type="String" />
                               <asp:Parameter Name="leadername" Type="String" />
                           </InsertParameters>
                           <UpdateParameters>
                               <asp:Parameter Name="qname" Type="String" />
                               <asp:Parameter Name="specification" Type="String" />
                               <asp:Parameter Name="photo" Type="String" />
                               <asp:Parameter Name="price" Type="Int32" />
                               <asp:Parameter DbType="Date" Name="buydate" />
                               <asp:Parameter Name="loation" Type="String" />
                               <asp:Parameter Name="leadername" Type="String" />
                               <asp:Parameter Name="qnum" Type="String" />
                           </UpdateParameters>
                       </asp:SqlDataSource>
            <p></p>
                       <div class=" text-white"><h2>部门管理</h2></div>
                       <p>
                           <asp:ListView ID="ListView1" runat="server" DataKeyNames="dnum" DataSourceID="SqlDataSource1" InsertItemPosition="LastItem" >
                               <AlternatingItemTemplate>
                                   <tr style="background-color: #FAFAD2; color: #284775;">
                                       <td>
                                           <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="删除" />
                                           <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="编辑" />
                                       </td>
                                       <td>
                                           <asp:Label ID="dnumLabel" runat="server" Text='<%# Eval("dnum") %>' />
                                       </td>
                                       <td>
                                           <asp:Label ID="dnameLabel" runat="server" Text='<%# Eval("dname") %>' />
                                       </td>
                                       <td>
                                           <asp:Label ID="dmanagerLabel" runat="server" Text='<%# Eval("dmanager") %>' />
                                       </td>
                                   </tr>
                               </AlternatingItemTemplate>
                               <EditItemTemplate>
                                   <tr style="background-color: #FFCC66; color: #000080;">
                                       <td>
                                           <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="更新" />
                                           <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="取消" />
                                       </td>
                                       <td>
                                           <asp:Label ID="dnumLabel1" runat="server" Text='<%# Eval("dnum") %>' />
                                       </td>
                                       <td>
                                           <asp:TextBox ID="dnameTextBox" runat="server" Text='<%# Bind("dname") %>' />
                                       </td>
                                       <td>
                                           <asp:TextBox ID="dmanagerTextBox" runat="server" Text='<%# Bind("dmanager") %>' />
                                       </td>
                                   </tr>
                               </EditItemTemplate>
                               <EmptyDataTemplate>
                                   <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                                       <tr>
                                           <td>未返回数据。</td>
                                       </tr>
                                   </table>
                               </EmptyDataTemplate>
                               <InsertItemTemplate>
                                   <tr style="">
                                       <td>
                                           <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="插入" />
                                           <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="清除" />
                                       </td>
                                       <td>
                                           <asp:TextBox ID="dnumTextBox" runat="server" Text='<%# Bind("dnum") %>' />
                                       </td>
                                       <td>
                                           <asp:TextBox ID="dnameTextBox" runat="server" Text='<%# Bind("dname") %>' />
                                       </td>
                                       <td>
                                           <asp:TextBox ID="dmanagerTextBox" runat="server" Text='<%# Bind("dmanager") %>' />
                                       </td>
                                   </tr>
                               </InsertItemTemplate>
                               <ItemTemplate>
                                   <tr style="background-color: #FFFBD6; color: #333333;">
                                       <td>
                                           <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="删除" />
                                           <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="编辑" />
                                       </td>
                                       <td>
                                           <asp:Label ID="dnumLabel" runat="server" Text='<%# Eval("dnum") %>' />
                                       </td>
                                       <td>
                                           <asp:Label ID="dnameLabel" runat="server" Text='<%# Eval("dname") %>' />
                                       </td>
                                       <td>
                                           <asp:Label ID="dmanagerLabel" runat="server" Text='<%# Eval("dmanager") %>' />
                                       </td>
                                   </tr>
                               </ItemTemplate>
                               <LayoutTemplate>
                                   <table runat="server">
                                       <tr runat="server">
                                           <td runat="server">
                                               <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                                   <tr runat="server" style="background-color: #DCDCDC; color: #000000;">
                                                       <th runat="server"></th>
                                                       <th runat="server">dnum</th>
                                                       <th runat="server">dname</th>
                                                       <th runat="server">dmanager</th>
                                                   </tr>
                                                   <tr id="itemPlaceholder" runat="server" style="background-color: #FFFBD6;color: #333333;">
                                                       <th runat="server"></th>
                                                       <th runat="server">dnum</th>
                                                       <th runat="server">dname</th>
                                                       <th runat="server">dmanager</th>
                                                   </tr>
                                               </table>
                                           </td>
                                       </tr>
                                       <tr runat="server">
                                           <td runat="server" style="text-align: center;background-color: #FFCC66; font-family: Verdana, Arial, Helvetica, sans-serif;color: #333333;">
                                               <asp:DataPager ID="DataPager1" runat="server">
                                                   <Fields>
                                                       <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                                                   </Fields>
                                               </asp:DataPager>
                                           </td>
                                       </tr>
                                   </table>
                               </LayoutTemplate>
                               <SelectedItemTemplate>
                                   <tr style="background-color: #FFCC66; font-weight: bold;color: #000080;">
                                       <td>
                                           <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="删除" />
                                           <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="编辑" />
                                       </td>
                                       <td>
                                           <asp:Label ID="dnumLabel" runat="server" Text='<%# Eval("dnum") %>' />
                                       </td>
                                       <td>
                                           <asp:Label ID="dnameLabel" runat="server" Text='<%# Eval("dname") %>' />
                                       </td>
                                       <td>
                                           <asp:Label ID="dmanagerLabel" runat="server" Text='<%# Eval("dmanager") %>' />
                                       </td>
                                   </tr>
                               </SelectedItemTemplate>
                           </asp:ListView>
                       </p>
                       
                        <div class=" text-white"><h2>员工管理</h2></div>
                       <p>
                           <asp:ListView ID="ListView2" runat="server" DataKeyNames="Enum" DataSourceID="SqlDataSource2" InsertItemPosition="LastItem">
                               <AlternatingItemTemplate>
                                   <tr style="background-color: #FAFAD2;color: #284775;">
                                       <td>
                                           <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="删除" />
                                           <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="编辑" />
                                       </td>
                                       <td>
                                           <asp:Label ID="EnumLabel" runat="server" Text='<%# Eval("Enum") %>' />
                                       </td>
                                       <td>
                                           <asp:Label ID="passwordLabel" runat="server" Text='<%# Eval("password") %>' />
                                       </td>
                                       <td>
                                           <asp:Label ID="enameLabel" runat="server" Text='<%# Eval("ename") %>' />
                                       </td>
                                       <td>
                                           <asp:Label ID="phoneLabel" runat="server" Text='<%# Eval("phone") %>' />
                                       </td>
                                       <td>
                                           <asp:CheckBox ID="adminCheckBox" runat="server" Checked='<%# Eval("admin") %>' Enabled="false" />
                                       </td>
                                       <td>
                                           <asp:Label ID="dmnumLabel" runat="server" Text='<%# Eval("dmnum") %>' />
                                       </td>
                                   </tr>
                               </AlternatingItemTemplate>
                               <EditItemTemplate>
                                   <tr style="background-color: #FFCC66;color: #000080;">
                                       <td>
                                           <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="更新" />
                                           <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="取消" />
                                       </td>
                                       <td>
                                           <asp:Label ID="EnumLabel1" runat="server" Text='<%# Eval("Enum") %>' />
                                       </td>
                                       <td>
                                           <asp:TextBox ID="passwordTextBox" runat="server" Text='<%# Bind("password") %>' />
                                       </td>
                                       <td>
                                           <asp:TextBox ID="enameTextBox" runat="server" Text='<%# Bind("ename") %>' />
                                       </td>
                                       <td>
                                           <asp:TextBox ID="phoneTextBox" runat="server" Text='<%# Bind("phone") %>' />
                                       </td>
                                       <td>
                                           <asp:CheckBox ID="adminCheckBox" runat="server" Checked='<%# Bind("admin") %>' />
                                       </td>
                                       <td>
                                           <asp:TextBox ID="dmnumTextBox" runat="server" Text='<%# Bind("dmnum") %>' />
                                       </td>
                                   </tr>
                               </EditItemTemplate>
                               <EmptyDataTemplate>
                                   <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                                       <tr>
                                           <td>未返回数据。</td>
                                       </tr>
                                   </table>
                               </EmptyDataTemplate>
                               <InsertItemTemplate>
                                   <tr style="">
                                       <td>
                                           <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="插入" />
                                           <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="清除" />
                                       </td>
                                       <td>
                                           <asp:TextBox ID="EnumTextBox" runat="server" Text='<%# Bind("Enum") %>' />
                                       </td>
                                       <td>
                                           <asp:TextBox ID="passwordTextBox" runat="server" Text='<%# Bind("password") %>' />
                                       </td>
                                       <td>
                                           <asp:TextBox ID="enameTextBox" runat="server" Text='<%# Bind("ename") %>' />
                                       </td>
                                       <td>
                                           <asp:TextBox ID="phoneTextBox" runat="server" Text='<%# Bind("phone") %>' />
                                       </td>
                                       <td>
                                           <asp:CheckBox ID="adminCheckBox" runat="server" Checked='<%# Bind("admin") %>' />
                                       </td>
                                       <td>
                                           <asp:TextBox ID="dmnumTextBox" runat="server" Text='<%# Bind("dmnum") %>' />
                                       </td>
                                   </tr>
                               </InsertItemTemplate>
                               <ItemTemplate>
                                   <tr style="background-color: #FFFBD6;color: #333333;">
                                       <td>
                                           <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="删除" />
                                           <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="编辑" />
                                       </td>
                                       <td>
                                           <asp:Label ID="EnumLabel" runat="server" Text='<%# Eval("Enum") %>' />
                                       </td>
                                       <td>
                                           <asp:Label ID="passwordLabel" runat="server" Text='<%# Eval("password") %>' />
                                       </td>
                                       <td>
                                           <asp:Label ID="enameLabel" runat="server" Text='<%# Eval("ename") %>' />
                                       </td>
                                       <td>
                                           <asp:Label ID="phoneLabel" runat="server" Text='<%# Eval("phone") %>' />
                                       </td>
                                       <td>
                                           <asp:CheckBox ID="adminCheckBox" runat="server" Checked='<%# Eval("admin") %>' Enabled="false" />
                                       </td>
                                       <td>
                                           <asp:Label ID="dmnumLabel" runat="server" Text='<%# Eval("dmnum") %>' />
                                       </td>
                                   </tr>
                               </ItemTemplate>
                               <LayoutTemplate>
                                   <table runat="server">
                                       <tr runat="server">
                                           <td runat="server">
                                               <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                                   <tr runat="server" style="background-color: #FFFBD6;color: #333333;">
                                                       <th runat="server"></th>
                                                       <th runat="server">Enum</th>
                                                       <th runat="server">password</th>
                                                       <th runat="server">ename</th>
                                                       <th runat="server">phone</th>
                                                       <th runat="server">admin</th>
                                                       <th runat="server">dmnum</th>
                                                   </tr>
                                                   <tr id="itemPlaceholder" runat="server">
                                                   </tr>
                                               </table>
                                           </td>
                                       </tr>
                                       <tr runat="server">
                                           <td runat="server" style="text-align: center;background-color: #FFCC66;font-family: Verdana, Arial, Helvetica, sans-serif;color: #333333;">
                                               <asp:DataPager ID="DataPager1" runat="server">
                                                   <Fields>
                                                       <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                                                   </Fields>
                                               </asp:DataPager>
                                           </td>
                                       </tr>
                                   </table>
                               </LayoutTemplate>
                               <SelectedItemTemplate>
                                   <tr style="background-color: #FFCC66;font-weight: bold;color: #000080;">
                                       <td>
                                           <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="删除" />
                                           <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="编辑" />
                                       </td>
                                       <td>
                                           <asp:Label ID="EnumLabel" runat="server" Text='<%# Eval("Enum") %>' />
                                       </td>
                                       <td>
                                           <asp:Label ID="passwordLabel" runat="server" Text='<%# Eval("password") %>' />
                                       </td>
                                       <td>
                                           <asp:Label ID="enameLabel" runat="server" Text='<%# Eval("ename") %>' />
                                       </td>
                                       <td>
                                           <asp:Label ID="phoneLabel" runat="server" Text='<%# Eval("phone") %>' />
                                       </td>
                                       <td>
                                           <asp:CheckBox ID="adminCheckBox" runat="server" Checked='<%# Eval("admin") %>' Enabled="false" />
                                       </td>
                                       <td>
                                           <asp:Label ID="dmnumLabel" runat="server" Text='<%# Eval("dmnum") %>' />
                                       </td>
                                   </tr>
                               </SelectedItemTemplate>
                           </asp:ListView>
                       </p>
                       <div class=" text-white"><h2>设备管理</h2></div>
                       <p>
                           <asp:ListView ID="ListView3" runat="server" DataKeyNames="qnum" DataSourceID="SqlDataSource3" InsertItemPosition="LastItem">
                               <AlternatingItemTemplate>
                                   <tr style="background-color: #FAFAD2;color: #284775;">
                                       <td>
                                           <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="删除" />
                                           <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="编辑" />
                                       </td>
                                       <td>
                                           <asp:Label ID="qnumLabel" runat="server" Text='<%# Eval("qnum") %>' />
                                       </td>
                                       <td>
                                           <asp:Label ID="qnameLabel" runat="server" Text='<%# Eval("qname") %>' />
                                       </td>
                                       <td>
                                           <asp:Label ID="specificationLabel" runat="server" Text='<%# Eval("specification") %>' />
                                       </td>
                                       <td>
                                           <asp:Label ID="photoLabel" runat="server" Text='<%# Eval("photo") %>' />
                                       </td>
                                       <td>
                                           <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
                                       </td>
                                       <td>
                                           <asp:Label ID="buydateLabel" runat="server" Text='<%# Eval("buydate") %>' />
                                       </td>
                                       <td>
                                           <asp:Label ID="loationLabel" runat="server" Text='<%# Eval("loation") %>' />
                                       </td>
                                       <td>
                                           <asp:Label ID="leadernameLabel" runat="server" Text='<%# Eval("leadername") %>' />
                                       </td>
                                   </tr>
                               </AlternatingItemTemplate>
                               <EditItemTemplate>
                                   <tr style="background-color: #FFCC66;color: #000080;">
                                       <td>
                                           <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="更新" />
                                           <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="取消" />
                                       </td>
                                       <td>
                                           <asp:Label ID="qnumLabel1" runat="server" Text='<%# Eval("qnum") %>' />
                                       </td>
                                       <td>
                                           <asp:TextBox ID="qnameTextBox" runat="server" Text='<%# Bind("qname") %>' />
                                       </td>
                                       <td>
                                           <asp:TextBox ID="specificationTextBox" runat="server" Text='<%# Bind("specification") %>' />
                                       </td>
                                       <td>
                                           <asp:TextBox ID="photoTextBox" runat="server" Text='<%# Bind("photo") %>' />
                                       </td>
                                       <td>
                                           <asp:TextBox ID="priceTextBox" runat="server" Text='<%# Bind("price") %>' />
                                       </td>
                                       <td>
                                           <asp:TextBox ID="buydateTextBox" runat="server" Text='<%# Bind("buydate") %>' />
                                       </td>
                                       <td>
                                           <asp:TextBox ID="loationTextBox" runat="server" Text='<%# Bind("loation") %>' />
                                       </td>
                                       <td>
                                           <asp:TextBox ID="leadernameTextBox" runat="server" Text='<%# Bind("leadername") %>' />
                                       </td>
                                   </tr>
                               </EditItemTemplate>
                               <EmptyDataTemplate>
                                   <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                                       <tr>
                                           <td>未返回数据。</td>
                                       </tr>
                                   </table>
                               </EmptyDataTemplate>
                               <InsertItemTemplate>
                                   <tr style="">
                                       <td>
                                           <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="插入" />
                                           <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="清除" />
                                       </td>
                                       <td>
                                           <asp:TextBox ID="qnumTextBox" runat="server" Text='<%# Bind("qnum") %>' />
                                       </td>
                                       <td>
                                           <asp:TextBox ID="qnameTextBox" runat="server" Text='<%# Bind("qname") %>' />
                                       </td>
                                       <td>
                                           <asp:TextBox ID="specificationTextBox" runat="server" Text='<%# Bind("specification") %>' />
                                       </td>
                                       <td>
                                           <asp:TextBox ID="photoTextBox" runat="server" Text='<%# Bind("photo") %>' />
                                       </td>
                                       <td>
                                           <asp:TextBox ID="priceTextBox" runat="server" Text='<%# Bind("price") %>' />
                                       </td>
                                       <td>
                                           <asp:TextBox ID="buydateTextBox" runat="server" Text='<%# Bind("buydate") %>' />
                                       </td>
                                       <td>
                                           <asp:TextBox ID="loationTextBox" runat="server" Text='<%# Bind("loation") %>' />
                                       </td>
                                       <td>
                                           <asp:TextBox ID="leadernameTextBox" runat="server" Text='<%# Bind("leadername") %>' />
                                       </td>
                                   </tr>
                               </InsertItemTemplate>
                               <ItemTemplate>
                                   <tr style="background-color: #FFFBD6;color: #333333;">
                                       <td>
                                           <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="删除" />
                                           <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="编辑" />
                                       </td>
                                       <td>
                                           <asp:Label ID="qnumLabel" runat="server" Text='<%# Eval("qnum") %>' />
                                       </td>
                                       <td>
                                           <asp:Label ID="qnameLabel" runat="server" Text='<%# Eval("qname") %>' />
                                       </td>
                                       <td>
                                           <asp:Label ID="specificationLabel" runat="server" Text='<%# Eval("specification") %>' />
                                       </td>
                                       <td>
                                           <asp:Label ID="photoLabel" runat="server" Text='<%# Eval("photo") %>' />
                                       </td>
                                       <td>
                                           <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
                                       </td>
                                       <td>
                                           <asp:Label ID="buydateLabel" runat="server" Text='<%# Eval("buydate") %>' />
                                       </td>
                                       <td>
                                           <asp:Label ID="loationLabel" runat="server" Text='<%# Eval("loation") %>' />
                                       </td>
                                       <td>
                                           <asp:Label ID="leadernameLabel" runat="server" Text='<%# Eval("leadername") %>' />
                                       </td>
                                   </tr>
                               </ItemTemplate>
                               <LayoutTemplate>
                                   <table runat="server">
                                       <tr runat="server">
                                           <td runat="server">
                                               <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                                   <tr runat="server" style="background-color: #FFFBD6;color: #333333;">
                                                       <th runat="server"></th>
                                                       <th runat="server">qnum</th>
                                                       <th runat="server">qname</th>
                                                       <th runat="server">specification</th>
                                                       <th runat="server">photo</th>
                                                       <th runat="server">price</th>
                                                       <th runat="server">buydate</th>
                                                       <th runat="server">loation</th>
                                                       <th runat="server">leadername</th>
                                                   </tr>
                                                   <tr id="itemPlaceholder" runat="server">
                                                   </tr>
                                               </table>
                                           </td>
                                       </tr>
                                       <tr runat="server">
                                           <td runat="server" style="text-align: center;background-color: #FFCC66;font-family: Verdana, Arial, Helvetica, sans-serif;color: #333333;">
                                               <asp:DataPager ID="DataPager1" runat="server">
                                                   <Fields>
                                                       <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                                                   </Fields>
                                               </asp:DataPager>
                                           </td>
                                       </tr>
                                   </table>
                               </LayoutTemplate>
                               <SelectedItemTemplate>
                                   <tr style="background-color: #FFCC66;font-weight: bold;color: #000080;">
                                       <td>
                                           <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="删除" />
                                           <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="编辑" />
                                       </td>
                                       <td>
                                           <asp:Label ID="qnumLabel" runat="server" Text='<%# Eval("qnum") %>' />
                                       </td>
                                       <td>
                                           <asp:Label ID="qnameLabel" runat="server" Text='<%# Eval("qname") %>' />
                                       </td>
                                       <td>
                                           <asp:Label ID="specificationLabel" runat="server" Text='<%# Eval("specification") %>' />
                                       </td>
                                       <td>
                                           <asp:Label ID="photoLabel" runat="server" Text='<%# Eval("photo") %>' />
                                       </td>
                                       <td>
                                           <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
                                       </td>
                                       <td>
                                           <asp:Label ID="buydateLabel" runat="server" Text='<%# Eval("buydate") %>' />
                                       </td>
                                       <td>
                                           <asp:Label ID="loationLabel" runat="server" Text='<%# Eval("loation") %>' />
                                       </td>
                                       <td>
                                           <asp:Label ID="leadernameLabel" runat="server" Text='<%# Eval("leadername") %>' />
                                       </td>
                                   </tr>
                               </SelectedItemTemplate>
                           </asp:ListView>
                       </p>
                
        </div></div>
    </form>
</body>
</html>
