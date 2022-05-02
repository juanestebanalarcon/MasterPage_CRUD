using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data; //Generic data
using System.Data.SqlClient; //SQL Server
using System.Configuration;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
      
    }

    protected void btnSearch_Click(object sender, EventArgs e)
    {
        string connectionString = ConfigurationManager.ConnectionStrings["WCConnectionString"].ConnectionString;
        SqlConnection conn = new SqlConnection(connectionString);
        conn.Open();
        SqlCommand cm = new SqlCommand();
        string query = "select* from [dbo].[regWC] where manufacturer = @manufacturer";
        cm.CommandText = query;
        cm.Connection = conn;
        cm.Parameters.AddWithValue("manufacturer", txtSearch.Text.ToString());
        DataTable nDT = new DataTable();
        SqlDataAdapter adapterN = new SqlDataAdapter(cm);
        adapterN.Fill(nDT);
        tableWC_read.DataSource = nDT;
        tableWC_read.DataBind();





    }
}