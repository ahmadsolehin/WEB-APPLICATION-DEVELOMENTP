using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class ViewBooking : System.Web.UI.Page
{
    String CS = ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString1"].ConnectionString;

    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["USERNAME"] != null)
        {

            if (!IsPostBack)
            {
                display();
            }
        }
        else
        {
            Response.Redirect("~/Signin.aspx");
        }


    }

    public void display()
    {
        String x = (string)Session["USERNAME"];

        String CS = ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString1"].ConnectionString;

        using (SqlConnection con = new SqlConnection(CS))
        {
            SqlCommand cmd = new SqlCommand("select * from booking where name = '"+x+"'   ", con);
            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            mydatagrid.DataSource = dt;
            mydatagrid.DataBind();
            con.Close();
        }


    }

    protected void btnSignOut_Click(object sender, EventArgs e)
    {
        Session["USERNAME"] = null;
        Response.Redirect("~/Default.aspx");
    }
}