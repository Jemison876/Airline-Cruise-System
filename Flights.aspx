<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Flights.aspx.cs" Inherits="Ec1GroupProject.Flights" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        .logo2 {
            padding: 10px;
        }
    </style>


    <div class="nestedHeaderMaster">
        <div class="page-heading">
            <h2 class="text-center font-weight-bold text-white pl-5 pr-5">SEARCH FLIGHT DETAILS</h2>
            <span style="padding-left: 105px; padding-bottom: -80px">
                <asp:Button ID="Button1" CssClass="btn head-color text-white rounded-0" runat="server" OnClick="Button1_Click" Text="One-way" />
                <asp:Button ID="Button2" CssClass="btn head-color text-white rounded-0" runat="server" OnClick="Button2_Click" Text="Round-trip" />
            </span>
            <br />
            <br />
            <section class="container pt-3 rounded-bottom rounded-right" style="background-color: #E1E1E1">

                <table class="table table-responsive border-0">
                    <tr>
                        <td class="border-0">
                            <div class="input-group mb-3">
                                <div class="input-group-prepend">
                                    <span class="btn bg-white head-color border border-right-0 pt-2"><i class="fa fa-map-marker pt-2"></i></span>
                                </div>
                                <asp:TextBox ID="txtFrom" Height="50" CssClass="form-control" PlaceHolder="FROM" runat="server"></asp:TextBox>
                            </div>
                        </td>
                        <td class="border-0">
                            <div class="input-group mb-3">
                                <div class="input-group-prepend">
                                    <span class="btn bg-white head-color border border-right-0 pt-2"><i class="fa fa-map-marker pt-2"></i></span>
                                </div>
                                <asp:TextBox ID="txtTo" Height="50" CssClass="form-control" PlaceHolder="TO" runat="server"></asp:TextBox>
                            </div>
                        </td>
                        <td class="border-0">
                            <div class="input-group mb-3">
                                <div class="input-group-prepend">
                                    <span class="btn bg-white head-color border border-right-0 pt-2"><i class="fa fa-calendar pt-2"></i></span>
                                </div>
                                <asp:TextBox ID="txtDepart" Height="50" CssClass="form-control" PlaceHolder="DEPART" runat="server"></asp:TextBox>
                            </div>
                        </td>

                        <td id="returnFlight" class="border-0" visible="false" runat="server">
                            <div class="input-group mb-3">
                                <div class="input-group-prepend">
                                    <span class="btn bg-white head-color border border-right-0 pt-2"><i class="fa fa-calendar pt-2"></i></span>
                                </div>
                                <asp:TextBox ID="txtReturn" Height="50" CssClass="form-control" PlaceHolder="RETURN" runat="server"></asp:TextBox>

                            </div>
                        </td>
                        <td class="border-0">
                            <asp:Button ID="btnSearch" Enabled="true" Height="50" CssClass="form-control border-right-0 btn-primary" Text="Search" runat="server" CausesValidation="false" OnClick="btnSearch_Click" />
                            <br />
                            <%-- <asp:Button ID="Button3" runat="server" Text="SEARCHS" OnClick="Button3_Click" />--%>
                        </td>
                    </tr>
                    <tr>
                        <td class="border-0">
                            <div class="input-group mb-3">
                                <div class="input-group-prepend">
                                    <span class="btn bg-white head-color border border-right-0 pt-2"><i class="fa fa-map-marker pt-2"></i></span>
                                </div>
                                <asp:TextBox ID="TextBox1" runat="server" PlaceHolder="Adults(18+)"></asp:TextBox>
                            </div>
                        </td>
                    </tr>
                    <tfoot>
                        <b class="text-danger bg-white p-2">ALL FIELDS ARE REQUIRED</b>

                    </tfoot>
                </table>

            </section>
        </div>

    </div>
    <div class="">
        <asp:ListView ID="FlightList" ItemType="Ec1GroupProject.Models.Flight" SelectMethod="GetSearchedItems"
            DataKeyNames="airline_id"
            OnSelectedIndexChanged="List_SelectedIndexChanged" GroupItemCount="3" GroupPlaceholderID="groupPlaceholder1" ItemPlaceholderID="itemPlaceholder1" runat="server">
            <LayoutTemplate>
                <div>
                    <div id="groupPlaceholder1" runat="server">
                    </div>
                </div>
                </table>                 
            </LayoutTemplate>
            <GroupTemplate>
                <div style="clear: both">
                    <div id="itemPlaceholder1" runat="server">
                    </div>
                </div>
            </GroupTemplate>
            <ItemTemplate>
                <asp:Panel runat="server">

                    <div class="pl-5">
                        <div style="float: left" class="pl-3 pr-2 pt-3">
                            <div class="card card-hover" style="width: 25rem; padding: 10px;">
                                <br />
                                <img src="images/<%# Item.Image%>" width="230" height="200" style="border: solid"
                                    class="card-img-top" alt="...">
                                <input type="hidden" name="FlightId" value="<%# Item.airline_id%>" />
                                <input type="hidden" name="FlightId" value="<%# Item.flight_id%>" />
                                <div class="card-body font-weight-bold" style="background-color: #B5C5C4">
                                    <b><%# Item.Arrival %>  </b>
                                </div>
                                <div class="card-body bg-light">
                                    <span><i class="fas fa-plane-departure head-color"></i><%# Item.departdate%></span>
                                    <br />
                                    <br />
                                    <span><i class="fas fa-plane-arrival head-color"></i><%# Item.departdate%></span>
                                </div>

                                <div class="card-body text-white p-3" style="background-color: #B5C5C4">
                                    <span class="font-italic font-weight-bold">JMD $<asp:Label ID="Label2" runat="server" Text="<%# Item.Price%>"></asp:Label>
                                        <br />
                                        Per Adult For <%# Item.Class%>
                                    </span>
                                    <%--<asp:Button runat="server" Text="Book Flight" ID="btnAdd" Cssclass="btn btn-primary reveal" onclick="FlightButton_Click" />--%>
                                    <a class="btn btn-primary reveal" align="center" href="BookFlight.aspx?airline_id=<%# Item.airline_id%> + &flight_id= <%# Item.flight_id%> + &departdate= <%# Item.departdate%> + &Price=+ <%# Item.Price%>+ &Departure=+ <%# Item.Departure%> + &Arrival=+ <%# Item.Arrival%> + &Image=<%#Item.Image%> + &Airline=<%#Item.Airline%> + &Class=<%#Item.Class%>">Book Flight</a>
                                </div>

                            </div>
                        </div>
                    </div>

                </asp:Panel>
            </ItemTemplate>
        </asp:ListView>
        <div style="clear: both;" class="pt-5 text-center">
            <div style="clear: both;" class="pt-5 text-center">
                <asp:GridView ID="Lists" Visible="false" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1">
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
        </div>
    </div>
</asp:Content>
