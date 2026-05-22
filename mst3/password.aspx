<%@ Page Title="" Language="C#" MasterPageFile="~/mst3/Staff.master" AutoEventWireup="true" CodeFile="password.aspx.cs" Inherits="mst3_password" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style7
        {
            width: 92%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl">
        <tr>
            <td align="center" bgcolor="Red" colspan="2" 
                style="font-size: x-large; color: #FFFFFF; font-weight: 700" 
                class="tblhead">
                Change Password</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <asp:Label ID="Label1" runat="server" style="color: #FF0000" Text="Email id:"></asp:Label>
&nbsp;
                <asp:TextBox ID="TextBox1" runat="server" Width="145px"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="Enter Valid Email-id" 
                    ForeColor="Red" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <asp:Label ID="Label2" runat="server" style="color: #FF0000" 
                    Text="New Password:"></asp:Label>
&nbsp;
                <asp:TextBox ID="TextBox4" runat="server" TextMode="Password" Width="145px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <asp:Label ID="Label3" runat="server" style="color: #FF0000" 
                    Text="Conform Password:"></asp:Label>
                <asp:TextBox ID="TextBox5" runat="server" TextMode="Password" Width="145px"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="TextBox4" ControlToValidate="TextBox5" 
                    ErrorMessage="conform your password" ForeColor="Red">*</asp:CompareValidator>
                <br />
                <asp:Label ID="Label4" runat="server" Text="lblerror"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <asp:Button ID="Button8" runat="server" onclick="Button8_Click" Text="Submit" 
                    Width="92px" BackColor="Red" ForeColor="White" style="font-weight: 700" />
            </td>
        </tr>
    </table>
</asp:Content>

