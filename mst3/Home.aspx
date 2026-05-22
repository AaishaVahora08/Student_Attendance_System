<%@ Page Title="" Language="C#" MasterPageFile="~/mst3/Staff.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="mst3_Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style4
        {
            font-size: large;
            color: #FF0000;
            width: 1081px;
        }
        .style7
        {
            width: 1081px;
        }
        .style8
        {
            height: 43px;
            width: 1081px;
        }
        .style9
        {
            height: 37px;
            width: 1081px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <table class="tbl">
    <td>
        
        <tr>
            <td align="center" 
                style="font-size: x-large; color: #FFFFFF; font-weight: 700;" bgcolor="Red" 
                class="tblhead">
                My Profile</td>
        </tr>
        <tr>
            <td align="center" 
                style="font-size: x-large; color: #FFFFFF; font-weight: 700;" 
                bgcolor="White">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4" align="center">
                Name:&nbsp;
                <asp:Label ID="lblname" runat="server" Text="Label" ForeColor="Red"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style8" style="font-size: large; color: #FF0000" align="center">
                Standard Name<asp:DropDownList ID="DropDownList1" runat="server" 
                    DataSourceID="SqlDataSource1" DataTextField="stdname" DataValueField="stdname">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style9" style="font-size: large; color: #FF0000" align="center">
                Division Name<asp:DropDownList ID="DropDownList2" runat="server" 
                    DataSourceID="SqlDataSource2" DataTextField="Divisionname" 
                    DataValueField="Divisionname">
                </asp:DropDownList>
                <asp:Button ID="Button8" runat="server" BackColor="Red" 
                    style="color: #FFFFFF; font-weight: 700" Text="Select" Width="73px" />
            </td>
        </tr>
        <tr>
            <td class="style9" style="font-size: large; color: #FF0000" align="center">
                <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" 
                    GridLines="None" AutoGenerateColumns="False" DataSourceID="SqlDataSource3">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                        <asp:BoundField DataField="MobileNo" HeaderText="MobileNo" 
                            SortExpression="MobileNo" />
                        <asp:BoundField DataField="Qualification" HeaderText="Qualification" 
                            SortExpression="Qualification" />
                        <asp:BoundField DataField="Address" HeaderText="Address" 
                            SortExpression="Address" />
                        <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                        <asp:BoundField DataField="Pincode" HeaderText="Pincode" 
                            SortExpression="Pincode" />
                        <asp:BoundField DataField="Gender" HeaderText="Gender" 
                            SortExpression="Gender" />
                        <asp:ImageField DataImageUrlField="Photo" HeaderText="image">
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
                    SelectCommand="SELECT [Email], [MobileNo], [Qualification], [Address], [City], [Pincode], [Gender], [Photo] FROM [addstaff_mst] WHERE (([Stdname] = @Stdname) AND ([Div] = @Div))">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="Stdname" 
                            PropertyName="SelectedValue" Type="String" />
                        <asp:ControlParameter ControlID="DropDownList2" Name="Div" 
                            PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td align="center" class="style7">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT * FROM [std_mst]"></asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT * FROM [div_mst]"></asp:SqlDataSource>
            </td>
        </tr>
    </table>
    </td>
</tr>
</asp:Content>

