<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Ec1GroupProject._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        .logo2 {
            padding: 5px;
        }


        .logo1 {
            display: block;
            margin-left: auto;
            margin-right: auto;
            width: 50%;
        }
    </style>

    <h1 class="display-4" align="center">JTB Airline & Cruise</h1>
    <br />

    <div class="row">

        <div class="col-sm-4">
            <div class="card mb-4">
                <div class="card-body text-center">
                    <img src="images/plane.jpg" height="300" width="400" class="logo2" />

                </div>
            </div>
        </div>

        <div class="col-sm-4">
            <div class="card mb-4">
                <div class="card-body text-center">
                    <img src="images/hotel.jpg" height="300" width="400" class="logo2" />
                </div>
            </div>
        </div>

        <div class="col-sm-4">
            <div class="card mb-4">
                <div class="card-body text-center">
                    <img src="images/jamaica.jpg" height="300" width="400" class="logo2" />
                </div>
            </div>
        </div>
    </div>

    <h2 class="display-4">Our Mission</h2>
    <h4>To develop and market the tourist industry so that Jamaica remains the premier Caribbean tourist destination.</h4>
    <br />

    <div class="display-4" style="background-color: #B5C5C4; padding:5px">
        <h1 class="display-4">Compare now and save at JTB Airline & Cruise!</h1>
    <br />
    <p class="lead"><a class="btn btn-primary btn-lg" href="Register.aspx" role="button">Register </a></p>
    </div>
    
    <h1 align="center">Featured Destinations</h1>
    <br />
    <div class="row">

        <div class="col-sm-4">
            <div class="card mb-4">
                <div class="card-body text-center">
                    <p class="lead">New York</p>
                    <img src="images/city.png" height="300" width="400" class="logo2" />

                </div>
            </div>
        </div>
        <!---->
        <div class="col-sm-4">
            <div class="card mb-4">
                <div class="card-body text-center">
                    <p class="lead">Maldives</p>
                    <p class="card-text"></p>
                    <img src="images/beach.jpg" height="300" width="400" class="logo2" />
                </div>
            </div>
        </div>

        <div class="col-sm-4">
            <div class="card mb-4">
                <div class="card-body text-center">
                    <p class="lead">Montego Bay</p>
                    <img src="images/image1.jpg" height="300" width="400" class="logo2" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
