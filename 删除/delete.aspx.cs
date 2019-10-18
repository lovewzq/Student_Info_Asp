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
    protected void DetailsView1_ItemDeleted(object sender, DetailsViewDeletedEventArgs e)
    {
        GridView1.DataBind();
        Response.Write("<script>alert('成功删除一条学生记录')</script>");
    }
    protected void DetailsView1_ItemDeleting(Object sender, DetailsViewDeleteEventArgs e)
    {
        Response.Write("<script>confirm('确定删除吗？ ')</script>");
    }

}