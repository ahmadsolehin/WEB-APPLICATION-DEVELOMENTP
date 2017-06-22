<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddBooking.aspx.cs" Inherits="AddBooking" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
        <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Home</title>

    

            <script src="//code.jquery.com/jquery-1.10.2.js"></script>
            <link href = "https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.6.4/css/bootstrap-datepicker.css" />

    <script src = "https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.6.4/js/bootstrap-datepicker.js"></script> 

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet"/>
    <link href="css/Custom-Cs.css" rel="stylesheet" />
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

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
                        <a class="navbar-brand" href="Default.aspx"><span>
                            <img alt="Logo" src="Images/tc only 512.png" height="30" /></span>Kedai Santai</a>
                    </div>
                    <div class="navbar-collapse collapse">
                        <ul class="nav navbar-nav navbar-right">
                            <li><a href="UserHome.aspx">Home</a></li>
                                  <li><a href="Car_List.aspx">Car</a></li>
                            <li><a href="AddBooking.aspx">Booking Car</a></li>
                           <li><a href="ViewBooking.aspx">View Booking</a></li>
                            <li>
                                <asp:Button ID="btnSignOut" runat="server" Class="btn btn-default navbar-btn" Text="Sign out" OnClick="btnSignOut_Click" />
                            </li>
                            
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
        

        <div class="form-group">
        <asp:Label ID="Label6" runat="server" Text="Choose Car"></asp:Label>

        <asp:DropDownList  CssClass="form-control" ID="DropDownList1" runat="server">
            <asp:ListItem>Protoln Exora</asp:ListItem>
            <asp:ListItem>Myvi</asp:ListItem>
            <asp:ListItem>Satria Neo</asp:ListItem>
            <asp:ListItem>Toyota Hilux</asp:ListItem>
    </asp:DropDownList>
    </div>


            <div class="form-group">
        <asp:Label ID="Label7" runat="server" Text="Date Borrowed"></asp:Label>
           <asp:TextBox CssClass="form-control" ID="txtDate" runat="server" />


            </div>



                       <div class="form-group">
        <asp:Label ID="Label8" runat="server" Text="Returned Date"></asp:Label>
           <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" />


            </div>


    </form>

        <br />
        <br />

        <asp:Button ID="Button1" runat="server" CssClass="btn btn-default" Text="Add" />
        <asp:Button ID="Button2" runat="server" CssClass="btn btn-danger" Text="Update" />
        <asp:Button ID="Button3" runat="server" Text="Submit" 
        CssClass="btn btn-primary" onclick="Button3_Click" />

        <br />
        <br />
             </div>

    </div>
    </form>


    


    <script>
        $(function () {
            $("#<%= txtDate.ClientID %>").datepicker();

            
        });
</script>


    <script>
        $(function () {
            $("#<%= TextBox5.ClientID %>").datepicker();

            
        });
</script>

</body>
</html>


