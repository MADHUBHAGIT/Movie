using System;
using System.Collections.Generic;
using System.Linq;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Web.UI.WebControls;
/// <summary>
/// Summary description for DbHelper
/// </summary>
public class DbHelper
{

    string constring = ConfigurationManager.ConnectionStrings["cnstring1"].ToString();
    SqlConnection con;
    SqlCommand cmd;
    SqlDataAdapter adpt;
    DataTable dt;

	public DbHelper()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    public void ConnectionOpen()
    {
        con = new SqlConnection(constring);
        con.Open();

    }
    public void ConnectionClose()
    {
        if (con.State == ConnectionState.Open)
        {
            con.Close();
        }
    }

    public int ExecuteQuery(String str)
    {
        int x;
        ConnectionOpen();
        cmd = new SqlCommand(str, con);
        x = cmd.ExecuteNonQuery();
        ConnectionClose();

        return x;

    }


    
    public void fillgrid(GridView grd, string qry)

    {
 
        grd.DataSource = SelectQuery(qry);
        grd.DataBind();


    }



    public int ExecuteScalerQuery(String str)
    {
        int x;
        ConnectionOpen();
        cmd = new SqlCommand(str, con);
        x = Convert.ToInt32(cmd.ExecuteScalar());
        ConnectionClose();

        return x;

    }

    public DataTable SelectQuery(String str)
    { 
        DataTable dt = new DataTable();
        ConnectionOpen();
        adpt = new SqlDataAdapter(str , con);
        adpt.Fill(dt);
        ConnectionClose();
        return dt;

    }

    public int Movie_Info(string Movie_id, string Movie_Name, string Movie_Type,string Movie_Time,string Movie_Image, string Movie_Date)
    {
        int x = 0;
        ConnectionOpen();

        SqlCommand cmd = new SqlCommand("insert into Movie_Info values(@Movie_id,@Movie_Name,@Movie_Type,@Movie_Time,@Movie_Image,@Movie_Date)", con);
        cmd.Parameters.AddWithValue("Movie_id", Movie_id);
        cmd.Parameters.AddWithValue("Movie_Name", Movie_Name);
                cmd.Parameters.AddWithValue("Movie_Type", Movie_Type);
        cmd.Parameters.AddWithValue("Movie_Time", Movie_Time);
        cmd.Parameters.AddWithValue("Movie_Image", Movie_Time);
        cmd.Parameters.AddWithValue("Movie_Date", Movie_Time);
        x = cmd.ExecuteNonQuery();
        ConnectionClose();
        return x;
    }
        }

