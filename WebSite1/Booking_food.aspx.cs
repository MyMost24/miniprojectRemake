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

    List<Showitem> showitems = new List<Showitem>();

    protected void Page_Load(object sender, EventArgs e)
    {
        showitems.Add(new Showitem("name",250,250,125));
      
        
      //  ListView1.DataSource = showitems;
        //ListView1.DataBind();
    }
    private void Calculator(string id)
    {
        //foreach (ListViewDataItem item in ListView1.Items)
        //{
            
        //}
    }

    protected void Button2_Click(object sender, EventArgs e)
    {

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

    protected void ListView1_ItemCommand1(object sender, ListViewCommandEventArgs e)
    {

        if (e.CommandName == "viewdetail")
        {
            Response.Redirect("FoodDetail.aspx?id=" + e.CommandArgument);

        }

    }

    protected void ListView1_ItemCommand(object sender, ListViewCommandEventArgs e)
    {

        if (e.CommandName == "viewdetail")
        {
            Response.Redirect("FoodDetail.aspx?id=" + e.CommandArgument);

        }

    }
}