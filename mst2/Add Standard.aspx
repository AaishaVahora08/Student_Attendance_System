<%@ Page Title="" Language="C#" MasterPageFile="~/mst2/MasterPage2.master" AutoEventWireup="true" CodeFile="Add Standard.aspx.cs" Inherits="mst2_Add_Standard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl">
    <tr>
        <td align="center" bgcolor="#3333FF" style="font-size: x-large; color: #FFFFFF" 
            class="atitle">
            Add Standard</td>
    </tr>
    <tr>
        <td align="center" style="font-size: large; color: #0000FF">
            <br />
            <br />
            Standard Name<asp:TextBox ID="TextBox1" runat="server" Width="136px" 
                CssClass="ltxt"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td align="center">
            <asp:Button ID="Button10" runat="server" BackColor="#3333FF" ForeColor="White" 
                onclick="Button10_Click" Text="ADD" Width="86px" CssClass="btn" />
        </td>
    </tr>
    <tr>
        <td align="center">
            <br />
            <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" 
                GridLines="None" AutoGenerateColumns="False" AutoGenerateEditButton="True" 
                DataSourceID="SqlDataSource1">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="stdname" HeaderText="stdname" 
                        SortExpression="stdname" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT * FROM [std_mst]"></asp:SqlDataSource>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
        </td>
    </tr>
</table>
</asp:Content>

