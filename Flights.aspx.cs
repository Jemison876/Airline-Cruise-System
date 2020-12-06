using Ec1GroupProject.AirlineService;
using Ec1GroupProject.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.ModelBinding;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace Ec1GroupProject 
{
    public partial class Flights : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {



            if (returnFlight.Visible == false)
            {
                Button2.BackColor = System.Drawing.Color.Black;
                Button1.BackColor = System.Drawing.ColorTranslator.FromHtml("#f4bf1e");
            }
        }
        UserInformationEntities DBContext = new UserInformationEntities();

        public IQueryable<Models.Flight> GetSearchedItems([Control("txtFrom")] string Search, [Control("txtTo")] string Find, [Control("txtDepart")] DateTime? Depart, [Control("txtReturn")] DateTime? Return)
        {
            //As there is no search word is given so listview is populated with all records sorted by First Name
            IQueryable<Models.Flight> query = DBContext.Flights.OrderBy(emp => emp.airline_id);

            if (!string.IsNullOrEmpty(Search) && Depart != null && !string.IsNullOrEmpty(Find))
            {
                query = query.Where(emp => emp.Departure.Contains(Search) && emp.Arrival.Contains(Find) && emp.departdate == Depart);

            }

            if (Return != null)
            {
                query = query
                       .Where(s => s.departdate == Return);
            }
            return query;
        }
    
        protected void List_SelectedIndexChanged(object sender, EventArgs e)
        {
            FlightList.DataBind();
            Response.Write("<script>Window.location.reload()</script>");

        }
        protected void btnSearch_Click(object sender, EventArgs e)
        {
            AirlineService.AirlineSystemSoapClient client = new AirlineSystemSoapClient();
            if (returnFlight.Visible == true)
            {

                SqlDataSource SqlDataSource1 = new SqlDataSource();
                SqlDataSource1.ID = "SqlDataSource1";
                this.Page.Controls.Add(SqlDataSource1);
                SqlDataSource1.ConnectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=""C:\Users\jemis\source\repos\EC1-Group-Project\EC1-Group-Project\App_Data\UserInformation.mdf"";Integrated Security=True;MultipleActiveResultSets=True;Connect Timeout=30;Application Name=EntityFramework";
                SqlDataSource1.SelectCommand = "select * from Flights where Departure = '" + txtFrom.Text + "' and departdate ='" + txtDepart.Text + "' and Arrival ='" + txtTo.Text + "'or departdate ='" + txtReturn.Text + "'";
                Lists.DataSource = SqlDataSource1;
            }
            else
            {
                
            }
            Lists.DataBind();

        }

   
        protected void Button1_Click(object sender, EventArgs e)
        {
            returnFlight.Visible = false;
            Button1.BackColor = System.Drawing.ColorTranslator.FromHtml("#B5C5C4");
            Button2.BackColor = System.Drawing.Color.Black;
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            returnFlight.Visible = true;
            Button2.BackColor = System.Drawing.ColorTranslator.FromHtml("#B5C5C4");
            Button1.BackColor = System.Drawing.Color.Black;
        }

        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {
            GridViewRow gr = Lists.SelectedRow;

            Response.Redirect("BookFlight.aspx?airline_id=" + gr.Cells[1].Text + "&flight_id=" + gr.Cells[2].Text + "&departdate=" + gr.Cells[3].Text + "&Price=" + gr.Cells[4].Text + "&Departure=" + gr.Cells[5].Text + "&Arrival=" + gr.Cells[6].Text);
        }

    }

}