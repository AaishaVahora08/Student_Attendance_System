using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class mst2_Addstaff : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\IRFAN\Desktop\asp.net\App_Data\Database.mdf;Integrated Security=True;User Instance=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Visible = false;
    }
    protected void Button10_Click(object sender, EventArgs e)
    {
                                     
        
            FileUpload1.SaveAs(Server.MapPath( FileUpload1.FileName));

        String query = "insert into addstaff_mst(Name,Div,Email,MobileNo,Qualification,Address,City,Pincode,Gender,Photo,Stdname,Username,Password) values(@Name,@Div,@Email,@MobileNo,@Qualification,@Address,@City,@Pincode,@Gender,@Photo,@Stdname,@Username,@Password)";
        

        SqlCommand cmd = new SqlCommand(query, con);
        cmd.Parameters.AddWithValue("@Name", TextBox1.Text);
        cmd.Parameters.AddWithValue("@Email", TextBox2.Text);
        cmd.Parameters.AddWithValue("@MobileNo", TextBox3.Text);
        cmd.Parameters.AddWithValue("@Qualification", TextBox4.Text);
        cmd.Parameters.AddWithValue("@Address", TextBox5.Text);
        cmd.Parameters.AddWithValue("@City", TextBox11.Text);
        cmd.Parameters.AddWithValue("@Pincode", TextBox10.Text);
        cmd.Parameters.AddWithValue("@Gender",DropDownList1.Text);
        cmd.Parameters.AddWithValue("@Photo", (FileUpload1.FileName));
      
        cmd.Parameters.AddWithValue("@stdname",DropDownList2.Text);
        cmd.Parameters.AddWithValue("@Div", DropDownList3.Text);
        cmd.Parameters.AddWithValue("@Username", TextBox7.Text);
        cmd.Parameters.AddWithValue("@Password", TextBox8.Text);



        con.Open();
        cmd.ExecuteNonQuery();
        Label1.Visible = true;
        Label1.Text = "Data successfully inserted";
        con.Close();
    }
    protected void Button11_Click(object sender, EventArgs e)
    {
       
       


    }
}
