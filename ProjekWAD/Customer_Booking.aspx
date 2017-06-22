<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Customer_Booking.aspx.cs"
    Inherits="Customer_Booking" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Home</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet"/>
    <link href="css/Custom-Cs.css" rel="stylesheet" />
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

    <style>
        
        .mydatagrid
{
	width: 80%;
	border: solid 2px black;
	min-width: 80%;
}
.header
{
	background-color: #6a6a6a;
	font-family: Arial;
	color: White;
	height: 25px;
	text-align: center;
	font-size: 16px;
}

.rows
{
	background-color: #fff;
	font-family: Arial;
	font-size: 14px;
	color: #000;
	min-height: 25px;
	text-align: left;
}
.rows:hover
{
	background-color: #fadd7a;
	color: #000;
}

.mydatagrid a /** FOR THE PAGING ICONS  **/
{
	background-color: Transparent;
	padding: 5px 5px 5px 5px;
	color: #fff;
	text-decoration: none;
	font-weight: bold;
}

.mydatagrid a:hover /** FOR THE PAGING ICONS  HOVER STYLES**/
{
	background-color: #fff;
	color: #000;
}
.mydatagrid span /** FOR THE PAGING ICONS CURRENT PAGE INDICATOR **/
{
	
	padding: 5px 5px 5px 5px;
	background-color: #000;
	color: #fff;
}
.pager
{
	background-color: #fadd7a;
	font-family: Arial;
	color: White;
	height: 30px;
	text-align: left;
}

.mydatagrid td
{
	padding: 5px;
}
.mydatagrid th
{
	padding: 5px;
}

    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
               <div class="navbar navbar-default navbar-fixed-top" role="navigation">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="Default.aspx" > <span> <img alt="Logo" src="Images/tc only 512.png" height="30" /></span>TecyCybo</a>
                </div>
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav navbar-right">
                        <li class="active"><a href="Default.aspx">Home</a></li>
                        <li><a href="#">About</a></li>
                        <li><a href="#">Contact</a></li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Products<b class="caret"></b></a>
                            <ul class="dropdown-menu">
                                <li class="dropdown-header">Men</li>
                                <li role="separator" class="divider"></li>
                                <li><a href="#">Shirts</a></li>
                                <li><a href="#">Pants</a></li>
                                <li><a href="#">Denims</a></li>
                                <li role="separator" class="divider"></li>
                                <li class="dropdown-header">Women</li>
                                <li role="separator" class="divider"></li>
                                <li><a href="#">Top</a></li>
                                <li><a href="#">Leggings</a></li>
                                <li><a href="#">Denims</a></li>
                            </ul>
                        </li>
                        <li><a href="SignUp.aspx">Sign Up</a></li>
                        <li><a href="SignIn.aspx">Sign In</a></li>
                    </ul>
                </div>
            </div>
        </div> 

        <br />
        <br />














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

        <asp:Button ID="Button1" runat="server" CssClass="btn btn-default" Text="Add" onclick="Button1_Click" />
        <asp:Button ID="Button2" runat="server" CssClass="btn btn-danger" Text="Update" onclick="Button2_Click" />
        <asp:Button ID="Button3" runat="server" Text="Delete" CssClass="btn btn-primary" onclick="Button3_Click" />

        <br />
        <br />

        <asp:GridView ID="mydatagrid" runat="server" CssClass="mydatagrid" PagerStyle-CssClass="pager"
 HeaderStyle-CssClass="header" RowStyle-CssClass="rows" AllowPaging="True" AutoGenerateColumns="false">
            <Columns>
                <asp:BoundField DataField="name" HeaderText="Name" />
                <asp:BoundField DataField="phone" HeaderText="Phone" />
                <asp:BoundField DataField="email" HeaderText="Email" />
                <asp:BoundField DataField="address" HeaderText="Address" />
                <asp:BoundField DataField="status" HeaderText="Status" />

            </Columns>
        </asp:GridView>

        </div>

    </div>
    </form>


    
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
</body>
</html>
