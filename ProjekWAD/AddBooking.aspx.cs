using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class AddBooking : System.Web.UI.Page
{
    String CS = ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString1"].ConnectionString;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["USERNAME"] != null)
        {
            TextBox1.Text = (string)Session["USERNAME"];
            TextBox1.ReadOnly = true;
        }
        else
        {
            Response.Redirect("~/Signin.aspx");
        }



    }
    protected void Button3_Click(object sender, EventArgs e)
    {
       

        using (SqlConnection con = new SqlConnection(CS))
        {
            SqlCommand cmd = new SqlCommand("insert into booking (name,phone,email,address,status,date_borrow, date_return)  values ( '" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "', 'Pending', '" + txtDate.Text + "',  '" + TextBox5.Text + "' )", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            
        }
    }

    protected void btnSignOut_Click(object sender, EventArgs e)
    {
        Session["USERNAME"] = null;
        Response.Redirect("~/Default.aspx");
    }
}