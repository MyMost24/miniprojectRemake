using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Web.UI.WebControls;

/// <summary>
/// Summary description for Showitem
/// </summary>
public class Showitem
{
    public string F_name { get; set; }
    public int F_id { get; set; }
    public int Bill_id { get; set; }
    public int Amount { get; set; }
    public int F_price { get; set; }

    public Showitem(string fName, int fNum, int fSum,int fDeposit)
    {
        this.F_name = F_name;
        this.F_id = F_id;
        this.Amount = Amount;
        this.F_price = F_price;
        this.Bill_id = Bill_id;
    }
}