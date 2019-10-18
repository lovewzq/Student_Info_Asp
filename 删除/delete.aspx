<%@ Page Language="C#" AutoEventWireup="true" CodeFile="delete.aspx.cs" Inherits="增加_t1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            font-size: xx-large;
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table bgcolor="#FFCC00" class="style1">
            <tr>
                <td class="style2" style="border: thin solid #FFFFFF;" colspan="2">
                    <strong>学生基本信息表</strong></td>
            </tr>
            <tr>
                <td style="border: thin solid #FFFFFF;">
                    <asp:GridView ID="GridView1" runat="server" align="center" AllowPaging="True" 
                        AutoGenerateColumns="False" CellPadding="4" DataKeyNames="学号" 
                        DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" PageSize="2">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="学号" HeaderText="学号" ReadOnly="True" 
                                SortExpression="学号" />
                            <asp:BoundField DataField="姓名" HeaderText="姓名" SortExpression="姓名" />
                            <asp:CommandField HeaderText="操作" SelectText="详细信息" ShowSelectButton="True" />
                        </Columns>
                        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                        <PagerSettings FirstPageText="首页" LastPageText="末页" 
                            Mode="NextPreviousFirstLast" NextPageImageUrl="~/pagepics/next.gif" 
                            NextPageText="" PreviousPageImageUrl="~/pagepics/pre.gif" PreviousPageText="" />
                        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                        <SortedAscendingCellStyle BackColor="#FDF5AC" />
                        <SortedAscendingHeaderStyle BackColor="#4D0000" />
                        <SortedDescendingCellStyle BackColor="#FCF6C0" />
                        <SortedDescendingHeaderStyle BackColor="#820000" />
                    </asp:GridView>
                </td>
                <td style="border: thin solid #FFFFFF;">
                    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
                        BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" 
                        CellPadding="3" CellSpacing="1" DataKeyNames="学号" DataSourceID="SqlDataSource2" 
                        GridLines="None" Height="50px" Width="125px"
                        OnItemDeleted="DetailsView1_ItemDeleted"
                        OnItemDeleting="DetailsView1_ItemDeleting"
                        >
                        <EditRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                        <Fields>
                            <asp:BoundField DataField="学号" HeaderText="学号" ReadOnly="True" 
                                SortExpression="学号" />
                            <asp:BoundField DataField="姓名" HeaderText="姓名" SortExpression="姓名" />
                            <asp:BoundField DataField="性别" HeaderText="性别" SortExpression="性别" />
                            <asp:BoundField DataField="民族" HeaderText="民族" SortExpression="民族" />
                            <asp:BoundField DataField="出生日期" HeaderText="出生日期" SortExpression="出生日期" />
                            <asp:BoundField DataField="班级名" HeaderText="班级名" SortExpression="班级名" />
                            <asp:ImageField DataImageUrlField="照片" HeaderText="本人近照">
                            </asp:ImageField>
                            <asp:CommandField ShowDeleteButton="True" />
                        </Fields>
                        <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                        <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                        <RowStyle BackColor="#DEDFDE" Font-Size="14px" ForeColor="Black" 
                            HorizontalAlign="Center" />
                    </asp:DetailsView>
                </td>
            </tr>
            <tr>
                <td style="border: thin solid #FFFFFF" colspan="2">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:cs1 %>" 
                        SelectCommand="SELECT DISTINCT [学号], [姓名] FROM [student]">
                    </asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:cs1 %>" 
                        SelectCommand="SELECT * FROM [student] WHERE ([学号] = @学号)" 
                        DeleteCommand="DELETE FROM [student] WHERE [学号] = @学号" 
                        InsertCommand="INSERT INTO [student] ([学号], [姓名], [性别], [民族], [出生日期], [班级名], [照片]) VALUES (@学号, @姓名, @性别, @民族, @出生日期, @班级名, @照片)" 
                        UpdateCommand="UPDATE [student] SET [姓名] = @姓名, [性别] = @性别, [民族] = @民族, [出生日期] = @出生日期, [班级名] = @班级名, [照片] = @照片 WHERE [学号] = @学号">
                        <DeleteParameters>
                            <asp:Parameter Name="学号" Type="String" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="学号" Type="String" />
                            <asp:Parameter Name="姓名" Type="String" />
                            <asp:Parameter Name="性别" Type="String" />
                            <asp:Parameter Name="民族" Type="String" />
                            <asp:Parameter Name="出生日期" Type="DateTime" />
                            <asp:Parameter Name="班级名" Type="String" />
                            <asp:Parameter Name="照片" Type="String" />
                        </InsertParameters>
                        <SelectParameters>
                            <asp:ControlParameter ControlID="GridView1" Name="学号" 
                                PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="姓名" Type="String" />
                            <asp:Parameter Name="性别" Type="String" />
                            <asp:Parameter Name="民族" Type="String" />
                            <asp:Parameter Name="出生日期" Type="DateTime" />
                            <asp:Parameter Name="班级名" Type="String" />
                            <asp:Parameter Name="照片" Type="String" />
                            <asp:Parameter Name="学号" Type="String" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
