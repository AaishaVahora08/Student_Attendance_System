<%@ Page Title="" Language="C#" MasterPageFile="~/mst3/Staff.master" AutoEventWireup="true" CodeFile="Attendance Riport.aspx.cs" Inherits="mst3_Attendance_Riport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style8
    {
        width: 100%;
       
    }
        .style10
        {
            width: 631px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
   
        <table class="style8">
    <tr>
        <td align="center" bgcolor="Red" 
            style="font-size: xx-large; color: #FFFFFF; font-weight: 700" 
            class="tblhead">
            Attendance Report</td>
    </tr>
    <tr>
        <td align="center" class="style10">
            <br />
            Select Standard<asp:DropDownList ID="DropDownList1" runat="server" 
                DataSourceID="SqlDataSource2" DataTextField="stdname" DataValueField="stdname" 
                Width="133px">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT * FROM [std_mst]"></asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td align="center" class="style10">
            Select Division<asp:DropDownList ID="DropDownList2" runat="server" 
                DataSourceID="SqlDataSource3" DataTextField="Divisionname" 
                DataValueField="Divisionname" Width="144px">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT [Divisionname] FROM [div_mst]"></asp:SqlDataSource>
            <br />
            <asp:Button ID="Button9" runat="server" Text="Show attendance" Width="121px" 
                onclick="Button9_Click" />
        </td>
    </tr>
    <tr>
        <td align="center" class="style10">
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" 
                GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="RollNo" HeaderText="RollNo" 
                        SortExpression="RollNo" />
                    <asp:BoundField DataField="Attendance" HeaderText="Attendance" 
                        SortExpression="Attendance" />
                    <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT [RollNo], [Attendance], [Date] FROM [attendance_mst] WHERE (([Standard] = @Standard) AND ([Division] = @Division))">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="Standard" 
                        PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="DropDownList2" Name="Division" 
                        PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </td>
    </tr>
</table>
    </td>
</tr>
</asp:Content>

