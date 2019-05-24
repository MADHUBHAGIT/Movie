using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class delete : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String cs = ("Data Source=DESKTOP-82J91LH;Initial Catalog=projectbd;Integrated Security=True");
        SqlConnection cn = new SqlConnection(cs);
        cn.Open();
        string qr = "Delete from movielists  where MovieID='" + TextBox1.Text + "'";
        SqlCommand cmd = new SqlCommand(qr, cn);
        int x = cmd.ExecuteNonQuery();
        if (x > 0)
            Label2.Text = "<font color='green'>record deleted....</font>";
        else
            Label2.Text = "<font color='red'>record not deleted....</font>";
        cn.Close();

    }
}