using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;
using System.Data;

public partial class AdminHomepage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void ListView1_ItemCommand(object sender, ListViewCommandEventArgs e)
    {
        if (e.CommandName == "Edit_Button")
        {
            Response.Redirect("AdminEdit.aspx?id=" + e.CommandArgument);
        }
        if(e.CommandName == "Delete_Button")
        {
            DeleteFileDB(e.CommandArgument.ToString());
            ListView1.DataBind();
        }
    }
    private void DeleteFileDB(string id)
    {
        string StrConn = WebConfigurationManager.ConnectionStrings["mydbpConnectionString"].ConnectionString;
        using (SqlConnection ObjConn = new SqlConnection(StrConn))
        {
            ObjConn.Open();
            using (SqlCommand ObjCM = new SqlCommand())
            {
                ObjCM.Connection = ObjConn;
                ObjCM.CommandType = CommandType.StoredProcedure;
                ObjCM.CommandText = "DeleteFood";
                ObjCM.Parameters.AddWithValue("@F_id", id);

                ObjCM.ExecuteNonQuery();

            }
            ObjConn.Close();
        }
    }
}