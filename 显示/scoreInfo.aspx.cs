using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class 显示_scoreInfo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string name;
        name = Request.QueryString["sname"];
        GridView1.Caption = name + "的成绩表";
    }
}