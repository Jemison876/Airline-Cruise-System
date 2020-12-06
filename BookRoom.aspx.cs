using Ec1GroupProject.CruiseService;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ec1GroupProject
{
    public partial class BookRoom : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            roomnum.Text = Request.QueryString["roomnum"].ToString();
            checkin.Text = Request.QueryString["checkin"].ToString();
            checkout.Text = Request.QueryString["checkout"].ToString();
            roomtype.Text = Request.QueryString["roomtype"].ToString();
            name.Text = Request.QueryString["name"].ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String test = "";
            CruiseService.CruiseSystemSoapClient client = new CruiseSystemSoapClient();
            test = client.BookRoom(Convert.ToInt16(roomnum.Text), checkin.Text, checkout.Text, roomtype.Text, name.Text);
            if (test == "true")
            {
                Label6.Text = "Room has been booked";
            }
            else
            {
                Label6.Text = "Unsuccesfull booking";
            }
        }

    }



}