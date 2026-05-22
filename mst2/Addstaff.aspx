<%@ Page Title="" Language="C#" MasterPageFile="~/mst2/MasterPage2.master" AutoEventWireup="true" CodeFile="Addstaff.aspx.cs" Inherits="mst2_Addstaff" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style5
        {
            height: 26px;
        }
        .style7
        {
            font-size: large;
            color: #0000FF;
        }
        .style8
        {
            width: 581px;
            font-size: large;
            height: 24px;
            color: #0000FF;
        }
        .style9
        {
            height: 24px;
        }
        .style10
        {
            font-size: large;
            color: #0000FF;
            height: 24px;
        }
        .style11
        {
            font-size: large;
            color: #0000FF;
            height: 36px;
        }
        .style12
        {
            height: 36px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl">
        <tr>
            <td align="center" colspan="2" 
                style= "font-size:x-large";  class="atitle" bgcolor="#3333FF">
                Add Staff</td>
        </tr>
        <tr>
            <td align="center" colspan="2" style="font-size: large; color: #0000FF">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="lbl" style="font-size: large; color: #0000FF">
                Name</td>
            <td class="style5">
                <asp:TextBox ID="TextBox1" runat="server" Height="32px" Width="216px" 
                    CssClass="ltxt"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right" class="style11">
                Email</td>
            <td class="style12">
                <asp:TextBox ID="TextBox2" runat="server" Height="32px" Width="216px" 
                    CssClass="ltxt"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ErrorMessage="Incorrect Email-id" ForeColor="#CC0000" 
                    ControlToValidate="TextBox2" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td align="right" class="style8">
                Mobile No&nbsp; </td>
            <td class="style9">
                <asp:TextBox ID="TextBox3" runat="server" Height="32px" Width="216px" 
                    CssClass="ltxt"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right" class="style7">
                Qualification</td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" Height="32px" Width="216px" 
                    CssClass="ltxt"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right" class="style7">
                Address</td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server" Height="32px" TextMode="MultiLine" 
                    Width="216px" CssClass="ltxt"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right" class="style7">
                City</td>
            <td>
                <asp:TextBox ID="TextBox11" runat="server" Height="32px" Width="216px" 
                    CssClass="ltxt"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right" class="style7">
                PincodeNo</td>
            <td>
                <asp:TextBox ID="TextBox10" runat="server" Height="32px" Width="216px" 
                    CssClass="ltxt"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right" class="style7">
                Gender</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" Height="49px" Width="216px" 
                    CssClass="ltxt">
                    <asp:ListItem>Select</asp:ListItem>
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td align="right" class="style8">
                Photo</td>
            <td class="style9">
                <asp:FileUpload ID="FileUpload1" runat="server" CssClass="ltxt" />
            </td>
        </tr>
        <tr>
            <td align="right" class="style7">
                Std name</td>
            <td>
                <asp:DropDownList ID="DropDownList2" runat="server" Height="49px" Width="216px" 
                    DataSourceID="SqlDataSource1" DataTextField="stdname" 
                    DataValueField="stdname" CssClass="ltxt">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT * FROM [std_mst]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td align="right" class="style7">
                Div Name</td>
            <td>
                <asp:DropDownList ID="DropDownList3" runat="server" CssClass="ltxt" 
                    DataSourceID="SqlDataSource2" DataTextField="Divisionname" 
                    DataValueField="Divisionname">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT [Divisionname] FROM [div_mst]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td align="right" class="style11">
                Username</td>
            <td class="style12">
                <asp:TextBox ID="TextBox7" runat="server" Height="32px" Width="216px" 
                    CssClass="ltxt"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right" class="style7">
                Password</td>
            <td>
                <asp:TextBox ID="TextBox8" runat="server" Height="32px" Width="216px" 
                    TextMode="Password" CssClass="ltxt"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right" class="style10">
                Conform Password&nbsp; </td>
            <td class="style9">
                <asp:TextBox ID="TextBox9" runat="server" Height="32px" Width="216px" 
                    CssClass="ltxt" TextMode="Password"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ErrorMessage="Conform Your Password" ForeColor="#CC0000" 
                    ControlToCompare="TextBox9" ControlToValidate="TextBox8">*</asp:CompareValidator>
                <br />
            </td>
        </tr>
        <tr>
            <td align="center" class="style10" colspan="2">
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                <br />
                <br />
                <asp:Button ID="Button10" runat="server" BackColor="#3333FF" ForeColor="White" 
                    onclick="Button10_Click" Text="ADD" Width="105px" Height="26px" 
                    CssClass="btn" />
            &nbsp;
            </td>
        </tr>
        <tr>
            <td align="center" class="style7" colspan="2">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

