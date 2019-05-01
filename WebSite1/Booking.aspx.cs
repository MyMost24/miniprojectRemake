using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;
using System.Data;

public partial class About : Page
{
    string getbkid;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DropDownListFloor.Items.Add(new ListItem("กรุณาเลือก"));
            for (int i = 1; i < 4; i++)
            {
                DropDownListFloor.Items.Add(new ListItem("ชั้น" + i.ToString(), i.ToString()));
            }

            for (int i = 17; i < 23; i++)
            {
                DropDownListHour.Items.Add(new ListItem(i.ToString(), i.ToString()));
            }
            for (int i = 0; i < 60; i++)
            {
                if(i<10)
                {
                    string min = Convert.ToString(i);
                    string m = "0" + min;
                    DropDownListMin.Items.Add(new ListItem(m.ToString(), m.ToString()));
                }
                else
                {
                    DropDownListMin.Items.Add(new ListItem(i.ToString(), i.ToString()));
                }
                
            }

        }

    }

        protected void Button1_Click(object sender, EventArgs e)
    {
        Image1.Visible = true ;
        
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        Image2.Visible = true;
    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        Image3.Visible = true;
    }

    protected void Button6_Click(object sender, EventArgs e)
    {
        Image1.Visible = false;
    }

    protected void Button7_Click(object sender, EventArgs e)
    {
        Image2.Visible = false;
    }

    protected void Button8_Click(object sender, EventArgs e)
    {
        Image3.Visible = false;
    }




    protected void DropDownListFloor_SelectedIndexChanged(object sender, EventArgs e)
    {
        DropDownListSeat.Items.Clear();
        if(DropDownListFloor.SelectedValue == "1")
        {
            for(int i = 1 ; i < 11; i++ )
            {
                DropDownListSeat.Items.Add(new ListItem(i.ToString(), i.ToString()));
            }
        }
        else if(DropDownListFloor.SelectedValue == "2")
        {
            for (int i = 1; i < 22; i++)
            {
                DropDownListSeat.Items.Add(new ListItem(i.ToString(), i.ToString()));
            }
        }
        else if (DropDownListFloor.SelectedValue == "3")
        {
            for (int i = 1; i < 9; i++)
            {
                DropDownListSeat.Items.Add(new ListItem(i.ToString(), i.ToString()));
            }
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        InsertBookDB();
        SelectlastRow();
        if (DropDownListBookingType.SelectedValue == "1")
        {
            Response.Redirect("~/Bill.aspx?booking_id="+ getbkid);

            
        }
        else
        {
            Response.Redirect("~/Booking_food.aspx");
        }
    }

    private void InsertBookDB()
    {
        string Date = Calendar1.SelectedDate.Day.ToString();
        string Month = Calendar1.SelectedDate.Month.ToString();
        string Year = Calendar1.SelectedDate.Year.ToString();
        string Hour = DropDownListHour.SelectedValue;
        string Min = DropDownListMin.SelectedValue;
        string DateTime = Year + "-" + Month + "-" + Date + "T" + Hour + ":" + Min;

        string StrConn = WebConfigurationManager.ConnectionStrings["mydbpConnectionString"].ConnectionString;
        using (SqlConnection ObjConn = new SqlConnection(StrConn))
        {
            ObjConn.Open();
            using (SqlCommand ObjCM = new SqlCommand())
            {
                ObjCM.Connection = ObjConn;
                ObjCM.CommandType = CommandType.StoredProcedure;
                ObjCM.CommandText = "InsertBookFromDB";
                ObjCM.Parameters.AddWithValue("@C_name", TextBox1.Text);
                ObjCM.Parameters.AddWithValue("@phone_number", TextBox2.Text);
                ObjCM.Parameters.AddWithValue("@floor", DropDownListFloor.SelectedValue);
                ObjCM.Parameters.AddWithValue("@seat", DropDownListSeat.SelectedValue);
                ObjCM.Parameters.AddWithValue("@C_number", TextBox3.Text);
                ObjCM.Parameters.AddWithValue("@book_date_time", Convert.ToDateTime(DateTime));
                ObjCM.Parameters.AddWithValue("@status_id", "1");
                ObjCM.Parameters.AddWithValue("@booking_id_type", DropDownListBookingType.SelectedValue);

               ObjCM.ExecuteNonQuery();

            }
            ObjConn.Close();
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
}