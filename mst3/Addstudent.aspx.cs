using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class mst3_Addstudent : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\IRFAN\Desktop\asp.net\App_Data\Database.mdf;Integrated Security=True;User Instance=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Visible = false;
    }
    protected void Button8_Click(object sender, EventArgs e)
    {
        con.Open();
       
         FileUpload1.SaveAs(Server.MapPath(FileUpload1.FileName));
         String query = "insert into addstudent_mst(RollNo,Name,Email,MobileNo,Address,City,Pincode,Gender,Image,Standard,DivName,Dob,Username,Password) values(@RollNo,@Name,@Email,@MobileNo,@Address,@City,@Pincode,@Gender,@Image,@Standard,@DivName,@Dob,@Username,@Password)";
         SqlCommand cmd = new SqlCommand(query, con);
        cmd.Parameters.AddWithValue("@RollNo", TextBox1.Text);
        cmd.Parameters.AddWithValue("@Name", TextBox2.Text);
        cmd.Parameters.AddWithValue("@MobileNo", TextBox3.Text);
         cmd.Parameters.AddWithValue("@Email", TextBox4.Text);
        cmd.Parameters.AddWithValue("@Address", TextBox5.Text);
        cmd.Parameters.AddWithValue("@City", TextBox6.Text);
        cmd.Parameters.AddWithValue("@Pincode", TextBox7.Text);
        cmd.Parameters.AddWithValue("@standard", DropDownList1.SelectedItem.Text);
        cmd.Parameters.AddWithValue("@Dob", Convert.ToDateTime(DropDownList3.SelectedItem.Text + " " + DropDownList4.SelectedItem.Text + " " + DropDownList5.SelectedItem.Text));
        cmd.Parameters.AddWithValue("@Gender", DropDownList6.SelectedItem .Text );
        cmd.Parameters.AddWithValue("@Image", (FileUpload1.FileName));
        cmd.Parameters.AddWithValue("@DivName", DropDownList7.SelectedItem.Text);
        cmd.Parameters.AddWithValue("@Username", TextBox9.Text);
        cmd.Parameters.AddWithValue("@Password", TextBox10.Text);




        cmd.ExecuteNonQuery();
        Label1.Visible = true;
        Label1.Text = "Data successfully inserted";
        con.Close();
    }
}