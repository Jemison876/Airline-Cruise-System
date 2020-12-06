<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Ec1GroupProject.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style> 
   
        </style>
    
  <table cellpadding="0" cellspacing="10" width="750" align="center" border="0">


 <tr align="center">


 <td>
        <div class="card card-signin my-5">
          <div class="card-body" >
            <h3 class="card-title text-center">Register</h3>
           
              <div class="form-label-group">
                  <asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="Username"  ></asp:TextBox>
          
              </div>
              <br />
              <div class="form-label-group">
                  <asp:TextBox ID="TextBox2" runat="server" class="form-control" placeholder="Password" ></asp:TextBox>
            
              </div>
              <br />
     
                <asp:Button ID="Button1" runat="server" Text="Register" class="btn btn-lg btn-primary btn-block text-uppercase" OnClick="Button1_Click1"  />
              <hr class="my-4">
                <asp:Label ID="Label1" runat="server"></asp:Label>
            
          </div>
        </div>
   </td>


 </tr>


 </table> 
    <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
    
</asp:Content>
