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
    public int Amount { get; set; }
    public int F_price { get; set; }
    public int F_id { get; set; }

    public Showitem(string F_name, int F_id, int Amount,int F_price)
    {
        this.F_name = F_name;       
        this.Amount = Amount;
        this.F_price = F_price;
        this.F_id = F_id;

    }
}