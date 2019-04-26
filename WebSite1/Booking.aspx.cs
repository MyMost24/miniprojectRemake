using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class About : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

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
}