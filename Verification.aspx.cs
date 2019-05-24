using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Verification : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    private void changestatus()
    {
        String mycon = "Data Source=DESKTOP-82J91LH;Initial Catalog=ShoppingData;Integrated Security=True";
        String updatedata = "Update register set Status='Verified' where Email='" + Request.QueryString["emailadd"] + "'";
        SqlConnection con = new SqlConnection(mycon);
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = updatedata;
        cmd.Connection = con;
        cmd.ExecuteNonQuery();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        String mycon = "Data Source=DESKTOP-82J91LH;Initial Catalog=projectbd;Integrated Security=True";
        String myquery = "Select * from Registerationdb where Email='" + Request.QueryString["emailadd"] + "'";
        SqlConnection con = new SqlConnection(mycon);
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = myquery;
        cmd.Connection = con;
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            String activationcode;
            activationcode = ds.Tables[0].Rows[0]["activationcode"].ToString();
            if (activationcode == TextBox1.Text)
            {
                Response.Redirect("Login.aspx");

            }
            else
            {
                Label4.Text = "You Have Entered Invalid Activation Code, Kindly Check Your Mail Inbox";
            }
        }

        con.Close();
    }

}
