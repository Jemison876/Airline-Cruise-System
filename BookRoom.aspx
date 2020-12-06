<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="BookRoom.aspx.cs" Inherits="Ec1GroupProject.BookRoom" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

      <h4 class="text-center pl-5 pt-5 pr-5">SELECTED ROOM DETAILS</h4>
    <div class="container-fluid p-5">
        <div class="row">
            <div class="col-4">
                 <img src="images/room1.jpg" height ="300" width ="400" class ="logo2"  />
            </div>
            <div class="col-8">
                <table class="table table-bordered table-responsive table-striped table-warning">
                    <tbody>
                        <tr>
                            <th>Name</th>
                            <th>Room Number</th>
                            <th>Room Type</th>
                            <th>Check In Time</th>
                            <th>Check Out Time</th>
                        </tr>
                        <tr>

                            <td>
                                <asp:Label ID="name" runat="server" Text="" />
                            </td>
                            <td>
                                <asp:Label ID="roomnum" runat="server" Text="" />
                            </td>
                            <td>
                                <asp:Label ID="roomtype" runat="server" Text="" />
                            </td>
                            <td>
                                <asp:Label ID="checkin" runat="server" Text="" />
                            </td>
                            <td>
                                <asp:Label ID="checkout" runat="server" Text="" />
                            </td>

                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Book Room" />
        <br />
        <br />
        <asp:Label ID="Label6" runat="server"></asp:Label>
    </div>

</asp:Content>
