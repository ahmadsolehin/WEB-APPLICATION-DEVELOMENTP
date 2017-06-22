using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ViewBooking : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = "Name : " + Session["name"].ToString();
        Label2.Text = "Email : " + Session["email"].ToString();
        Label3.Text = "Date : " + Session["date"].ToString();
        Label4.Text = "Menu : " + Session["menu"].ToString();
        Label5.Text = "Pax : " + Session["pax"].ToString();
        Label6.Text = "Menu price : RM" + Session["menuPrice"].ToString();
        Label7.Text = "Dessert : " + Session["dessert"].ToString() ;
        Label8.Text = "Dessert Price : RM" + Session["totalDessert"].ToString();
        Label9.Text = "Additional item : " + Session["addItem"].ToString();
        Label10.Text = "Goodies price : RM" + Session["totalGoodies"].ToString();
        Label11.Text = "Total price : RM" + Session["totalPrice"].ToString();
    }
}