using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class AddMovie : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DataTable dt = new DataTable();
            DataRow dr;
            dt.Columns.Add("sno");
            dt.Columns.Add("movieid");
            dt.Columns.Add("moviename");
            dt.Columns.Add("movietype");
            dt.Columns.Add("totalseat");
            dt.Columns.Add("price");
            dt.Columns.Add("moviedate");
            dt.Columns.Add("movietime");
            dt.Columns.Add("totalprice");
            dt.Columns.Add("movieimage");


            if (Request.QueryString["id"] != null)
            {
                if (Session["Buyitems"] == null)
                {

                    dr = dt.NewRow();
                    String mycon = "Data Source=DESKTOP-82J91LH;Initial Catalog=projectbd;Integrated Security=True";
                    SqlConnection scon = new SqlConnection(mycon);
                    String myquery = "select * from movielists where movieid=" + Request.QueryString["id"];
                    SqlCommand cmd = new SqlCommand();
                    cmd.CommandText = myquery;
                    cmd.Connection = scon;
                    SqlDataAdapter da = new SqlDataAdapter();
                    da.SelectCommand = cmd;
                    DataSet ds = new DataSet();
                    da.Fill(ds);
                    dr["sno"] = 1;
                    dr["movieid"] = ds.Tables[0].Rows[0]["movieid"].ToString();
                    dr["moviename"] = ds.Tables[0].Rows[0]["moviename"].ToString();
                    dr["movietype"] = ds.Tables[0].Rows[0]["movietype"].ToString();
                    dr["movieimage"] = ds.Tables[0].Rows[0]["movieimage"].ToString();
                    dr["moviedate"] = ds.Tables[0].Rows[0]["moviedate"].ToString();
                    dr["movietime"] = ds.Tables[0].Rows[0]["movietime"].ToString();
                    dr["totalseat"] = Request.QueryString["totalseat"];
                    dr["price"] = ds.Tables[0].Rows[0]["price"].ToString();
                    int price = Convert.ToInt16(ds.Tables[0].Rows[0]["price"].ToString());
                    int totalseat = Convert.ToInt16(Request.QueryString["totalseat"].ToString());
                    int totalprice = price * totalseat;
                    dr["totalprice"] = totalprice;

                    dt.Rows.Add(dr);
                    GridView1.DataSource = dt;
                    GridView1.DataBind();

                    Session["buyitems"] = dt;
                    GridView1.FooterRow.Cells[5].Text = "Total Amount";
                    GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();
                    Response.Redirect("MovieCart.aspx");

                }
                else
                {

                    dt = (DataTable)Session["buyitems"];
                    int sr;
                    sr = dt.Rows.Count;

                    dr = dt.NewRow();
                    String mycon = "Data Source=DESKTOP-82J91LH;Initial Catalog=projectbd;Integrated Security=True";
                    SqlConnection scon = new SqlConnection(mycon);
                    String myquery = "select * from movielists where movieid=" + Request.QueryString["id"];
                    SqlCommand cmd = new SqlCommand();
                    cmd.CommandText = myquery;
                    cmd.Connection = scon;
                    SqlDataAdapter da = new SqlDataAdapter();
                    da.SelectCommand = cmd;
                    DataSet ds = new DataSet();
                    da.Fill(ds);
                    dr["sno"] = sr + 1;
                    dr["movieid"] = ds.Tables[0].Rows[0]["movieid"].ToString();
                    dr["moviename"] = ds.Tables[0].Rows[0]["moviename"].ToString();
                    dr["movietype"] = ds.Tables[0].Rows[0]["movietype"].ToString();
                    dr["movieimage"] = ds.Tables[0].Rows[0]["movieimage"].ToString();
                    dr["moviedate"] = ds.Tables[0].Rows[0]["moviedate"].ToString();
                    dr["movietime"] = ds.Tables[0].Rows[0]["movietime"].ToString();
                    dr["totalseat"] = Request.QueryString["totalseat"];
                    dr["price"] = ds.Tables[0].Rows[0]["price"].ToString();
                    int price = Convert.ToInt16(ds.Tables[0].Rows[0]["price"].ToString());
                    int totalseat = Convert.ToInt16(Request.QueryString["totalseat"].ToString());
                    int totalprice = price * totalseat;
                    dr["totalprice"] = totalprice;
                    dt.Rows.Add(dr);
                    GridView1.DataSource = dt;
                    GridView1.DataBind();

                    Session["buyitems"] = dt;
                    
                    GridView1.FooterRow.Cells[5].Text = "Total Amount";
                    GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();
                    Response.Redirect("MovieCart.aspx");

                }
            }
            else
            {
                dt = (DataTable)Session["buyitems"];
                GridView1.DataSource = dt;
                GridView1.DataBind();
                if (GridView1.Rows.Count > 0)
                {
                    GridView1.FooterRow.Cells[5].Text = "Total Amount";
                    GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();

                }


            }
            Label2.Text = GridView1.Rows.Count.ToString();

        }

    }
    public int grandtotal()
    {
        DataTable dt = new DataTable();
        dt = (DataTable)Session["buyitems"];
        int nrow = dt.Rows.Count;
        int i = 0;
        int gtotal = 0;
        while (i < nrow)
        {
            gtotal = gtotal + Convert.ToInt32(dt.Rows[i]["totalprice"].ToString());

            i = i + 1;
        }
        return gtotal;
    }
   
    protected void GridView1_RowDeleting1(object sender, GridViewDeleteEventArgs e)
    {
        DataTable dt = new DataTable();
        dt = (DataTable)Session["buyitems"];


        for (int i = 0; i <= dt.Rows.Count - 1; i++)
        {
            int sr;
            int sr1;
            string qdata;
            string dtdata;
            sr = Convert.ToInt32(dt.Rows[i]["sno"].ToString());
            TableCell cell = GridView1.Rows[e.RowIndex].Cells[0];
            qdata = cell.Text;
            dtdata = sr.ToString();
            sr1 = Convert.ToInt32(qdata);

            if (sr == sr1)
            {
                dt.Rows[i].Delete();
                dt.AcceptChanges();
                //Label1.Text = "Item Has Been Deleted From Shopping Cart";
                break;

            }
        }

        for (int i = 1; i <= dt.Rows.Count; i++)
        {
            dt.Rows[i - 1]["sno"] = i;
            dt.AcceptChanges();
        }

        Session["buyitems"] = dt;
        Response.Redirect("MovieCart.aspx");
    }



    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

        Session["sprice"] = Label2.Text;
        Response.Redirect("seat.aspx");
        

    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("seat.aspx");
        
    }
}
