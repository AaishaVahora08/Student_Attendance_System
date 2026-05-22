<%@ Page Title="" Language="C#" MasterPageFile="~/mst3/Staff.master" AutoEventWireup="true" CodeFile="Addstudent.aspx.cs" Inherits="mst3_Addstudent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style6
        {
            font-size: large;
            color: #FF0000;
        }
        .style7
        {
            height: 23px;
            font-size: large;
            width: 407px;
        }
        .style8
        {
            font-size: large;
            color: #FF0000;
            height: 26px;
        width: 648px;
    }
        .style9
        {
            height: 26px;
        }
    .ltxt
{
    height:30px;
    width:200px;
    padding-left:8px;
    border:solid 1px #ccc;
    margin-top:3px;
}
        .style10
        {
            font-size: large;
            color: #FF0000;
            height: 30px;
        width: 648px;
    }
        .style11
        {
            height: 30px;
        }
    .style12
    {
        font-size: large;
        color: #FF0000;
        width: 648px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl">
        <tr>
            <td align="center"  class="tblhead" colspan="2" 
                style="font-size: xx-large">
                ADD STUDENT</td>
        </tr>
        <tr>
            <td align="char" class="style12">
                &nbsp;</td>
            <td align="char">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style12">
                Roll no</td>
            <td align="char">
                <asp:TextBox ID="TextBox1" runat="server" Height="32px" Width="216px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right" class="style12">
                Student name&nbsp;
            </td>
            <td align="char">
                <asp:TextBox ID="TextBox2" runat="server" Height="32px" Width="216px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right" class="style12">
                Standard</td>
            <td align="char">
                <asp:DropDownList ID="DropDownList1" runat="server" 
                    DataSourceID="SqlDataSource1" DataTextField="stdname" DataValueField="stdname" 
                    Height="32px" Width="216px">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT * FROM [std_mst]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td align="right" class="style12">
                Div Name
            </td>
            <td align="char">
                <asp:DropDownList ID="DropDownList7" runat="server" 
                    DataSourceID="SqlDataSource2" DataTextField="Divisionname" 
                    DataValueField="Divisionname">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT * FROM [div_mst]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td align="right" class="style12">
                Mobile No</td>
            <td align="char">
                <asp:TextBox ID="TextBox3" runat="server" Height="32px" Width="216px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right" class="style10">
                Email</td>
            <td class="style11" align="char">
                <asp:TextBox ID="TextBox4" runat="server" Height="32px" Width="216px"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="TextBox4" ErrorMessage="Enter valid email-id" 
                    ForeColor="Red" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td align="right" class="style8">
                Dob</td>
            <td class="style9" align="char">
                <asp:DropDownList ID="DropDownList3" runat="server" ForeColor="Red">
                    <asp:ListItem>DD</asp:ListItem>
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                </asp:DropDownList>
                <asp:DropDownList ID="DropDownList4" runat="server" ForeColor="Red">
                    <asp:ListItem>MM</asp:ListItem>
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                    <asp:ListItem>6</asp:ListItem>
                    <asp:ListItem>7</asp:ListItem>
                    <asp:ListItem>8</asp:ListItem>
                    <asp:ListItem>9</asp:ListItem>
                    <asp:ListItem>10</asp:ListItem>
                    <asp:ListItem>11</asp:ListItem>
                    <asp:ListItem>12</asp:ListItem>
                </asp:DropDownList>
                <asp:DropDownList ID="DropDownList5" runat="server" ForeColor="Red">
                    <asp:ListItem>YY</asp:ListItem>
                    <asp:ListItem>2001</asp:ListItem>
                    <asp:ListItem>2002</asp:ListItem>
                    <asp:ListItem>2003</asp:ListItem>
                    <asp:ListItem>2004</asp:ListItem>
                    <asp:ListItem>2005</asp:ListItem>
                    <asp:ListItem>2006</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td align="right" class="style12">
                Address</td>
            <td align="char">
                <asp:TextBox ID="TextBox5" runat="server" Height="32px" TextMode="MultiLine" 
                    Width="216px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right" class="style12">
                City</td>
            <td align="char">
                <asp:TextBox ID="TextBox6" runat="server" Height="32px" Width="216px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right" class="style12">
                Pincode</td>
            <td align="char">
                <asp:TextBox ID="TextBox7" runat="server" Height="32px" Width="216px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right" class="style12">
                Gender</td>
            <td align="char">
                <asp:DropDownList ID="DropDownList6" runat="server" Height="49px" Width="216px" 
                    CssClass="ltxt">
                    <asp:ListItem>Select</asp:ListItem>
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td align="right" class="style12">
                Image</td>
            <td align="char">
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
        </tr>
        <tr>
            <td align="right" class="style12">
                Username</td>
            <td align="char">
                <asp:TextBox ID="TextBox9" runat="server" Height="32px" Width="216px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right" class="style12">
                Password</td>
            <td align="char">
                <asp:TextBox ID="TextBox10" runat="server" Height="32px" TextMode="Password" 
                    Width="216px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right" class="style12">
                Conform Password </td>
            <td align="char">
                <asp:TextBox ID="TextBox11" runat="server" Height="32px" TextMode="Password" 
                    Width="216px"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="TextBox10" ControlToValidate="TextBox11" 
                    ErrorMessage="conform your password" ForeColor="Red">*</asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td align="right" class="style12">
                &nbsp;</td>
            <td align="char">
                <asp:Label ID="Label1" runat="server" Text="Label" ForeColor="Red"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="right" class="style6" colspan="2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td align="right" class="style12">
                <asp:Button ID="Button8" runat="server" Height="36px" Text="Submit" 
                    Width="147px" onclick="Button8_Click" BackColor="Red" 
                    style="font-weight: 700" />
            </td>
            <td align="char">
                &nbsp; &nbsp;<asp:Button ID="Button9" runat="server" Height="36px" Text="Reset" 
                    Width="147px" BackColor="Red" style="font-weight: 700" />
            </td>
        </tr>
    </table>
</asp:Content>

