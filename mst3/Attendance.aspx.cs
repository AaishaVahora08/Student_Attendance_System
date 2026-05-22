using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
public partial class mst3_Attendance : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\asp.net\App_Data\Database.mdf;Integrated Security=True;User Instance=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Visible = false;
    }
    protected void Button9_Click(object sender, EventArgs e)
    {
        

        con.Open();
        String query = "insert into attendance_mst(Standard,Division,RollNo,Attendance,Date)Values(@Standard,@Division,@RollNo,@Attendance,@Date)";
        SqlCommand cmd = new SqlCommand(query, con);
        cmd.Parameters.AddWithValue("@Standard", DropDownList1.Text);
        cmd.Parameters.AddWithValue("@Division", DropDownList2.Text);
        cmd.Parameters.AddWithValue("@RollNo", TextBox1.Text);
        cmd.Parameters.AddWithValue("@Attendance",DropDownList3.Text);
        cmd.Parameters.AddWithValue("@Date", TextBox2.Text);

        cmd.ExecuteNonQuery();
        Label1.Visible = true;
        Label1.Text = "Add Attendance";
        con.Close();
    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        TextBox2.Text = Calendar1.SelectedDate.ToString("d");
    }
}