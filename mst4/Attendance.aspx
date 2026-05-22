<%@ Page Title="" Language="C#" MasterPageFile="~/mst4/student.master" AutoEventWireup="true" CodeFile="Attendance.aspx.cs" Inherits="mst4_Attendance" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style3
    {
        height: 30px;
        color: #990099;
    }
    .style4
    {
        color: #6600CC;
    }
        .style5
        {
            width: 711px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl">
    <tr>
        <td align="center" bgcolor="#990099" colspan="2" 
            style="font-size: xx-large; color: #FFFFFF; font-weight: 700">
            Attendance Report</td>
    </tr>
    <tr>
        <td class="style5">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td align="center" colspan="2" style="color: #9900CC">
            Select St<span class="style4">a</span>ndard:<asp:DropDownList 
                ID="DropDownList2" runat="server" DataSourceID="SqlDataSource1" 
                DataTextField="stdname" DataValueField="stdname" ForeColor="#990099" 
                Width="118px">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT * FROM [std_mst]"></asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td align="center" class="style3" colspan="2">
            Select Division:<asp:DropDownList ID="DropDownList3" runat="server" 
                DataSourceID="SqlDataSource2" DataTextField="Divisionname" 
                DataValueField="Divisionname" ForeColor="#990099" Width="118px">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT [Divisionname] FROM [div_mst]"></asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td align="center" colspan="2" style="color: #990099">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            Roll No :<asp:TextBox ID="TextBox1" runat="server" ForeColor="#6600CC"></asp:TextBox>
            <br />
            <br />
        </td>
    </tr>
    <tr>
        <td align="center" colspan="2">
            <asp:Button ID="Button7" runat="server" BackColor="#990099" ForeColor="White" 
                style="font-weight: 700" Text="Select" Width="105px" CssClass="btn" 
                onclick="Button7_Click" />
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" 
                CellPadding="3" CellSpacing="1" DataSourceID="SqlDataSource3" GridLines="None">
                <Columns>
                    <asp:BoundField DataField="Attendance" HeaderText="Attendance" 
                        SortExpression="Attendance" />
                    <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                </Columns>
                <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
                <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#594B9C" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#33276A" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT [Attendance], [Date] FROM [attendance_mst] WHERE (([Standard] = @Standard) AND ([Division] = @Division) AND ([RollNo] = @RollNo))">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList2" Name="Standard" 
                        PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="DropDownList3" Name="Division" 
                        PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="TextBox1" Name="RollNo" PropertyName="Text" 
                        Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </td>
    </tr>
</table>
</asp:Content>

