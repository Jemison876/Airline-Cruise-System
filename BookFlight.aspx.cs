using Ec1GroupProject.AirlineService;
using Ec1GroupProject.CruiseService;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Serialization;

namespace Ec1GroupProject
{
    public partial class BookFlight : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Image.ImageUrl = "~/images/" + Request.QueryString["Image"];
            Airline.Text = Request.QueryString["Airline"].ToString();
            Class.Text = Request.QueryString["Class"].ToString();
            airline_id.Text = Request.QueryString["airline_id"].ToString();
            flight_id.Text = Request.QueryString["flight_id"].ToString();
            departdate.Text = Request.QueryString["departdate"].ToString();
            Price.Text = Request.QueryString["Price"].ToString();
            Departure.Text = Request.QueryString["Departure"].ToString();
            Arrival.Text = Request.QueryString["Arrival"].ToString();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            AirlineService.AirlineSystemSoapClient client = new AirlineSystemSoapClient();
            String b = Request.QueryString["flight_id"].ToString();
            String test = client.BookFlight(b, TextBox7.Text, TextBox8.Text);
            
            if (test == "true")
            {
                TextBox10.Visible = true;
                TextBox9.Visible = true;
                Label3.Text = "Flight Booked Successfully";
                Button2.Visible = true;
                RoomBooking.Visible = true;
                Label4.Visible = true;
                Label5.Visible = true;

                TextBox7.Enabled = false;
                TextBox8.Enabled = false;
                Button1.Enabled = false;
            }
            else
            {
                Label3.Text = "Unsucessful booking";
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            CruiseService.CruiseSystemSoapClient client = new CruiseSystemSoapClient();
            SqlDataSource SqlDataSource1 = new SqlDataSource();
            SqlDataSource1.ID = "SqlDataSource1";
            this.Page.Controls.Add(SqlDataSource1);

            
            SqlDataSource1.ConnectionString = @"Data Source = (LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\UserInformation.mdf;Integrated Security=True";
            SqlDataSource1.SelectCommand = client.DisplayAvailable(TextBox9.Text, TextBox10.Text);
            GridView1.DataSource = SqlDataSource1;
            GridView1.DataBind();
        }
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow gr = GridView1.SelectedRow;

            Response.Redirect("BookRoom.aspx?roomnum=" + gr.Cells[1].Text + "&checkin=" + TextBox9.Text + "&checkout=" + TextBox10.Text + "&roomtype=" + gr.Cells[4].Text + "&name=" + TextBox7.Text);
        }
    }
}
