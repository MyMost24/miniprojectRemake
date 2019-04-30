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
    public string fName { get; set; }
    public int fNum { get; set; }
    public int fSum { get; set; }
    public int fDeposit { get; set; }

    public Showitem(string fName, int fNum, int fSum,int fDeposit)
    {
        this.fName = fName;
        this.fNum = fNum;
        this.fSum = fSum;
        this.fDeposit = fDeposit;
    }
}