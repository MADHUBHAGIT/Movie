using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class AdminLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        try
        {
            String mycon = (@"Data Source=DESKTOP-82J91LH;Initial Catalog=projectbd;Integrated Security=True");
            SqlConnection con = new SqlConnection(mycon);
            con.Open();
            string qry = "select * from adminlogin where Email='" + txtemail.Text + "' and Password='" + txtpass.Text + "'";
            SqlCommand cmd = new SqlCommand(qry, con);
            SqlDataReader sdr = cmd.ExecuteReader();
            if (sdr.Read())
            {
                Response.Redirect("adminhome.aspx");
            }
            else
            {
                Label1.Text = "Email & Password is not Valid.";

            }
            con.Close();
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }
}