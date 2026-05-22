<%@ Page Title="" Language="C#" MasterPageFile="~/mst3/Staff.master" AutoEventWireup="true" CodeFile="StudentReport.aspx.cs" Inherits="mst3_StudentReport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style7
        {
            width: 100%;
        }
        .style8
        {
            font-size: x-large;
            color: #FF0000;
        }
        .style9
        {
            font-size: large;
            color: #FF0000;
            width: 584px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl">
        <tr>
            <td align="center" bgcolor="Red" colspan="2" 
                style="font-size: xx-large; color: #FFFFFF; font-weight: 700" 
                class="tblhead">
                Student Report</td>
        </tr>
        <tr>
            <td align="right" class="style9">
&nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style9">
                Select Standard
            </td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" 
                    DataSourceID="SqlDataSource1" DataTextField="stdname" DataValueField="stdname" 
                    Height="32px" Width="167px">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT * FROM [std_mst]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td align="right" class="style9">
                Select Division</td>
            <td>
                <asp:DropDownList ID="DropDownList2" runat="server" 
                    DataSourceID="SqlDataSource2" DataTextField="Divisionname" 
                    DataValueField="Divisionname" Height="32px" Width="167px">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT * FROM [div_mst]"></asp:SqlDataSource>
&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button8" runat="server" Text="Select" Width="94px" 
                    CssClass="btnmenu" onclick="Button8_Click" />
            </td>
        </tr>
        <tr>
            <td align="center" class="style8" colspan="2">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    CellPadding="4" DataSourceID="SqlDataSource3" ForeColor="#333333" 
                    GridLines="None" style="font-size: large">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" />
                        <asp:BoundField DataField="RollNo" HeaderText="RollNo" 
                            SortExpression="RollNo" />
                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                        <asp:BoundField DataField="DivName" HeaderText="DivName" 
                            SortExpression="DivName" />
                        <asp:BoundField DataField="MobileNo" HeaderText="MobileNo" 
                            SortExpression="MobileNo" />
                        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                        <asp:BoundField DataField="Dob" HeaderText="Dob" SortExpression="Dob" />
                        <asp:BoundField DataField="Address" HeaderText="Address" 
                            SortExpression="Address" />
                        <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                        <asp:BoundField DataField="Pincode" HeaderText="Pincode" 
                            SortExpression="Pincode" />
                        <asp:BoundField DataField="Gender" HeaderText="Gender" 
                            SortExpression="Gender" />
                        <asp:ImageField DataImageUrlField="Image" HeaderText="image">
                            <ControlStyle Height="70px" Width="70px" />
                        </asp:ImageField>
                    </Columns>
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                    <SortedAscendingCellStyle BackColor="#FDF5AC" />
                    <SortedAscendingHeaderStyle BackColor="#4D0000" />
                    <SortedDescendingCellStyle BackColor="#FCF6C0" />
                    <SortedDescendingHeaderStyle BackColor="#820000" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    
                    SelectCommand="SELECT [RollNo], [Name], [DivName], [MobileNo], [Email], [Dob], [Address], [City], [Pincode], [Image], [Gender] FROM [addstudent_mst] WHERE (([Standard] = @Standard) AND ([DivName] = @DivName))" 
                    DeleteCommand="DELETE FROM [addstudent_mst]  WHERE [Rollno] = @Rollno">
                    <DeleteParameters>
                        <asp:Parameter Name="Rollno" />
                    </DeleteParameters>
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

