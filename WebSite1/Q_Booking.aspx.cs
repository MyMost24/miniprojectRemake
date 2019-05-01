using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;
using System.Data;

public partial class Q_Booking : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ListView1_ItemCommand(object sender, ListViewCommandEventArgs e)
    {
        if (e.CommandName == "Clear_Button")
        {
            DeleteBookingDB(e.CommandArgument.ToString());
            ListView1.DataBind();
        }
    }
    private void DeleteBookingDB(string id)
    {
        string StrConn = WebConfigurationManager.ConnectionStrings["mydbpConnectionString"].ConnectionString;
        using (SqlConnection ObjConn = new SqlConnection(StrConn))
        {
            ObjConn.Open();
            using (SqlCommand ObjCM = new SqlCommand())
            {
                ObjCM.Connection = ObjConn;
                ObjCM.CommandType = CommandType.StoredProcedure;
                ObjCM.CommandText = "ChangeStatusQBooking";
                ObjCM.Parameters.AddWithValue("@booking_id", id);

                ObjCM.ExecuteNonQuery();

            }
            ObjConn.Close();
        }
    }

 
}