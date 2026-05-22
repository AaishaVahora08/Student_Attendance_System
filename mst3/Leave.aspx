<%@ Page Title="" Language="C#" MasterPageFile="~/mst3/Staff.master" AutoEventWireup="true" CodeFile="Leave.aspx.cs" Inherits="mst3_Leave" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style10
        {
            width: 100%;
        }
        .style11
        {
            height: 6px;
            font-size: xx-large;
            color: #FFFFFF;
            font-weight: 700;
        }
        .style12
        {
            width: 498px;
            font-size: large;
            color: #FF0000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    
        <table class="style10">
        <tr>
            <td align="center" bgcolor="Red" class="style11" colspan="2">
                Leave</td>
        </tr>
        <tr>
            <td class="style12">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style12">
                Status</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" Height="20px" Width="113px">
                    <asp:ListItem>Status</asp:ListItem>
                    <asp:ListItem>Approve</asp:ListItem>
                    <asp:ListItem>Not approve</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style12">
                &nbsp;</td>
            <td>
                <asp:Button ID="Button9" runat="server" BackColor="Red" CssClass="style12" 
                    ForeColor="White" onclick="Button9_Click" Text="Add" Width="79px" />
                <br />
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" 
                    GridLines="None" onselectedindexchanged="GridView1_SelectedIndexChanged">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="LeaveReasone" HeaderText="LeaveReasone" 
                            SortExpression="LeaveReasone" />
                        <asp:BoundField DataField="Days" HeaderText="Days" SortExpression="Days" />
                        <asp:BoundField DataField="RollNo" HeaderText="RollNo" 
                            SortExpression="RollNo" />
                        <asp:BoundField DataField="Standard" HeaderText="Standard" 
                            SortExpression="Standard" />
                        <asp:BoundField DataField="Division" HeaderText="Division" 
                            SortExpression="Division" />
                        <asp:TemplateField HeaderText="Status">
                            <ItemTemplate>
                                <asp:DropDownList ID="DropDownList2" runat="server">
                                    <asp:ListItem>status</asp:ListItem>
                                    <asp:ListItem>approve</asp:ListItem>
                                    <asp:ListItem>notapprove</asp:ListItem>
                                </asp:DropDownList>
                            </ItemTemplate>
                        </asp:TemplateField>
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
                <br />
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    
                    SelectCommand="SELECT [LeaveReasone], [Days], [RollNo], [Standard], [Division] FROM [leave_mst] ORDER BY [Status]"></asp:SqlDataSource>
            </td>
        </tr>
    </table>
    </td>
</tr>
</asp:Content>

