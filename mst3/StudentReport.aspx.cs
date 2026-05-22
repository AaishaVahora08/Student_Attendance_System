using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class mst3_StudentReport : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        GridView1.Visible = false;
    }
    protected void Button8_Click(object sender, EventArgs e)
    {
        GridView1.Visible = true;
    }
}