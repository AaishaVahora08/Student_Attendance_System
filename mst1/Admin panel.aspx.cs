using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class mst1_Admin_panel : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Visible = false;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
    protected void Button1_Click1(object sender, EventArgs e)
    {

        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\IRFAN\Desktop\asp.net\App_Data\Database.mdf;Integrated Security=True;User Instance=True");
        SqlCommand cmd = new SqlCommand("select * from login_mst where username=@username and password=@password", con);
        cmd.Parameters.AddWithValue("@username", TextBox2.Text);
        cmd.Parameters.AddWithValue("@password", TextBox3.Text);
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        con.Open();
        int i = cmd.ExecuteNonQuery();
        con.Close();
        if (dt.Rows.Count > 0)
        {
            Response.Redirect("~/mst2/Admin_menu.aspx");
        }
        else
        {
            Label1.Visible = true;
            Label1.Text = "You're username and password is incorrect";
            Label1.ForeColor = System.Drawing.Color.Red;

        }
    }
}