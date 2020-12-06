<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="BookFlight.aspx.cs" Inherits="Ec1GroupProject.BookFlight" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<h4 class="text-center pl-5 pt-5 pr-5">SELECTED FLIGHT DETAILS</h4>
    <div class="container-fluid p-5">
        <div class="row">
            <div class="col-4">
                <asp:Image runat="server" ImageUrl="images" CssClass="home_img text-center" ID="Image" width="230" height="200" style="border:
                              solid" />
            </div>
            <div class="col-8">
                <table class="table table-bordered table-responsive table-striped table-warning">
                    <tbody>
                        <tr>
                            <th>Flight Number</th>
                            <th>Airline Number</th>
                            <th>Airline Name</th>
                            <th>From</th>
                            <th>To</th>
                            <th>Departure Date</th>
                            <th>Return</th>
                            <th>Class</th>
                            <th>Price</th>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="flight_id" runat="server" Text="" />
                            </td>
                            <td>
                                <asp:Label ID="airline_id" runat="server" Text="" />
                            </td>
                            <td>
                                <asp:Label ID="Airline" runat="server" Text="" />
                            </td>
                            <td>
                                <asp:Label ID="Departure" runat="server" Text="" />
                            </td>
                            <td>
                                <asp:Label ID="Arrival" runat="server" Text="" />
                            </td>
                            <td>
                                <asp:Label ID="departdate" runat="server" Text="" />
                            </td>
                            <td>
                                <asp:Label ID="Return" runat="server" Text="No Return Date" />
                            </td>
                            <td>
                                <asp:Label ID="Class" runat="server" Text="" />
                            </td>
                            <td>$<asp:Label ID="Price" runat="server" Text="" />
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
        <div class="pt-5 pb-5">
            <h4>WHO'S TRAVELING?</h4>
            <br />
            <table>
                <tr>
                    <td class="pr-3">
                        <asp:Label ID="Label1" runat="server" Text="NAME:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                    </td>
                    <td class="pr-3 pl-5">
                        <asp:Label ID="Label2" runat="server" Text="DOB:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox8" Height="35" runat="server"></asp:TextBox>
                    </td>
                    <td class="pr-5 pl-5">
                        <asp:Button ID="Button1" CssClass="btn btn-outline-primary" runat="server" OnClick="Button1_Click" Text="Book Flight" />
                    </td>
                    <td class="pr-5 pl-5">
                        <asp:Label ID="Label3" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
        <br />
        <div id="RoomBooking" runat="server" class="pb-5" visible="False">
            <h4>SELECT YOUR ROOM FOR THE CRUISE</h4>
            <br />
            <table>
                <tr>
                    <td class="pr-3">
                        <asp:Label ID="Label4" runat="server" Text="CHECK IN" Visible="False"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox9" runat="server" Visible="False"></asp:TextBox>
                    </td>
                    <td class="pr-3 pl-5">
                        <asp:Label ID="Label5" runat="server" Text="CHECK OUT" Visible="False"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox10" runat="server" Visible="False"></asp:TextBox>
                    </td>
                    <td class="pr-5 pl-5">
                        <asp:Button ID="Button2" CssClass="btn btn-outline-primary" runat="server" OnClick="Button2_Click" Text="Book Hotel" />
                    </td>
                    <td class="pr-5 pl-5">
                        <asp:Label ID="Label8" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
        <asp:GridView ID="GridView1" runat="server" CssClass="table table-striped" BorderStyle="None" BorderWidth="1px" CellPadding="3" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#007DBB" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#00547E" />
        </asp:GridView>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
    </div>
    <div style="clear: both;" class="pt-5 text-center">
    </div>
</asp:Content>
