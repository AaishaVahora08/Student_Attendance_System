using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class mst1_MasterPage1 : System.Web.UI.MasterPage
{
    SqlConnection con;
    SqlCommand cmd;
    SqlDataAdapter dap;
    SqlDataReader dr;
    DataSet ds;
    protected void Page_Load(object sender, EventArgs e)
    {
        Stafflbl.Visible = false;
        Label1.Visible = false;
        con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\IRFAN\Desktop\asp.net\App_Data\Database.mdf;Integrated Security=True;User Instance=True");
        con.Open();
    }
    protected void Button7_Click(object sender, EventArgs e)
    {
        cmd = new SqlCommand("select * from addstudent_mst where Username=@Username and Password=@Password", con);
        cmd.Parameters.AddWithValue("@Username", TextBox1.Text);
  
        cmd.Parameters.AddWithValue("@Password", TextBox2.Text);
        dap =new  SqlDataAdapter();
        dap.SelectCommand = cmd;
        ds = new DataSet();
        if (dap.Fill(ds) > 0)
        {

            
            Label1.Visible = true;
            Label1.Text = "Incorrect";
            Stafflbl.ForeColor = System.Drawing.Color.Red;
        }
        else
        {
            Session["Name"] = TextBox1.Text;
            Response.Redirect("~/mst4/my profile.aspx");
        }

    }
        
    protected void Button4_Click(object sender, EventArgs e)
    {

    }
    protected void Button8_Click(object sender, EventArgs e)
    {
        
        cmd = new SqlCommand("select * from addstaff_mst where Username=@Username and Password=@Password", con);
        cmd.Parameters.AddWithValue("@Username", TextBox3.Text);
  
        cmd.Parameters.AddWithValue("@Password", TextBox4.Text);
        dap =new  SqlDataAdapter();
        dap.SelectCommand = cmd;
        ds = new DataSet();
        if (dap.Fill(ds) > 0)
        {

            Stafflbl.Visible = true;
            Stafflbl.Text = "Incorrect";
            Stafflbl.ForeColor = System.Drawing.Color.Red;
        }
        else
        {
            
            Session["Name"] = TextBox3.Text;
            Response.Redirect("~/mst3/Home.aspx");
        }

    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {

    }
}

