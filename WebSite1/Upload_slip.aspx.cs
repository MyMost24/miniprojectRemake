using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;
using System.Data;


public partial class Mony : System.Web.UI.Page
{
    string getbkid;
    string ImgFileName;
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

  
    protected void Button1_Click(object sender, EventArgs e)
    {
        SelectlastRow();
        if(ChackData() == true)
        {
            string OldFileName = FileUpload1.FileName;
            string Ext = System.IO.Path.GetExtension(FileUpload1.PostedFile.FileName);
            string NewName = Guid.NewGuid().ToString();
            string cNewname = string.Format("{0}{1}", NewName, Ext);
            string Path = string.Format("img/{0}", cNewname);
            string cPath = Server.MapPath(Path);
            FileUpload1.SaveAs(cPath);

            InsertFileDB(OldFileName, Path);
            Response.Redirect("~/OrderBill.aspx?booking_id=" + getbkid);
        }
        else
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMassage", " swal('กรุณากรอกข้อมูล','','error')", true);
        }
        
    }

    private void InsertFileDB(string OldFileName, string cPath)
    {
        string StrConn = WebConfigurationManager.ConnectionStrings["mydbpConnectionString"].ConnectionString;
        using (SqlConnection ObjConn = new SqlConnection(StrConn))
        {
            ObjConn.Open();
            using (SqlCommand ObjUD = new SqlCommand())
            {
                ObjUD.Connection = ObjConn;
                ObjUD.CommandType = CommandType.StoredProcedure;
                ObjUD.CommandText = "UpdateBooking";
                ObjUD.Parameters.AddWithValue("@img_money_slip", cPath);
                ObjUD.Parameters.AddWithValue("@booking_id", Request.QueryString["booking_id"]);
                
                

                ObjUD.ExecuteNonQuery();

            }
            ObjConn.Close();
        }
    }
    private bool ChackData()
    {
        if (FileUpload1.HasFile)
        {
            return true;
        }
        else
        {
            return false;
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