<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="EMS201724112106.WebForm1" %>

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
                      <div class="card-header bg-info text-white" style="text-align:center">

                  <div> <div style="text-align:center"><h1>设备信息查询</h1></div><div>
                      <div style="text-align:left;"><a href="admin.aspx" style="color:white; font-weight: 600;">返回首页</a>
                      <div style="text-align:center; margin-top:-26px; font-weight:600;">Logining:<asp:Label ID="Label1" runat="server" ForeColor="#6600FF"></asp:Label></div>
                      <div style="text-align:right; margin-top:-26px;"><a href="login.aspx" style="color:white; font-weight: 600;">退出登录</a>
                      </div></div> </div></div>
                          </div>

            <p>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [equipment] WHERE ([qnum] = @qnum)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="TextBox2" Name="qnum" PropertyName="Text" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                &nbsp;
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [equipment] WHERE ([qname] = @qname)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="TextBox8" Name="qname" PropertyName="Text" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT equipment.qnum, equipment.qname, equipment.specification, equipment.photo, equipment.price, equipment.buydate, equipment.loation, equipment.leadername FROM department INNER JOIN Employee ON department.dnum = Employee.dmnum INNER JOIN equipment ON Employee.ename = equipment.leadername WHERE (department.dname = @name)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="TextBox6" DefaultValue="  " Name="name" PropertyName="Text" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [equipment] WHERE ([loation] = @loation)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="TextBox7" Name="loation" PropertyName="Text" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [equipment] WHERE ([leadername] = @leadername)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="TextBox5" Name="leadername" PropertyName="Text" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </p>
                       <div style="margin-left:30px;margin-top:30px;">
            <p>设备名称：<asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                <asp:Button ID="Button2" runat="server" Text="查询" CssClass="btn btn-success" />
            </p>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="qnum" DataSourceID="SqlDataSource2">
                <Columns>
                    <asp:BoundField DataField="qnum" HeaderText="设备编号" ReadOnly="True" SortExpression="qnum" />
                    <asp:BoundField DataField="qname" HeaderText="设备名称" SortExpression="qname" />
                    <asp:BoundField DataField="specification" HeaderText="设备规格" SortExpression="specification" />
                    <asp:BoundField DataField="photo" HeaderText="设备图片名字" SortExpression="photo" />
                    <asp:BoundField DataField="price" HeaderText="价格" SortExpression="price" />
                    <asp:BoundField DataField="buydate" HeaderText="购入日期" SortExpression="buydate" />
                    <asp:BoundField DataField="loation" HeaderText="存放位置" SortExpression="loation" />
                    <asp:BoundField DataField="leadername" HeaderText="设备负责人" SortExpression="leadername" />
                </Columns>
                <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                <RowStyle BackColor="White" ForeColor="#003399" />
                <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                <SortedAscendingCellStyle BackColor="#EDF6F6" />
                <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                <SortedDescendingCellStyle BackColor="#D6DFDF" />
                <SortedDescendingHeaderStyle BackColor="#002876" />
            </asp:GridView>
                           <p></p>
            <p>设备编号：<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <asp:Button ID="Button3" runat="server" Text="查询" CssClass="btn btn-success" />
            </p>
            <p>
                <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="qnum" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:BoundField DataField="qnum" HeaderText="设备编号" ReadOnly="True" SortExpression="qnum" />
                        <asp:BoundField DataField="qname" HeaderText="设备名称" SortExpression="qname" />
                        <asp:BoundField DataField="specification" HeaderText="设备规格" SortExpression="specification" />
                        <asp:BoundField DataField="photo" HeaderText="设备图片名字" SortExpression="photo" />
                        <asp:BoundField DataField="price" HeaderText="价格" SortExpression="price" />
                        <asp:BoundField DataField="buydate" HeaderText="购入日期" SortExpression="buydate" />
                        <asp:BoundField DataField="loation" HeaderText="存放位置" SortExpression="loation" />
                        <asp:BoundField DataField="leadername" HeaderText="设备负责人" SortExpression="leadername" />
                    </Columns>
                    <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                    <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                    <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                    <RowStyle BackColor="White" ForeColor="#003399" />
                    <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                    <SortedAscendingCellStyle BackColor="#EDF6F6" />
                    <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                    <SortedDescendingCellStyle BackColor="#D6DFDF" />
                    <SortedDescendingHeaderStyle BackColor="#002876" />
                </asp:GridView>
            </p>
                           <p></p>
            <p>购入年份：<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                <asp:Button ID="Button4" runat="server" Text="查询" OnClick="Button4_Click" CssClass="btn btn-success"/>
            </p>
            <p>
                <asp:GridView ID="GridView7" runat="server" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" OnDataBound="GridView7_DataBound" >
                    <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                    <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                    <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                    <RowStyle BackColor="White" ForeColor="#003399" />
                    <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                    <SortedAscendingCellStyle BackColor="#EDF6F6" />
                    <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                    <SortedDescendingCellStyle BackColor="#D6DFDF" />
                    <SortedDescendingHeaderStyle BackColor="#002876" />
                </asp:GridView>
            </p>
                           <p></p>
            <p>存放位置：<asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                <asp:Button ID="Button5" runat="server" Text="查询" CssClass="btn btn-success"/>
            </p>
            <p>
                <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="qnum" DataSourceID="SqlDataSource6">
                    <Columns>
                        <asp:BoundField DataField="qnum" HeaderText="设备编号" ReadOnly="True" SortExpression="qnum" />
                        <asp:BoundField DataField="qname" HeaderText="设备名称" SortExpression="qname" />
                        <asp:BoundField DataField="specification" HeaderText="设备规格" SortExpression="specification" />
                        <asp:BoundField DataField="photo" HeaderText="设备图片名字" SortExpression="photo" />
                        <asp:BoundField DataField="price" HeaderText="价格" SortExpression="price" />
                        <asp:BoundField DataField="buydate" HeaderText="购入日期" SortExpression="buydate" />
                        <asp:BoundField DataField="loation" HeaderText="存放位置" SortExpression="loation" />
                        <asp:BoundField DataField="leadername" HeaderText="设备负责人" SortExpression="leadername" />
                    </Columns>
                    <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                    <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                    <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                    <RowStyle BackColor="White" ForeColor="#003399" />
                    <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                    <SortedAscendingCellStyle BackColor="#EDF6F6" />
                    <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                    <SortedDescendingCellStyle BackColor="#D6DFDF" />
                    <SortedDescendingHeaderStyle BackColor="#002876" />
                </asp:GridView>
            </p>
                           <p></p>
            <p>设备负责人：<asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                <asp:Button ID="Button6" runat="server" Text="查询" CssClass="btn btn-success" />
            </p>
            <p>
                <asp:GridView ID="GridView6" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="qnum" DataSourceID="SqlDataSource7">
                    <Columns>
                        <asp:BoundField DataField="qnum" HeaderText="设备编号" ReadOnly="True" SortExpression="qnum" />
                        <asp:BoundField DataField="qname" HeaderText="设备名称" SortExpression="qname" />
                        <asp:BoundField DataField="specification" HeaderText="设备规格" SortExpression="specification" />
                        <asp:BoundField DataField="photo" HeaderText="设备图片名字" SortExpression="photo" />
                        <asp:BoundField DataField="price" HeaderText="价格" SortExpression="price" />
                        <asp:BoundField DataField="buydate" HeaderText="购入日期" SortExpression="buydate" />
                        <asp:BoundField DataField="loation" HeaderText="存放位置" SortExpression="loation" />
                        <asp:BoundField DataField="leadername" HeaderText="设备负责人" SortExpression="leadername" />
                    </Columns>
                    <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                    <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                    <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                    <RowStyle BackColor="White" ForeColor="#003399" />
                    <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                    <SortedAscendingCellStyle BackColor="#EDF6F6" />
                    <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                    <SortedDescendingCellStyle BackColor="#D6DFDF" />
                    <SortedDescendingHeaderStyle BackColor="#002876" />
                </asp:GridView>
            </p>
                           <p></p>
            <p>部门名称：<asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                <asp:Button ID="Button1" runat="server" Text="查询" CssClass="btn btn-success"/>
            </p>
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="qnum" DataSourceID="SqlDataSource4">
                <Columns>
                    <asp:BoundField DataField="qnum" HeaderText="设备编号" ReadOnly="True" SortExpression="qnum" />
                    <asp:BoundField DataField="qname" HeaderText="设备名称" SortExpression="qname" />
                    <asp:BoundField DataField="specification" HeaderText="设备规格" SortExpression="specification" />
                    <asp:BoundField DataField="photo" HeaderText="设备图片名字" SortExpression="photo" />
                    <asp:BoundField DataField="price" HeaderText="价格" SortExpression="price" />
                    <asp:BoundField DataField="buydate" HeaderText="购入日期" SortExpression="buydate" />
                    <asp:BoundField DataField="loation" HeaderText="存放位置" SortExpression="loation" />
                    <asp:BoundField DataField="leadername" HeaderText="设备负责人" SortExpression="leadername" />
                </Columns>
                <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                <RowStyle BackColor="White" ForeColor="#003399" />
                <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                <SortedAscendingCellStyle BackColor="#EDF6F6" />
                <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                <SortedDescendingCellStyle BackColor="#D6DFDF" />
                <SortedDescendingHeaderStyle BackColor="#002876" />
            </asp:GridView>
                           </div>
            <p>&nbsp;</p>

        </div></div></div></div></div>
    </form>
</body>
</html>
