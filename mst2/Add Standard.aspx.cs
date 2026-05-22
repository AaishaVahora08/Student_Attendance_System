using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class mst2_Add_Standard : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\IRFAN\Desktop\asp.net\App_Data\Database.mdf;Integrated Security=True;User Instance=True");

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button10_Click(object sender, EventArgs e)
    {
        String query = "insert into std_mst(stdname) values(@stdname)";
        SqlCommand cmd = new SqlCommand(query, con);
        cmd.Parameters.AddWithValue("@stdname", TextBox1.Text);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();

    }
}
      