<%@ Page Title="" Language="C#" MasterPageFile="~/mst4/student.master" AutoEventWireup="true" CodeFile="my profile.aspx.cs" Inherits="mst4_my_profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style3
    {
        color: #FFFFFF;
    }
    .style4
    {
        height: 23px;
    }
    .style5
    {
        height: 18px;
        font-size: x-large;
        color: #990099;
    }
    .style6
    {
        height: 23px;
        width: 680px;
    }
    .style7
    {
        font-size: x-large;
        color: #990099;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl">
    <tr>
        <td align="center" bgcolor="#990099" class="style3" colspan="2" 
            style="font-size: xx-large">
            My Profile</td>
    </tr>
    <tr>
        <td class="style6">
        </td>
        <td class="style4">
        </td>
    </tr>
    <tr>
        <td align="center" class="style5" colspan="2">
            Name:<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </td>
    </tr>
    <tr>
        <td align="right" class="style7">
            Standard Name</td>
        <td align="left">
            <asp:DropDownList ID="DropDownList1" runat="server" 
                DataSourceID="SqlDataSource1" DataTextField="stdname" DataValueField="stdname" 
                Width="155px">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td align="right" class="style7">
            Division Name </td>
        <td align="left">
            <asp:DropDownList ID="DropDownList2" runat="server" 
                DataSourceID="SqlDataSource2" DataTextField="Divisionname" 
                DataValueField="Divisionname" Width="155px">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td align="center" class="style7" colspan="2">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                onselectedindexchanged="GridView1_SelectedIndexChanged" 
                style="font-size: large; text-align: left">
                <Columns>
                    <asp:BoundField DataField="reasion" HeaderText="reasion" />
                    <asp:BoundField DataField="days" HeaderText="days" />
                    <asp:BoundField DataField="rollno" HeaderText="rollno" />
                    <asp:TemplateField HeaderText="approval">
                        <ItemTemplate>
                            <asp:CheckBox ID="CheckBox1" runat="server" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server"></asp:SqlDataSource>
            <br />
            <asp:Button ID="Button7" runat="server" Text="Button" Width="96px" 
                CssClass="btn" onclick="Button7_Click" />
        </td>
    </tr>
    <tr>
        <td class="style7" align="center" colspan="2">
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT * FROM [std_mst]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT * FROM [div_mst]"></asp:SqlDataSource>
        </td>
    </tr>
</table>
</asp:Content>

