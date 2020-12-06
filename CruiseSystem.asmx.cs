using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace Ec1GroupProject
{
    /// <summary>
    /// Summary description for CruiseSystem
    /// </summary>
    [WebService(Namespace = "http://HotelSystem.com/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class CruiseSystem : System.Web.Services.WebService
    {

        [WebMethod]
        public string HelloWorld()
        {
            return "Hello World";
        }

        [WebMethod]
        public String DisplayAvailable(String chin, String chout)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\jemis\source\repos\EC1-Group-Project\EC1-Group-Project\App_Data\UserInformation.mdf;Integrated Security=True");
             con.Open();

            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from Rooms where checkout = '" + chin + "'";
            cmd.ExecuteNonQuery();
            String bg = cmd.CommandText;

            return bg;
        }

        [WebMethod]
        public String BookRoom(int rnum, String chin, String chout, String type, String nm)
        {
            String check = "false";
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\jemis\source\repos\EC1-Group-Project\EC1-Group-Project\App_Data\UserInformation.mdf;Integrated Security=True");
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            Random ran = new Random();
            rnum = ran.Next(1, 100);
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "insert into Rooms Values(" + rnum + ",'" + chin + "'," + chout + ",'" + type + "',+'" + nm + "') ";
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
