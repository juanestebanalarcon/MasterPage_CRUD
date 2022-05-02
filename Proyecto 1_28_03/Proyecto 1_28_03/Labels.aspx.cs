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
    SqlDataAdapter adapterN = new SqlDataAdapter();
    DataTable nDT = new DataTable();
    DataSet nDS = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {
        conn.ConnectionString = ConfigurationManager.ConnectionStrings["WCConnectionString"].ConnectionString;
    }

    protected void btnPrint_Click(object sender, EventArgs e)
    {
        //variables
        String orderN, partNumber, color = " ";
        orderN = txtOrder.Text.ToString();
        partNumber = TxtPart.Text.ToString();
        //Check selected color
        if(black.Checked == true)
        {
            color = "Black";
        } else if (brown.Checked == true) 
        {
            color = "Brown";
        }
        else if (Almond.Checked == true)
        {
            color = "Almond";
        }
        else if (Green.Checked == true)
        {
            color = "Green";
        }
        else if (Tan.Checked == true)
        {
            color = "Tan";
        }
        else if (Gray.Checked == true)
        {
            color = "Gray";
        }
        else if (Burgundy.Checked == true)
        {
            color = "Burgundy";
        }
        String report = " ";
        SqlCommand cm = new SqlCommand("select* from [dbo].[newSubPart] where partNumber = @partNumber",conn);
        cm.Parameters.AddWithValue("@partNumber",partNumber);
        conn.Open();
        SqlDataReader regPrint = cm.ExecuteReader();

        if(regPrint.Read())
        {
            if (regPrint["driversSide"].ToString() != null && regPrint["passengerSide"].ToString() != null)
            {

                report += " " + orderN + "\n" + regPrint["partNumber"].ToString() + "\n" + "-------------------------------" + "\n" + regPrint["make"].ToString() + "\n" + "-------------------------------" + "\n" + regPrint["front"].ToString() + "," + regPrint["driversSide"].ToString() + "," + regPrint["passengerSide"].ToString() + "\n" + color.ToString() + "\n";
            }
            else if (regPrint["driversSide"].ToString() == null || regPrint["driversSide"].ToString() == " ")
            {
                report += " " + orderN + "\n" + regPrint["partNumber"].ToString() + "\n" + "-------------------------------" + "\n" + regPrint["make"].ToString() + "\n" + "-------------------------------" + "\n" + regPrint["front"].ToString() + "," + regPrint["passengerSide"].ToString() + "\n" + color.ToString() + "\n";

            }
            else if (regPrint["passengerSide"].ToString() == null || regPrint["passengerSide"].ToString() == " ") {

                report += " " + orderN + "\n" + regPrint["partNumber"].ToString() + "\n" + "-------------------------------" + "\n" + regPrint["make"].ToString() + "\n" + "-------------------------------" + "\n" + regPrint["front"].ToString() + "," + regPrint["driversSide"].ToString() + "\n" + color.ToString() + "\n";

            } else if ((regPrint["passengerSide"].ToString() == null || regPrint["passengerSide"].ToString() == " ") && (regPrint["driversSide"].ToString() != null || regPrint["driversSide"].ToString() != " ")) {

                report += " " + orderN + "\n" + regPrint["partNumber"].ToString() + "\n" + "-------------------------------" + "\n" + regPrint["make"].ToString() + "\n" + "-------------------------------" + "\n" + regPrint["front"].ToString() + "," + regPrint["driversSide"].ToString() + "\n" + color.ToString() + "\n";
            } else if ((regPrint["passengerSide"].ToString() != null || regPrint["passengerSide"].ToString() != " ") && (regPrint["driversSide"].ToString() == null || regPrint["driversSide"].ToString() == " ")) {
               
            report += " " + orderN + "\n" + regPrint["partNumber"].ToString() + "\n" + "-------------------------------" + "\n" + regPrint["make"].ToString() + "\n" + "-------------------------------" + "\n" + regPrint["front"].ToString() + "," + regPrint["passengerSide"].ToString() + "\n" + color.ToString() + "\n";

            } else if ((regPrint["passengerSide"].ToString() == null || regPrint["passengerSide"].ToString() == " ") && (regPrint["driversSide"].ToString() == null || regPrint["driversSide"].ToString() == " "))
            {
                report += " " + orderN + "\n" + regPrint["partNumber"].ToString() + "\n" + "-------------------------------" + "\n" + regPrint["make"].ToString() + "\n" + "-------------------------------" + "\n" + regPrint["front"].ToString() + "\n" + color.ToString() + "\n";

            }
        }
        printArea.Text = report.ToString();

    }
}