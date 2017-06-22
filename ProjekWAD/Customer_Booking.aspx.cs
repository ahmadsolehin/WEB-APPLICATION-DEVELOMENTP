using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class Customer_Booking : System.Web.UI.Page
{
    String CS = ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString1"].ConnectionString;
                
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            display();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
                using (SqlConnection con = new SqlConnection(CS))
                {
                    SqlCommand cmd = new SqlCommand("insert into booking (name,phone,email,address,status)  values ( '" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "', '" + TextBox5.Text + "' )", con);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                    display();
                }
    }

    protected void lnkselect_Click(object sender, EventArgs e)
    {
        string yourValue = ((LinkButton)sender).Text;

        String CS = ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString1"].ConnectionString;

        using (SqlConnection con = new SqlConnection(CS))
        {
            SqlCommand cmd = new SqlCommand("select * from booking where userid="+yourValue+" ", con);

            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);

            if (dt.Rows.Count >= 0)
            {
                TextBox1.Text = dt.Rows[0]["name"].ToString();
                TextBox2.Text = dt.Rows[0]["phone"].ToString();
                TextBox3.Text = dt.Rows[0]["email"].ToString();
                TextBox4.Text = dt.Rows[0]["address"].ToString();
                
            }
            cmd.ExecuteNonQuery();
            con.Close();
        }

    }

    public void display()
    {
        String CS = ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString1"].ConnectionString;

        using (SqlConnection con = new SqlConnection(CS))
        {
            SqlCommand cmd = new SqlCommand("select * from booking ", con);
            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            mydatagrid.DataSource = dt;
            mydatagrid.DataBind();
            con.Close();
        }


    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        String CS = ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString1"].ConnectionString;

        using (SqlConnection con = new SqlConnection(CS))
        {
            SqlCommand cmd = new SqlCommand("update booking set name = '" + TextBox1.Text + "', phone = '" + TextBox2.Text + "', email = '" + TextBox3.Text + "', address = '" + TextBox4.Text + "', status = '" + TextBox5.Text + "'  where name = '" + TextBox1.Text + "' ", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            display();
        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        String CS = ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString1"].ConnectionString;

        using (SqlConnection con = new SqlConnection(CS))
        {
            SqlCommand cmd = new SqlCommand("delete from booking where name = '"+TextBox1.Text+"'  ", con); 
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            display();
        }
    }
}