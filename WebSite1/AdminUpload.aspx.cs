using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;
using System.Data;

public partial class AdminUpload : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (ChackData() == true)
        {

            string OldFileName = FileUpload1.FileName;
            string Ext = System.IO.Path.GetExtension(FileUpload1.PostedFile.FileName);
            string NewName = Guid.NewGuid().ToString();
            string cNewname = string.Format("{0}{1}", NewName, Ext);
            string Path = string.Format("img/{0}", cNewname);
            string cPath = Server.MapPath(Path);
            FileUpload1.SaveAs(cPath);
        

            InsertFileDB(OldFileName, Path);

            
            Response.Redirect("~/Admin.aspx");

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
            using (SqlCommand ObjCM = new SqlCommand())
            {
                ObjCM.Connection = ObjConn;
                ObjCM.CommandType = CommandType.StoredProcedure;
                ObjCM.CommandText = "InsertFoodFromDB";
                ObjCM.Parameters.AddWithValue("@F_img", cPath);
                ObjCM.Parameters.AddWithValue("@F_name", TextBox1.Text);  
                ObjCM.Parameters.AddWithValue("@F_price", TextBox2.Text);

                ObjCM.ExecuteNonQuery();

            }
            ObjConn.Close();
        }
    }
    private bool ChackData()
    {
        if(TextBox1.Text.Length <= 0)
        {
            return false;
        }
        else if(TextBox2.Text.Length <= 0)
        {
            return false;
        }

        return true;
    }
}