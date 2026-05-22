<%@ Page Title="" Language="C#" MasterPageFile="~/mst3/Staff.master" AutoEventWireup="true" CodeFile="Attendance.aspx.cs" Inherits="mst3_Attendance" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style7
        {
            width: 100%;
        }
        .style8
        {
            height: 24px;
            font-size: large;
            color: #FF0000;
        }
        .style9
        {
            height: 24px;
            font-size: large;
            color: #FF0000;
            width: 573px;
        }
        .style10
        {
            color: #FF0000;
        }
    .style11
    {
        color: #FF0000;
        width: 573px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    
        <table class="tbl">
        <tr>
            <td align="center" bgcolor="Red" colspan="2" 
                style="font-size: xx-large; color: #FFFFFF; font-weight: 700" 
                class="tblhead">
                Attendance</td>
        </tr>
        <tr>
            <td align="right" class="style9">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style11">
                Select Standard</td>
            <td>
&nbsp;
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
            <td align="right" class="style11">
                Select Division</td>
            <td>
                <asp:DropDownList ID="DropDownList2" runat="server" 
                    DataSourceID="SqlDataSource2" DataTextField="Divisionname" 
                    DataValueField="Divisionname" Height="32px" Width="167px">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT * FROM [div_mst]"></asp:SqlDataSource>
                <br />
&nbsp;
                </td>
        </tr>
        <tr>
            <td align="right" class="style11">
                Roll No</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Height="32px" Width="167px"></asp:TextBox>
                <br />
            </td>
        </tr>
        <tr>
            <td align="right" class="style11">
                Attendance</td>
            <td>
                <asp:DropDownList ID="DropDownList3" runat="server" ForeColor="Red" 
                    Height="32px" Width="167px">
                    <asp:ListItem>Status</asp:ListItem>
                    <asp:ListItem>Present</asp:ListItem>
                    <asp:ListItem>Absent</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td align="right" class="style11">
                Date</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Height="32px" Width="167px"></asp:TextBox>
&nbsp;
                <asp:Calendar ID="Calendar1" runat="server" BackColor="#FFFFCC" 
                    BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" 
                    Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" 
                    onselectionchanged="Calendar1_SelectionChanged" ShowGridLines="True" 
                    Width="220px" VisibleDate="2024-03-03">
                    <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                    <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                    <OtherMonthDayStyle ForeColor="#CC9966" />
                    <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                    <SelectorStyle BackColor="#FFCC66" />
                    <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" 
                        ForeColor="#FFFFCC" />
                    <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
                </asp:Calendar>
                <asp:Button ID="Button9" runat="server" BackColor="Red" ForeColor="White" 
                    onclick="Button9_Click" style="font-weight: 700; margin-bottom: 0px" 
                    Text="Add Attendance" Width="220px" />
                <br />
            </td>
        </tr>
        <tr>
            <td align="right" class="style11">
                &nbsp;</td>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server" ForeColor="Red" Text="Label"></asp:Label>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center" class="style10" colspan="2">
                <br />
                <br />
                <br />
            </td>
        </tr>
    </table>
    </td>
</tr>
</asp:Content>

