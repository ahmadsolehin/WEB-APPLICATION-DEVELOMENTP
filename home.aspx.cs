using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class home : System.Web.UI.Page
{

    double total = 0;
    double rate = 0;
    string selectedValue = "'";

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void submitbtn_Click(object sender, EventArgs e)
    {
        switch (DropDownListCategory.SelectedValue)
        {

            case "Beginner":
                kiraanBeginner();
                break;

            case "Intermediate":
                kiraanIntermediate();
                break;

            case "Advanced":
                kiraanAdvanced();
                break;

            default:
                Label1.Text = "None Of Them";
                break;
        }

    }

    public void kiraanBeginner()
    {
        foreach (ListItem item in CheckBoxListType.Items)
        {

            if (item.Selected)
            {
                selectedValue = item.Value;



                if (selectedValue == "Family Ride")
                {
                    total = total + 80.00;
                    Response.Write("<script>alert('Data inserted successfully')</script>");
                }

                if (selectedValue == "Fun Ride")
                {
                    total = total + 120.00;
                    Response.Write("<script>alert('Data inserted successfully')</script>");
                }

                Label1.Text = "Thank you " + TextBoxName.Text + " for your interest! here your details ";
                Label8.Text = RadioButtonListGender.SelectedItem.Text;
                Label9.Text = TextBoxEmail.Text;
                Label10.Text = TextBoxHandphone.Text;


                Label12.Text = DropDownListCategory.SelectedItem.Text;
                Label13.Text += item.Text + " , ";
                LabelFee.Text = total.ToString();

            }

        }


    }

    public void kiraanIntermediate()
    {
        foreach (ListItem item in CheckBoxListType.Items)
        {


            if (item.Selected)
            {
                selectedValue = item.Value;


                if (selectedValue == "Family Ride")
                {
                    total += (80.00 * 0.06) + 80.00;
                    Response.Write("<script>alert('Data inserted successfully')</script>");
                }

                if (selectedValue == "Fun Ride")
                {
                    total += (120.00 * 0.06) + 120.00;
                    Response.Write("<script>alert('Data inserted successfully')</script>");
                }

                Label1.Text = "Thank you " + TextBoxName.Text + " for your interest! here your details ";
                Label8.Text = RadioButtonListGender.SelectedItem.Text;
                Label9.Text = TextBoxEmail.Text;
                Label10.Text = TextBoxHandphone.Text;


                Label12.Text = DropDownListCategory.SelectedItem.Text;
                Label13.Text += item.Text + " , ";
                LabelFee.Text = total.ToString();

            }
        }
    }
    public void kiraanAdvanced()
    {
        foreach (ListItem item in CheckBoxListType.Items)
        {

            if (item.Selected)
            {
                selectedValue = item.Value;


                if (selectedValue == "Family Ride")
                {
                    total += (150.00 * 0.06) + 150.00;
                }

                if (selectedValue == "Fun Ride")
                {
                    total += (180.00 * 0.06) + 180.00;
                }

                if (selectedValue == "MTB Challenge")
                {
                    total += (200.00 * 0.06) + 200.00;
                }

                Label1.Text = "Thank you " + TextBoxName.Text + " for your interest! here your details ";
                Label9.Text = TextBoxEmail.Text;
                Label10.Text = TextBoxHandphone.Text;


                Label12.Text = DropDownListCategory.SelectedItem.Text;
                Label13.Text += item.Text + " , ";
                LabelFee.Text = total.ToString();
            }
        }

    }
}