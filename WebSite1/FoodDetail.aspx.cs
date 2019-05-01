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
    string getbkid;
    List<Showitem> showitems = new List<Showitem>();
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

                HiddenField1.Value = ObjReader["F_id"].ToString();
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
        SelectlastRow();
        if(ChackData() == true)
        {
            if (Session["Order"] != null)
            {
                List<Showitem> showitems2 = (List<Showitem>)Session["Order"];
                showitems2.Add(new Showitem(Label1.Text, int.Parse(HiddenField1.Value), int.Parse(TextBox1.Text), int.Parse(Label2.Text) * int.Parse(TextBox1.Text)));
                Session["Order"] = showitems2;
            }
            else
            {
                showitems.Add(new Showitem(Label1.Text, int.Parse(HiddenField1.Value), int.Parse(TextBox1.Text), int.Parse(Label2.Text) * int.Parse(TextBox1.Text)));
                Session["Order"] = showitems;
            }
            Response.Redirect("~/Booking_food.aspx?booking_id=" + getbkid);

        }
        else
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMassage", " swal('กรุณาเลือกจำนวน','','error')", true);
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
    private bool ChackData()
    {
        if (TextBox1.Text.Length <= 0)
        {
            return false;
        }

        return true;
    }



    }


