<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ASSIGNMENT.aspx.cs" Inherits="ASSIGNMENT" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <style type="text/css">
                
         
        .style2
        {
            width: 266px;
        }
    </style>

</head>
<body>


    <form id="form1" runat="server">

<div class="container">
  <h2>Car Loan Calculator</h2>

  <br />
  <br />

    <div class="form-group">
       <label for="sel1">Select Cars (select one):</label>
    <asp:DropDownList ID="DropDownList2" class="form-control" runat="server" Width="278px">
        <asp:ListItem>VIOS J (MT)</asp:ListItem>
        <asp:ListItem>ALTIS 1.8 E</asp:ListItem>
        <asp:ListItem Value="CAMRY">CAMRY</asp:ListItem>
        <asp:ListItem>HILUX SC (MT)</asp:ListItem>
    </asp:DropDownList>
      <br>

    </div>

  

    <div class="form-group">
      <label for="pwd">Down Payment
        </label>
     
    &nbsp;<asp:TextBox class="form-control" ID="TextBox1" runat="server"></asp:TextBox>

    </div>



    <div class="form-group">
   
      <label for="d">Duration</label>
    
    <asp:RadioButtonList ID="RadioButtonList1" runat="server">
        <asp:ListItem>5</asp:ListItem>
        <asp:ListItem>7</asp:ListItem>
        <asp:ListItem>9</asp:ListItem>
    </asp:RadioButtonList>
    
    </div>



    <div class="form-group">
      <label for="pwd">OPINION ABOUT THIS APPLICATION</label>
     
    <asp:TextBox class="form-control" ID="TextBox2" runat="server"></asp:TextBox>

    </div>



    <asp:Button ID="Button1" class="btn btn-default" runat="server" Text="Submit" 
        onclick="Button1_Click" />
    

    <br />
    <br />  <br />
    <br />  <br />
    <br />

    <table class="table">
        <tr>
            <td class="style2">
                <asp:Label ID="Label1" runat="server" Text="MODEL"></asp:Label>
            </td>
            <td class="warning">
                <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label3" runat="server" Text="DOWN PAYMENT"></asp:Label>
            </td>
            <td class="warning">
                <asp:Label ID="Label4" runat="server" Text="">RM</asp:Label>
            </td>
        </tr>

        <tr>
            <td class="style2">
                <asp:Label ID="Label5" runat="server" Text="INTEREST (%)"></asp:Label>
            </td>
            <td class="warning">
                <asp:Label ID="Label6" runat="server" Text=""></asp:Label>
            </td>
        </tr>

        <tr>
            <td class="style2">
                <asp:Label ID="Label7" runat="server" Text="MONTHLY INSTALLMENT ( YEARS )"></asp:Label>
            </td>
            <td class="warning">
                <asp:Label ID="Label8" runat="server" Text=""></asp:Label>
            </td>
        </tr>

        <tr>
            <td class="style2">
                <asp:Label ID="Label9" runat="server" Text="LOAN AMOUNT "></asp:Label>
            </td>
            <td class="warning">
                <asp:Label ID="Label10" runat="server" Text="">RM</asp:Label>
            </td>
        </tr>

         <tr>
            <td class="style2">
                <asp:Label ID="Label11" runat="server" Text="MONTHLY INSTALLMENT "></asp:Label>
            </td>
            <td class="warning">
                <asp:Label ID="Label12" runat="server" Text="">RM</asp:Label>
            </td>
        </tr>

         <tr>
            <td class="style2">
                <asp:Label ID="Label13" runat="server" Text="WHAT DO YOU THINK OF THIS APPLICATION "></asp:Label>
            </td>
            <td class="warning">
                <asp:Label ID="Label14" runat="server" Text=""></asp:Label>
            </td>
        </tr>

    </table>


    </form>

    </div>

</body>
</html>






<script type="text/javascript">

//datepicker
    $(document).ready(function () {

        $('#DropDownList2').change(function () {

            var itik = $('#DropDownList2').val();


            if (itik == "CAMRY") {

      
            }

        });

    })

</script>
