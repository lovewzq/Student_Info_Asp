<%@ Page Language="C#" AutoEventWireup="true" CodeFile="student_info.aspx.cs" Inherits="显示_student_info" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 100%;
            height: 600px;
        }
        a{
            text-decoration: none;
            color: #000000;
        }
        .tag a:hover{
            color: aquamarine;
        }
        .tag a:active{
            color: aqua;
        }


    </style>
</head>
<body>

    <table class="auto-style1">
        <tr>
            <td>
                <span class="tag"><a href="#">学生信息</a></span>
                <span class="tag"><a href="../修改/rewrite.aspx" target="f2">修改信息</a></span>
                <span class="tag"><a href="#">删除信息</a></span>
            </td>
        </tr>
        <tr>
            <td>
                <iframe name="f2" class="auto-style2"></iframe>
            </td>
        </tr>
    </table>

</body>
</html>
