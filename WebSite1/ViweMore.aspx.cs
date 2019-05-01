using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;
using System.Data;


public partial class ViweMore : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Request.QueryString["booking_id"] != null)
            {

                GetDataFromID(Request.QueryString["booking_id"]);
            }
        }
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
                ObjCM.CommandText = "GetBookByID";
                ObjCM.Parameters.AddWithValue("@booking_id", id);
                ObjCM.ExecuteNonQuery();

                SqlDataReader ObjReader = ObjCM.ExecuteReader();
                ObjReader.Read();
               
                
                Label1.Text = ObjReader["C_name"].ToString();
                Label2.Text = ObjReader["phone_number"].ToString();
                Label3.Text = ObjReader["floor"].ToString();
                Label4.Text = ObjReader["seat"].ToString();
                Label5.Text = ObjReader["C_number"].ToString();
                Label6.Text = ObjReader["book_date_time"].ToString();
                Label7.Text = ObjReader["type_name"].ToString();
                Image1.ImageUrl = ObjReader["img_money_slip"].ToString();
                ObjReader.Close();


            }
            ObjConn.Close();
        }
    }
}