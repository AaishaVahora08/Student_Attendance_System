<%@ Page Title="" Language="C#" MasterPageFile="~/mst4/student.master" AutoEventWireup="true" CodeFile="Password.aspx.cs" Inherits="mst4_Password" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            height: 30px;
        }
        .style4
        {
            width: 612px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl">
        <tr>
            <td align="center" bgcolor="#9900CC" colspan="2" 
                style="font-size: xx-large; color: #FFFFFF">
                Change Password</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <asp:Label ID="Label1" runat="server" Text="Email-id:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox1" runat="server" Width="142px"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="Enter valid email-id" 
                    ForeColor="Red" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <asp:Label ID="Label2" runat="server" Text="New Password:"></asp:Label>
                <asp:TextBox ID="TextBox2" runat="server" Width="142px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <asp:Label ID="Label3" runat="server" Text="ConformPassword:"></asp:Label>
                <asp:TextBox ID="TextBox3" runat="server" Width="142px"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="TextBox2" ControlToValidate="TextBox3" 
                    ErrorMessage="conform your password" ForeColor="Red">*</asp:CompareValidator>
                <br />
                <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="center" class="style3" colspan="2">
                <asp:Button ID="Button7" runat="server" onclick="Button7_Click" Text="Submit" 
                    Width="89px" BackColor="#9900CC" ForeColor="White" 
                    style="font-weight: 700" />
            </td>
        </tr>
    </table>
</asp:Content>

