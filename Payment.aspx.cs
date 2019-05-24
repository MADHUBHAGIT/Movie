using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class Payment : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        String query = "Update Cust_Movies set Payment_Status='Paid' ,Price='" + Convert.ToString(Session["sprice"]) + "' where id='" + Convert.ToString(Session["aid"]) + "'";
        String mycon1 = (@"Data Source=DESKTOP-82J91LH;Initial Catalog=projectbd;Integrated Security=True");
        SqlConnection con1 = new SqlConnection(mycon1);
        con1.Open();
        SqlCommand cmd1 = new SqlCommand();
        cmd1.CommandText = query; 
        cmd1.Connection = con1;
        cmd1.ExecuteNonQuery();


        Response.Redirect("thanks.aspx");
       
    }
}