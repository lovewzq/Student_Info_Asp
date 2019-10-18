<%@ Page Language="C#" AutoEventWireup="true" CodeFile="scoreInfo.aspx.cs" Inherits="显示_scoreInfo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" 
            CellPadding="3" DataKeyNames="学号,课程名" DataSourceID="SqlDataSource1" 
            ForeColor="Black" GridLines="Vertical" style="text-align: center" align="center">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:BoundField DataField="学号" HeaderText="学号" ReadOnly="True" 
                    SortExpression="学号" />
                <asp:BoundField DataField="课程名" HeaderText="课程名" ReadOnly="True" 
                    SortExpression="课程名" />
                <asp:BoundField DataField="分数" HeaderText="分数" SortExpression="分数" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
        <br />
        <p align="center"><a href="show.aspx">返回上一页</a></p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:cs1 %>" 
            SelectCommand="SELECT [学号], [课程名], [分数] FROM [score] WHERE ([学号] = @学号)">
            <SelectParameters>
                <asp:QueryStringParameter Name="学号" QueryStringField="sid" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
