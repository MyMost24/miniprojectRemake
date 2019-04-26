using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;
using System.Data;

public partial class AdminEdit : System.Web.UI.Page
{
    string ImgFileName;

    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
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
                if(ObjReader["F_img"].ToString() != "")
                {
                    string[] Imgpath = ObjReader["F_img"].ToString().Split('/');
                    ImgFileName = Imgpath[1];
                }
                
                Image1.ImageUrl = ObjReader["F_img"].ToString();
                TextBox1.Text = ObjReader["F_name"].ToString();
                TextBox2.Text = ObjReader["F_price"].ToString();
                ObjReader.Close();


            }
            ObjConn.Close();
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if(ImgFileName != null)
        {        
            if(System.IO.File.Exists(ImgFileName))
            {
                System.IO.File.Delete(ImgFileName);
            }
        }

        string OldFileName = FileUpload1.FileName;
        string Ext = System.IO.Path.GetExtension(FileUpload1.PostedFile.FileName);
        string NewName = Guid.NewGuid().ToString();
        string cNewname = string.Format("{0}{1}", NewName, Ext);
        string Path = string.Format("img/{0}", cNewname);
        string cPath = Server.MapPath(Path);
        FileUpload1.SaveAs(cPath);

        InsertFileDB(OldFileName, Path);
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
                ObjUD.CommandText = "UpdateFood";
                ObjUD.Parameters.AddWithValue("@F_img", cPath);
                ObjUD.Parameters.AddWithValue("@F_name", TextBox1.Text);
                ObjUD.Parameters.AddWithValue("@F_price", TextBox2.Text);
                ObjUD.Parameters.AddWithValue("@F_id", Request.QueryString["id"]);

                ObjUD.ExecuteNonQuery();

            }
            ObjConn.Close();
        }
    }

}