using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class 增加_t1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
    {
        DetailsView1.Visible = true;
        GridView1.Visible = false;
    }

    protected void DetailsView1_ItemUpdated(object sender, DetailsViewUpdatedEventArgs e)
    {
        GridView1.DataBind();
        Response.Write("<script>alert('数据更新成功！ ')</script>");
        DetailsView1.Visible = false;
        GridView1.Visible = true;
    }
}