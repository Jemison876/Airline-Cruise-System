<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Ec1GroupProject.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <table cellpadding="0" cellspacing="10" width="750" align="center" border="0">


        <tr align="center">


            <td>
                <div class="card card-signin my-5">
                    <div class="card-body">
                        <h3 class="card-title text-center">Login</h3>
                        <form class="form-signin">
                            <div class="form-label-group">
                                <asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="Username"></asp:TextBox>

                            </div>
                            <br />
                            <div class="form-label-group">
                                <asp:TextBox ID="TextBox2" runat="server" class="form-control" placeholder="Password"></asp:TextBox>

                            </div>
                            <br />
                            <div class="custom-control custom-checkbox mb-3">
                                <input type="checkbox" class="custom-control-input" id="customCheck1">
                                <label class="custom-control-label" for="customCheck1">Remember password</label>
                            </div>

                            <div style="text-align: center">
                                <a href="Register.aspx">Register</a>
                            </div>
                            <br />
                            <asp:Button ID="Button1" runat="server" Text="Login" class="btn btn-lg btn-primary btn-block text-uppercase" OnClick="Button1_Click1" />
                            <hr class="my-4">
                            <asp:Label ID="Label1" runat="server"></asp:Label>
                        </form>
                    </div>
                </div>
            </td>


        </tr>


    </table>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>
