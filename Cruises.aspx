<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Cruises.aspx.cs" Inherits="Ec1GroupProject.Cruises" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div id="myCarousel" class="carousel slide" data-ride="carousel">
        <!-- Indicators -->
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
        </ol>

        <!-- Wrapper for slides -->
        <div class="carousel-inner">
            <div class="item active">
                <img src="/images/Cruise1.jpg" height="400" width="1180" alt="Los Angeles">
            </div>

            <div class="item">
                <img src="/images/sunset.jpg" height="150" width="1180" alt="Chicago">
            </div>

            <div class="item">
                <img src="/images/twoships.jpg" height="150" width="1180" alt="New York">
            </div>
        </div>

        <!-- Left and right controls -->
        <a class="left carousel-control" href="#myCarousel" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#myCarousel" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>
    <div class="container">
        <h4 class="text-center pl-5 pt-5 pr-5">POPULAR TRAVEL DESTINATIONS</h4>
    </div>
</asp:Content>
