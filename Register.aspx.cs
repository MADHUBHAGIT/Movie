using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Data;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Net;

public partial class Register : System.Web.UI.Page
{
    static string activationcode;

    protected void Page_Load(object sender, EventArgs e)
    {
       
    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        if (checkemail() == true)
        {
            Label1.Text = "Your Email is already Registered with Us";

        }
        else
        {
            Random random = new Random();
            activationcode = random.Next(1001, 9999).ToString();
            String query = "insert into Registerationdb(Name,Email,Password,Mobileno,Location,Status,ActivationCode) values('" + txtname.Text + "','" + txtemail.Text + "','" + txtpass.Text + "','" + txtcontact.Text + "','" + txtcity.Text + "','verified','" + activationcode + "')";
            String mycon = "Data Source=DESKTOP-82J91LH;Initial Catalog=projectbd;Integrated Security=True";
            SqlConnection con = new SqlConnection(mycon);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = query;
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            sendcode();
            Response.Redirect("Verification.aspx?emailadd=" + txtemail.Text);
        }
    }
         private Boolean checkemail()
    {
        Boolean emailavailable = false;
        String mycon = "Data Source=DESKTOP-82J91LH;Initial Catalog=projectbd;Integrated Security=True";
        String myquery = "Select * from Registerationdb where Email='" + txtemail.Text + "'";
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
            emailavailable = true;

        }
        con.Close();

        return emailavailable;
    }


    
    private void sendcode()
    {
        SmtpClient smtp = new SmtpClient();
        smtp.Host = "smtp.gmail.com";
        smtp.Port = 587;
        smtp.Credentials = new System.Net.NetworkCredential("moviebk2019@gmail.com", "67madhu19");
        smtp.EnableSsl = true;
        MailMessage msg = new MailMessage();
        msg.Subject = "Activation Code to Verify Email Address";
        msg.Body = "Dear " + txtname.Text + ", Your Activation Code is  " + activationcode + "\n\n\nThanks & Regards\nMoviePro Booking Teams";
        string toaddress = txtemail.Text;
        msg.To.Add(toaddress);
        string fromaddress = "MoviePro Ticket Booking System <moviebk2019@gmail.com>";
        msg.From = new MailAddress(fromaddress);
        try
        {
            smtp.Send(msg);


        }
        catch
        {
            throw;
        }

}
    
}
