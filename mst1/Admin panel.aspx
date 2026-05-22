<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin panel.aspx.cs" Inherits="mst1_Admin_panel" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="../mst2/Admin.css" />


    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            height: 20px;
            color:#6699ff;
            font-size:22px;
            text-align:center;
            font-weight:bold;
            font-size:medium;
            
            
        }
        .style3
        {
            font-size: x-large;
            color: #0000CC;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" method="post">
    <div class="main">
    
        <table class="style1">
            <tr>
                <td class="style2">
                    <br />
                    <table class="style1">
                        <tr>
                            <td align="center" id="aheader">
                                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/image/logo1.png" 
                                    Width="838px" />
                            </td>
                        </tr>
                    </table>
                    <br />
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
            <div id ="alogin"></div>
                <td align="center" class="style3" id="alogin">
                    <strong>Admin Login Panel</strong></td>
            </tr>
            <tr>
                <td align="center" class="style3" id="alogin">
                    <br />
                    <br />
                    <asp:TextBox ID="TextBox2" runat="server" placeholder="Enter Username" 
                        BorderColor="#3333FF" Width="219px" style="margin-bottom: 0px" 
                        Height="34px" CssClass="ltxt"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="center" class="style3" id="alogin">
                    <asp:TextBox ID="TextBox3" runat="server" placeholder="Enter Password"  
                        BorderColor="#3333FF" Width="219px" 
                        TextMode="Password" Height="34px" CssClass="ltxt"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="center" class="style3" id="alogin">
                    <asp:Button ID="Button1" runat="server" BackColor="#3333FF" ForeColor="White" 
                        onclick="Button1_Click1" Text="Login" Width="91px" CssClass="btnmenu" 
                        Height="26px" />
                        <br />
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/mst1/Home.aspx">Back to Home</asp:HyperLink>
                        <br /><br />
                    <asp:Label ID="Label1" runat="server" BackColor="White" BorderColor="White" 
                        Text="Label"></asp:Label>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
