<%@ Page Title="" Language="C#" MasterPageFile="~/mst2/MasterPage2.master" AutoEventWireup="true" CodeFile="StaffReportaspx.aspx.cs" Inherits="mst2_StaffReportaspx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl">
    <tr>
        <td align="center"  style="font-size: x-large; color: #FFFFFF" 
            bgcolor="#3333FF" class="atitle">
            Staff Report</td>
    </tr>
    <tr>
        <td align="center"  style="font-size: large; color: #FFFFFF">
            Staf<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" 
                GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    <asp:BoundField DataField="MobileNo" HeaderText="MobileNo" 
                        SortExpression="MobileNo" />
                    <asp:BoundField DataField="Address" HeaderText="Address" 
                        SortExpression="Address" />
                    <asp:BoundField DataField="Qualification" HeaderText="Qualification" 
                        SortExpression="Qualification" />
                    <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                    <asp:BoundField DataField="Pincode" HeaderText="Pincode" 
                        SortExpression="Pincode" />
                    <asp:BoundField DataField="Gender" HeaderText="Gender" 
                        SortExpression="Gender" />
                    <asp:BoundField DataField="Stdname" HeaderText="Stdname" 
                        SortExpression="Stdname" />
                    <asp:BoundField DataField="Username" HeaderText="Username" 
                        SortExpression="Username" />
                    <asp:BoundField DataField="Div" HeaderText="Div" SortExpression="Div" />
                    <asp:ImageField DataImageUrlField="Photo" HeaderText="image">
                        <ControlStyle Height="100px" Width="100px" />
                    </asp:ImageField>
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
                
                
                SelectCommand="SELECT [Name], [Email], [MobileNo], [Address], [Qualification], [City], [Pincode], [Gender], [Photo], [Stdname], [Username], [Div] FROM [addstaff_mst]">
            </asp:SqlDataSource>
            f Report</td>
    </tr>
    <tr>
        <td align="center">
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

