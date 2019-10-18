<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link rel="stylesheet" href="style/main.css" />
</head>
<body>
    
    <table class="table1">
        <caption style="font-size: 30px">学生管理系统</caption>
        <tr>
            <td class="td1">
                <p align="center"><a href="显示/student_info.aspx" target="f1">学生信息</a></p>
            </td>
            <td rowspan="2">
                <iframe class="iframe1" name="f1" src="显示/defalt.html"></iframe>
            </td>
            <td></td>
        </tr>
        <tr>
            <td class="td1"></td>
            <td></td>
        </tr>
        <tr>
            <td class="td1"></td>
            <td></td>
        </tr>
        <tr>
            <td class="td1"></td>
            <td></td>
            <td></td>
        </tr>
    </table>
    
</body>
</html>
