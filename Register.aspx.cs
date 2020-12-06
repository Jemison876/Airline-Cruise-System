using Ec1GroupProject.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ec1GroupProject
{
    public partial class Register : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            

            Session["UserName"] = TextBox1.Text;
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\jemis\source\repos\EC1-Group-Project\EC1-Group-Project\App_Data\UserInformation.mdf;Integrated Security=True");

            con.Open();
            SqlCommand cmd = con.CreateCommand();
            Random ran = new Random();
            int seat = ran.Next(1, 100);
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "insert into UsersLogin Values('" + TextBox1.Text + "','" + TextBox2.Text + "') ";
            int i = cmd.ExecuteNonQuery();
            if (i > 0)
            {

                Response.Redirect("Flights.aspx");
            }
            else
            {
                Label1.Text = "Invalid Data Entered";
            }
            con.Close();

        }
        
    }
}