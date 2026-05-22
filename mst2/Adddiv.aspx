<%@ Page Title="" Language="C#" MasterPageFile="~/mst2/MasterPage2.master" AutoEventWireup="true" CodeFile="Adddiv.aspx.cs" Inherits="mst2_Adddiv" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style5
        {
            height: 22px;
            font-size: large;
            color: #0000FF;
        }
        .style6
        {
            height: 24px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl">
        <tr>
            <td align="center" bgcolor="#3333FF" style="font-size: x-large; color: #FFFFFF" 
                class="atitle">
                Add Devesion</td>
        </tr>
        <tr>
            <td align="center" class="style5">
                <br />
                <br />
                <br />
                <asp:Label ID="Label1" runat="server" Text="Standard : "></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="DropDownList1" runat="server" 
                    DataSourceID="SqlDataSource1" DataTextField="stdname" DataValueField="stdname" 
                    Height="30px" Width="145px" CssClass="ltxt">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT * FROM [std_mst]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td align="center" style="font-size: large; color: #0000FF">
                <asp:Label ID="Label2" runat="server" Text="Division Name : "></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server" Height="30px" 
                    Width="145px" CssClass="ltxt"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="center" class="style6" 
                style="font-size: large; color: #0000FF; margin-left: 160px;">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label3" runat="server" 
                    Text="Seat Number : "></asp:Label>
                <asp:TextBox ID="TextBox3" 
                    runat="server" Height="30px" Width="145px" CssClass="ltxt"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
        </tr>
        <tr>
            <td align="center">
                <asp:Button ID="Button10" runat="server" BackColor="#3333FF" ForeColor="White" 
                    Text="ADD" Width="87px" onclick="Button10_Click" CssClass="btn" />
            </td>
        </tr>
        <tr>
            <td align="center">
                <br />
                <br />
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    CellPadding="4" DataSourceID="SqlDataSource2" ForeColor="#333333" 
                    GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        <asp:BoundField DataField="Standard" HeaderText="Standard" 
                            SortExpression="Standard" />
                        <asp:BoundField DataField="Divisionname" HeaderText="Divisionname" 
                            SortExpression="Divisionname" />
                        <asp:BoundField DataField="Seat" HeaderText="Seat" SortExpression="Seat" />
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
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    DeleteCommand="DELETE FROM [div_mst ]  WHERE  [Standard]=@Standard" 
                    SelectCommand="SELECT * FROM [div_mst]" 
                    
                    UpdateCommand="&quot;Update std_mst set Divisionname='&quot; + DropDownList1.Text + &quot;',Seat'&quot; + TextBox3.Text + &quot;',where Standardname='&quot; + TextBox1.Text + &quot;'&quot;;">
                </asp:SqlDataSource>
                <br />
            </td>
        </tr>
        <tr>
            <td align="center">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

