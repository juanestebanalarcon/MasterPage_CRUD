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

    protected void btnSaveSubPart_Click(object sender, EventArgs e)
    {
        nDT = new DataTable();
        //convert text box to integer
        int partNumber = int.Parse(TXTpartNumber.Text);
        cm.CommandText = "insert into newSubPart(partNumber,make,front,driversSide,passengerSide) values("+partNumber+",'"+TXTmake.Text.ToString()+"','"+TXTfront.Text.ToString()+"','"+TXTdriversSide.Text.ToString()+"','"+TXTpassengerSide.Text.ToString()+"')";
        cm.Connection = conn;
        cm.ExecuteNonQuery();
    }
}