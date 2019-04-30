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




    protected void ListView1_ItemCommand(object sender, ListViewCommandEventArgs e)
    {
        if (e.CommandName == "concon")
        {
            int index = int.Parse(e.CommandArgument.ToString());
            if (index <= ListView1.Items.Count)
            {
                ListViewDataItem p_name = ListView1.Items[index];
                ListView2.DataSource = p_name;
                ListView2.DataBind();
                
            }
        }
    }
}