using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class mst3_password : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label4.Visible = false;
    }
    protected void Button8_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\asp.net\App_Data\Database.mdf;Integrated Security=True;User Instance=True");
        SqlCommand cmd = new SqlCommand("Update addstaff_mst set password = '" + TextBox4.Text + "' where Email = '" + TextBox1.Text + "'", con);
        con.Open();
        cmd.ExecuteNonQuery();
        if (TextBox4.Text == TextBox5.Text)
        {
            Response.Redirect("~/mst1/Home.aspx");
        }
        else
        {
            Label4.Visible = true;
            Label4.Text = ("password not change !!");
        }
        con.Close(); 
    }
}