using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Booking : System.Web.UI.Page
{
    int priceset1 = 0;
    int priceset2 = 0;
    int priceset3 = 0;
    int dessert = 0;
    int goodies = 0;
    double totalSet1;
    double totalSet2;
    double totalSet3;
    double totalDessert;
    double totalGoodies;
    double totalPrice;

    protected void ButtonSubmit_Click(object sender, EventArgs e)
    {
        Session["name"] = TextBoxName.Text;
        Session["email"] = TextBoxEmail.Text;
        Session["date"] = Calendar1.SelectedDate.ToShortDateString();
        Session["pax"] = TextBoxPax.Text;

        if (DropDownListMainMenu.Text == "Set 1 - RM150.00")
        {
            priceset1 = 150;
            totalSet1 = priceset1 * Int16.Parse(TextBoxPax.Text);
            Session["menu"] = priceset1;
            Session["menuPrice"] = totalSet1;
        }
        else if (DropDownListMainMenu.Text == "Set 2 - RM200.00")
        {
            priceset2 = 200;
            totalSet2 = priceset2 * Int16.Parse(TextBoxPax.Text);
            Session["menu"] = priceset2;
            Session["menuPrice"] = totalSet2;

        }
        else if (DropDownListMainMenu.Text == "Set 3 - RM250.00")
        {
            priceset3 = 250;
            totalSet3 = priceset3 * Int16.Parse(TextBoxPax.Text);
            Session["menu"] = priceset3;
            Session["menuPrice"] = totalSet3;
        }

        if (RadioButtonListDessert.Text == "Yes - RM20.00")
        {
            dessert = 20;
            Session["dessert"] = "Yes";
        }
        else
        {
            dessert = 0;
            Session["dessert"] = "No";
        }

        if (RadioButtonListGoodies.Text == "Yes - RM2.00")
        {

            Session["addItem"] = "Gooodies";
            goodies = 2;
        }
        else
        {
            Session["addItem"] = "No";
            goodies = 0;
        }

        totalDessert = dessert * Int16.Parse(TextBoxPax.Text);
        Session["totalDessert"] = totalDessert;
        totalGoodies = goodies * Int16.Parse(TextBoxPax.Text);
        Session["totalGoodies"] = totalGoodies;

        totalPrice = totalSet1 + totalSet2 + totalSet3 + totalDessert + totalGoodies;
        Session["totalPrice"] = totalPrice;
        Response.Redirect("ViewBooking.aspx");
    }
}