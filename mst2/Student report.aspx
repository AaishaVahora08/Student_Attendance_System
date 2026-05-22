<%@ Page Title="" Language="C#" MasterPageFile="~/mst2/MasterPage2.master" AutoEventWireup="true" CodeFile="Student report.aspx.cs" Inherits="mst2_Student_report" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl">
    <tr>
        <td align="center" bgcolor="#3333FF" class="atitle" colspan="2" 
            style="font-size: xx-large; color: #FFFFFF; font-weight: 700">
            Student Report</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td align="center" colspan="2">
            Select Standard:<asp:DropDownList ID="DropDownList1" runat="server" 
                CssClass="ltxt" DataSourceID="SqlDataSource1" DataTextField="stdname" 
                DataValueField="stdname" Height="16px" Width="139px">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT * FROM [std_mst]"></asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td align="center" colspan="2">
            Select Division:<asp:DropDownList ID="DropDownList2" runat="server" 
                CssClass="ltxt" DataSourceID="SqlDataSource2" DataTextField="Divisionname" 
                DataValueField="Divisionname" Height="16px" Width="139px">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT * FROM [div_mst]"></asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td align="center" colspan="2">
            <asp:Button ID="Button10" runat="server" CssClass="btn" Text="Select" 
                Width="88px" onclick="Button10_Click" />
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                CellPadding="4" DataSourceID="SqlDataSource3" ForeColor="#333333" 
                GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="RollNo" HeaderText="RollNo" 
                        SortExpression="RollNo" />
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="MobileNo" HeaderText="MobileNo" 
                        SortExpression="MobileNo" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    <asp:BoundField DataField="Dob" HeaderText="Dob" SortExpression="Dob" />
                    <asp:BoundField DataField="Address" HeaderText="Address" 
                        SortExpression="Address" />
                    <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                    <asp:BoundField DataField="Pincode" HeaderText="Pincode" 
                        SortExpression="Pincode" />
                    <asp:ImageField DataImageUrlField="Image" HeaderText="image">
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
        </td>
    </tr>
    <tr>
        <td align="center" colspan="2">
            <br />
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                
                SelectCommand="SELECT [RollNo], [Name], [MobileNo], [Email], [Dob], [Address], [City], [Pincode], [Image] FROM [addstudent_mst] WHERE (([Standard] = @Standard) AND ([DivName] = @DivName))">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="Standard" 
                        PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="DropDownList2" Name="DivName" 
                        PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </td>
    </tr>
</table>
</asp:Content>

