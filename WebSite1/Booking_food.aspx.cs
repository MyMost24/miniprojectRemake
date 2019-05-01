using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;
using System.Data;

public partial class Booking_food : System.Web.UI.Page
{
    string getbkid;
    List<Showitem> showitems = new List<Showitem>();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Order"] != null)
        {
            showitems = (List<Showitem>)Session["Order"];
            GridView1.DataSource = showitems;
            GridView1.DataBind();
            Calculator();
            Calculator2();
        }
        
       
    }
    private long Calculator()
    {
        long sumcal = 0;
        foreach (GridViewRow row in GridView1.Rows)
        {
            
            long price = long.Parse(row.Cells[2].Text);
            sumcal += price;
        }
       

        TextBox1.Text = sumcal.ToString();
        return sumcal;
    }
    private void Calculator2()
    {
        
        long sum1 = Calculator();
        float result = sum1 / 2 ;
        TextBox2.Text = result.ToString();
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        SelectlastRow();
        gg();
        Response.Redirect("Upload_slip.aspx?booking_id=" + getbkid);

    }
    private void GetDataFromID(string id)
    {
        string StrConn = WebConfigurationManager.ConnectionStrings["mydbpConnectionString"].ConnectionString;
        using (SqlConnection ObjConn = new SqlConnection(StrConn))
        {
            ObjConn.Open();
            using (SqlCommand ObjCM = new SqlCommand())
            {
                ObjCM.Connection = ObjConn;
                ObjCM.CommandType = CommandType.StoredProcedure;
                ObjCM.CommandText = "GetFoodByID";
                ObjCM.Parameters.AddWithValue("@F_id", id);
                ObjCM.ExecuteNonQuery();

                SqlDataReader ObjReader = ObjCM.ExecuteReader();
                ObjReader.Read();

                
                ObjReader.Close();


            }
            ObjConn.Close();
        }
    }



    protected void ListView1_ItemCommand(object sender, ListViewCommandEventArgs e)
    {

        if (e.CommandName == "viewdetail")
        {
            Response.Redirect("FoodDetail.aspx?id=" + e.CommandArgument);

        }

    }
    private void SelectlastRow()
    {
        string StrConner = WebConfigurationManager.ConnectionStrings["mydbpConnectionString"].ConnectionString;
        using (SqlConnection ObjConner = new SqlConnection(StrConner))
        {
            ObjConner.Open();
            using (SqlCommand ObjCM = new SqlCommand())
            {
                ObjCM.Connection = ObjConner;
                ObjCM.CommandType = CommandType.StoredProcedure;
                ObjCM.CommandText = "SelectLastRow";
                SqlDataReader Doodetail = ObjCM.ExecuteReader();
                Doodetail.Read();
                getbkid = Doodetail["booking_id"].ToString();
                Doodetail.Close();

            }
            ObjConner.Close();
        }
    }
    private void gg()
    {
        foreach (GridViewRow row in GridView1.Rows)
        {
            HiddenField id = (HiddenField)row.FindControl("H_id");
            int F_id1 = int.Parse(id.Value);
            string name = row.Cells[0].Text;
            int amount = int.Parse(row.Cells[1].Text);
            int price = int.Parse(row.Cells[2].Text);


            showitems.Add(new Showitem(name, F_id1, amount, price));
            Savebookfood(F_id1,int.Parse(Request.QueryString["booking_id"]), amount);
        }
    }
    protected void Savebookfood(int F_id1, int booking_id, int amount)
    {

        string StrConn = WebConfigurationManager.ConnectionStrings["mydbpConnectionString"].ConnectionString;
        using (SqlConnection ObjConn = new SqlConnection(StrConn))
        {
            ObjConn.Open();
            using (SqlCommand ObjCM = new SqlCommand())
            {
                ObjCM.Connection = ObjConn;
                ObjCM.CommandType = CommandType.StoredProcedure;
                ObjCM.CommandText = "InsertBookFoodFromDB";
                ObjCM.Parameters.AddWithValue("@booking_id", Request.QueryString["booking_id"]);
                ObjCM.Parameters.AddWithValue("@F_id", F_id1);
                ObjCM.Parameters.AddWithValue("@Amount", amount );

                ObjCM.ExecuteNonQuery();

            }
            ObjConn.Close();
        }

    }


    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        Response.Redirect("A.aspx");
        if (e.CommandName == "Delete")
        {
            int id = Convert.ToInt32(e.CommandArgument);

            for (int i = 0; i < showitems.Count; i++)
            {
                System.Diagnostics.Debug.WriteLine("IN FOR" + id + " CAT " + showitems[i].F_id);

                if (showitems[i].F_id == id)
                {
                    System.Diagnostics.Debug.WriteLine("IN IF" + showitems[i].ToString());

                    showitems.RemoveAt(i);
                    GridView1.DataSource = showitems;
                    GridView1.DataBind();
                    System.Diagnostics.Debug.WriteLine("AFTER IF" + showitems.Count);

                }
            }
        }
    }


    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int id = (int)e.Keys["F_id"];
        for (int i = 0; i < showitems.Count; i++)
        {
            System.Diagnostics.Debug.WriteLine("IN FOR" + id + " CAT " + showitems[i].F_id);

            if (showitems[i].F_id == id)
            {
                System.Diagnostics.Debug.WriteLine("IN IF" + showitems[i].ToString());

                showitems.RemoveAt(i);
                GridView1.DataSource = showitems;
                GridView1.DataBind();
                System.Diagnostics.Debug.WriteLine("AFTER IF" + showitems.Count);

            }
        }

        // Delete here the database record for the selected patientID

    }
}