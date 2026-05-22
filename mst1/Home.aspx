<%@ Page Title="" Language="C#" MasterPageFile="~/mst1/MasterPage1.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="mst1_Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1" style="width: 100%">
    <tr>
        <td align="left">
            <asp:ImageButton ID="ImageButton4" runat="server" 
                ImageUrl="~/image/IMG-20231116-WA0004.jpg" Width="828px" />
        </td>
    </tr>
    <tr>
        <td align="left">
            <asp:ImageButton ID="ImageButton5" runat="server" ImageUrl="~/image/mm.jpg" 
                Width="826px" Height="164px" />
        </td>
    </tr>
</table>
    <br />
    <br />
<br />
</asp:Content>

