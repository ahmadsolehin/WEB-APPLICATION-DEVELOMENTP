<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="Manage_Booking.aspx.cs" Inherits="Manage_Booking" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">







         <div class="container">

                   <form>

             <div class="form-group">      
        <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
         
        <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server"></asp:TextBox>
        </div>



    
    <div class="form-group">
        <asp:Label ID="Label2" runat="server" Text="Phone"></asp:Label>
   
        <asp:TextBox CssClass="form-control"  ID="TextBox2" runat="server"></asp:TextBox>
        </div>
        

         <div class="form-group">
        <asp:Label ID="Label3" runat="server" Text="Email"></asp:Label>
   
        <asp:TextBox CssClass="form-control"  ID="TextBox3" runat="server"></asp:TextBox>
        </div>
  

            <div class="form-group">
        <asp:Label ID="Label4" runat="server" Text="Address"></asp:Label>
        <asp:TextBox CssClass="form-control"  ID="TextBox4" runat="server"></asp:TextBox>
        </div>
        
        <asp:Label ID="Label5" runat="server" Text="Status"></asp:Label>
        <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server"></asp:TextBox>

        </form>

        <br />
        <br />

        
        <asp:Button ID="Button4" runat="server" Text="Select" CssClass="btn btn-primary" 
                       onclick="Button4_Click" />

        <asp:Button ID="Button1" runat="server" CssClass="btn btn-default" Text="Add" onclick="Button1_Click" />
        <asp:Button ID="Button2" runat="server" CssClass="btn btn-danger" Text="Update" onclick="Button2_Click" />
        <asp:Button ID="Button3" runat="server" Text="Delete" CssClass="btn btn-primary" onclick="Button3_Click" />

        <br />
        <br />

        <asp:GridView ID="mydatagrid" runat="server" CssClass="mydatagrid" PagerStyle-CssClass="pager"
 HeaderStyle-CssClass="header" RowStyle-CssClass="rows" AllowPaging="False" AutoGenerateColumns="false" >
            <Columns>
                <asp:BoundField DataField="name" HeaderText="Name" />
                <asp:BoundField DataField="phone" HeaderText="Phone" />
                <asp:BoundField DataField="email" HeaderText="Email" />
                <asp:BoundField DataField="address" HeaderText="Address" />
                <asp:BoundField DataField="status" HeaderText="Status" />

            </Columns>
        </asp:GridView>

        </div>
</asp:Content>

