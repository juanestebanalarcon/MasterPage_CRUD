using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data; //Generic data
using System.Data.SqlClient; //SQL Server
using System.Configuration;

public partial class Default2 : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection();
    SqlCommand cm = new SqlCommand();
    SqlDataAdapter adapterN = new SqlDataAdapter();
    DataTable nDT = new DataTable();
    DataSet nDS = new DataSet();

    protected void Page_Load(object sender, EventArgs e)
    {
        conn.ConnectionString = ConfigurationManager.ConnectionStrings["WCConnectionString"].ConnectionString;
        conn.Open();
    }

    
    protected void btnSaveWC_Click(object sender, EventArgs e)
    {
        nDT = new DataTable();
        cm.CommandText = "insert into regWC(manufacturer,model,startYear,endYear,nDoors,withDriver,withPassenger,withBoth) values('"+manufacturerTxt.Text.ToString()+"',"+"'"+modelTXT.Text.ToString()+"','"+TXTstartY.Text.ToString()+"','"+endYtxt.Text.ToString()+"','"+nDoorsTXT.Text.ToString()+"','"+wDriverTxt.Text.ToString() +"','"+wPassengerTxt.Text.ToString()+"','"+wBothTxt.Text.ToString()+"')";
        cm.Connection = conn;
        cm.ExecuteNonQuery();

    }
 
}