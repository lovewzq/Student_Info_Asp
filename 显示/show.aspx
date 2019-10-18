<%@ Page Language="C#" AutoEventWireup="true" CodeFile="show.aspx.cs" Inherits="显示_show" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" 
            CellPadding="3" CellSpacing="2" DataKeyNames="学号" DataSourceID="SqlDataSource1" align="center">
            <Columns>
                <asp:BoundField DataField="学号" HeaderText="学号" ReadOnly="True" 
                    SortExpression="学号" />
                <asp:BoundField DataField="姓名" HeaderText="姓名" SortExpression="姓名" />
                <asp:BoundField DataField="性别" HeaderText="性别" SortExpression="性别" />
                <asp:BoundField DataField="民族" HeaderText="民族" SortExpression="民族" />
                <asp:BoundField DataField="班级名" HeaderText="班级名" SortExpression="班级名" />
                <asp:HyperLinkField DataNavigateUrlFields="学号,姓名" 
                    DataNavigateUrlFormatString="scoreInfo.aspx?sid={0}&amp;sname={1}" 
                    HeaderText="操作" Text="查看成绩" />
            </Columns>
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FFF1D4" />
            <SortedAscendingHeaderStyle BackColor="#B95C30" />
            <SortedDescendingCellStyle BackColor="#F1E5CE" />
            <SortedDescendingHeaderStyle BackColor="#93451F" />
        </asp:GridView>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:cs1 %>" 
            SelectCommand="SELECT DISTINCT [学号], [姓名], [性别], [民族], [班级名] FROM [student]">
        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
