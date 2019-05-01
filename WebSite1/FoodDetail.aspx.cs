using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;
using System.Data;

public partial class FoodDetail : System.Web.UI.Page
{
    string ImgFileName;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Request.QueryString["id"] != null)
            {

                GetDataFromID(Request.QueryString["id"]);
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
                ObjCM.CommandText = "GetFoodByID";
                ObjCM.Parameters.AddWithValue("@F_id", id);
                ObjCM.ExecuteNonQuery();

                SqlDataReader ObjReader = ObjCM.ExecuteReader();
                ObjReader.Read();
                if (ObjReader["F_img"].ToString() != "")
                {
                    string[] Imgpath = ObjReader["F_img"].ToString().Split('/');
                    ImgFileName = Imgpath[1];
                }

                Image1.ImageUrl = ObjReader["F_img"].ToString();
                Label1.Text = ObjReader["F_name"].ToString();
                Label2.Text = ObjReader["F_price"].ToString();
                ObjReader.Close();


            }
            ObjConn.Close();
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string StrConn = WebConfigurationManager.ConnectionStrings["mydbpConnectionString"].ConnectionString;
        using (SqlConnection ObjConn = new SqlConnection(StrConn))
        {
            ObjConn.Open();
            using (SqlCommand ObjCM = new SqlCommand())
            {
                ObjCM.Connection = ObjConn;
                ObjCM.CommandType = CommandType.StoredProcedure;
                ObjCM.CommandText = "InsertBillFood";
                
                ObjCM.Parameters.AddWithValue("@F_id", Label1.Text);
                ObjCM.Parameters.AddWithValue("@bill_id", Label2.Text);
                ObjCM.Parameters.AddWithValue("@Amount", TextBox1.Text);

                ObjCM.ExecuteNonQuery();

            }
            ObjConn.Close();
        }
    }

}


