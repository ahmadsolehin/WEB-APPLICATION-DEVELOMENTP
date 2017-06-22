<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="History.aspx.cs" Inherits="History" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
this is a history


<p>
        <table class="style1">
            <tr>
                <td>
                    Name</td>
                <td>
                    <asp:TextBox ID="TextBoxName" runat="server" Width="275px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    Email</td>
                <td>
                    <asp:TextBox ID="TextBoxEmail" runat="server" Width="275px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    Date</td>
                <td>
                    <asp:Calendar ID="Calendar1" runat="server" BackColor="White" 
                        BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" 
                        Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" 
                        Width="200px">
                        <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                        <NextPrevStyle VerticalAlign="Bottom" />
                        <OtherMonthDayStyle ForeColor="#808080" />
                        <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                        <SelectorStyle BackColor="#CCCCCC" />
                        <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                        <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                        <WeekendDayStyle BackColor="#FFFFCC" />
                    </asp:Calendar>
                </td>
            </tr>
            <tr>
                <td>
                    Number of Pax</td>
                <td>
                    <asp:TextBox ID="TextBoxPax" runat="server" Width="275px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    Main Menu</td>
                <td>
                    <asp:DropDownList ID="DropDownListMainMenu" runat="server" Width="275px" 
                        AutoPostBack="True">
                        <asp:ListItem>Set 1 - RM150.00</asp:ListItem>
                        <asp:ListItem>Set 2 - RM200.00</asp:ListItem>
                        <asp:ListItem>Set 3 - RM250.00</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    Additional Menu : Dessert</td>
                <td>
                    <asp:RadioButtonList ID="RadioButtonListDessert" runat="server" 
                        AutoPostBack="True">
                        <asp:ListItem>Yes - RM20.00</asp:ListItem>
                        <asp:ListItem>No</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td>
                    Additional Item : Goodies</td>
                <td>
                    <asp:RadioButtonList ID="RadioButtonListGoodies" runat="server" 
                        AutoPostBack="True">
                        <asp:ListItem>Yes - RM2.00</asp:ListItem>
                        <asp:ListItem>No</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
        </table>
        <br />
        <asp:Button ID="ButtonSubmit" runat="server" 
            style="margin-left: 169px" Text="Submit" />
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>

</asp:Content>

