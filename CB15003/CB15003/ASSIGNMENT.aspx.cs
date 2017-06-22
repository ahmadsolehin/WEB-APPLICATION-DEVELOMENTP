using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ASSIGNMENT : System.Web.UI.Page

{
    String model = "";
    int interest = 0;
    double carprice = 0;
    double loanamount = 0;
    double monthlyinstall = 0;
    int numofmonth = 0;

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        if (RadioButtonList1.SelectedItem.Text == "5")
        {
            numofmonth = 60;
        }
        else if (RadioButtonList1.SelectedItem.Text == "7")
        {
            numofmonth = 84;
        }
        else if (RadioButtonList1.SelectedItem.Text == "9")
        {
            numofmonth = 108;
        }


        if (DropDownList2.SelectedItem.Text == "VIOS J (MT)")
        {
            interest = 4;
            model = "VIOS J (MT)";
            carprice = 74700.00;


            loanamount = carprice - Int32.Parse(TextBox1.Text);

           monthlyinstall = ((0.04 * loanamount) + loanamount) / numofmonth;


           Label2.Text = model;
           Label4.Text = TextBox1.Text;
           Label6.Text = interest.ToString();
           Label8.Text = RadioButtonList1.SelectedItem.Text;
           Label10.Text = loanamount.ToString();
           Label12.Text = monthlyinstall.ToString("0.00");
           Label14.Text = TextBox2.Text;

            Response.Write("<script>alert('Data inserted successfully')</script>");

        }

        else if (DropDownList2.SelectedItem.Text == "ALTIS 1.8 E")
        {
            interest = 4;
            model = "ALTIS 1.8 E";
            carprice = 113000.00;


            loanamount = carprice - Int32.Parse(TextBox1.Text);

            monthlyinstall = ((0.04 * loanamount) + loanamount) / numofmonth;


            Label2.Text = model;
            Label4.Text = TextBox1.Text;
            Label6.Text = interest.ToString();
            Label8.Text = RadioButtonList1.SelectedItem.Text;
            Label10.Text = loanamount.ToString();
            Label12.Text = monthlyinstall.ToString("0.00");
            Label14.Text = TextBox2.Text;

            Response.Write("<script>alert('Data inserted successfully')</script>");

        }

        else if (DropDownList2.SelectedItem.Text == "CAMRY")
        {
            interest = 4;
            model = "CAMRY";
            carprice = 149900.00;


            loanamount = carprice - Int32.Parse(TextBox1.Text);

            monthlyinstall = ((0.04 * loanamount) + loanamount) / numofmonth;


            Label2.Text = model;
            Label4.Text = TextBox1.Text;
            Label6.Text = interest.ToString();
            Label8.Text = RadioButtonList1.SelectedItem.Text;
            Label10.Text = loanamount.ToString();
            Label12.Text = monthlyinstall.ToString("0.00");
            Label14.Text = TextBox2.Text;

            Response.Write("<script>alert('Data inserted successfully')</script>");

        }

        else if (DropDownList2.SelectedItem.Text == "HILUX SC (MT)")
        {
            interest = 4;
            model = "HILUX SC (MT)";
            carprice = 76300.00;


            loanamount = carprice - Int32.Parse(TextBox1.Text);

            monthlyinstall = ((0.04 * loanamount) + loanamount) / numofmonth;


            Label2.Text = model;
            Label4.Text = TextBox1.Text;
            Label6.Text = interest.ToString();
            Label8.Text = RadioButtonList1.SelectedItem.Text;
            Label10.Text = loanamount.ToString();
            Label12.Text = monthlyinstall.ToString("0.00");
            Label14.Text = TextBox2.Text;

            Response.Write("<script>alert('Data inserted successfully')</script>");

        }


    }
}