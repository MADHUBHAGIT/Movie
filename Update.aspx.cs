using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class Update : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String cs = ("Data Source=DESKTOP-82J91LH;Initial Catalog=projectbd;Integrated Security=True");
        SqlConnection cn = new SqlConnection(cs);
        cn.Open();
        String qr = "insert into movielists (MovieID,MovieName,MovieType,MovieImage,MovieDate,MovieTime,TotalSeat,Price) values ('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox8.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "')";
        SqlCommand cmd = new SqlCommand(qr, cn);

        int i = cmd.ExecuteNonQuery();
        if (i > 0)
        {
            Label7.Text = "RECORED ADDED SUCESSFULLY";
        }
        else
        {
            Label7.Text = "recored not added";
        }

        cn.Close();
    }
}