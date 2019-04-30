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
                DropDownListMin.Items.Add(new ListItem(i.ToString(), i.ToString()));
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
}