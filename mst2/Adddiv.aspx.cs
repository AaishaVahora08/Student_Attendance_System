using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class mst2_Adddiv : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\IRFAN\Desktop\asp.net\App_Data\Database.mdf;Integrated Security=True;User Instance=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void Button10_Click(object sender, EventArgs e)
    {

        String query = "insert into div_mst(Standard,Divisionname,Seat) values(@Standard,@Divisionname,@Seat)";
        SqlCommand cmd = new SqlCommand(query, con);
        cmd.Parameters.AddWithValue("@Standard", DropDownList1.Text);
        cmd.Parameters.AddWithValue("@Divisionname",TextBox1.Text);
        cmd.Parameters.AddWithValue("@Seat",TextBox3.Text);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
    }
}