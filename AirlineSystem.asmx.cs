using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Data;
using System.Data.SqlClient;
using Ec1GroupProject.Models;
using System.Xml.Serialization;

namespace Ec1GroupProject
{
    /// <summary>
    /// Summary description for AirlineSystem
    /// </summary>
    [WebService(Namespace = "http://Airlinebook.com/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class AirlineSystem : System.Web.Services.WebService
    {

        [WebMethod]
        public string HelloWorld()
        {
            return "Hello World";
        }

        [WebMethod]
        public List<Flight> DisplayFlights(String dep, String date, String arr)
        {

            
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\jemis\source\repos\EC1-Group-Project\EC1-Group-Project\App_Data\UserInformation.mdf;Integrated Security=True");

            con.Open();

            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from Flights where Departure = '" + dep + "' and departdate ='" + date + "' and Arrival ='" + arr + "'";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            List<Flight> flight = new List<Flight>();
            if (dt.Rows.Count > 0)
            {
                foreach (DataRow dr in dt.Rows)
                {
                    Flight fly = new Flight();
                    fly.airline_id = dr["airline_id"].ToString();
                    fly.flight_id = dr["flight_id"].ToString();
                    fly.departdate = dr["departdate"].ToString();
                    fly.Price = Convert.ToInt16(dr["Price"]);
                    fly.Departure = dr["Departure"].ToString();
                    fly.arrival = dr["Arrival"].ToString();
                    flight.Add(fly);
                }
                return flight;
            }
            else
            {
                return flight;
            }
        }
        UserInformationEntities DBContext = new UserInformationEntities();
      
        [WebMethod]
        public List<Flight> Display(String dep, String date, String arr)
        {
           
            List<Flight> flight = new List<Flight>();
            List<Flight> query = flight.Where(emp => emp.Departure == dep || emp.arrival == arr || emp.departdate == date).ToList();
            if (query == null)
            {
                query = flight;
            }
           
            return query;
        }
        [WebMethod]
        public string yoo()
        {
            return "yooo";
        }
        [WebMethod]
        public String BookFlight(String flyid, String nm, String db)
        {
            String check = "false";
           
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\jemis\source\repos\EC1-Group-Project\EC1-Group-Project\App_Data\UserInformation.mdf;Integrated Security=True");

            con.Open();
            SqlCommand cmd = con.CreateCommand();
            Random ran = new Random();
            int seat = ran.Next(1, 100);
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "insert into BookFlight Values('" + flyid + "','" + nm + "'," + seat + ",'" + db + "') ";
            int i = cmd.ExecuteNonQuery();
            if (i > 0)
            {
                check = "true";
            }

            con.Close();
            return check;

        }


    }
}
