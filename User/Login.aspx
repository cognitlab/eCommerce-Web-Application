<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Aromakart.User.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Manufacturer, Exporter and Wholesaler of Essential Oils, Carrier Oils, Fragrance Oils and more</title>

    <!-- Favicon -->
        <link href="https://www.aromakart.com/uploads/9e39bc14a8fdf4d657f7582cfdef773f.png" rel="icon"/>

    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

    <!-- Libraries Stylesheet -->
        <link href="../UserTemplate/lib/animate/animate.min.css" rel="stylesheet" />
        <link href="../UserTemplate/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet" />

<!-- Customized Bootstrap Stylesheet -->
        <link href="../UserTemplate/css/bootstrap.min.css" rel="stylesheet" />

<!-- Template Stylesheet -->
        <link href="../UserTemplate/css/style.css" rel="stylesheet" />


    <style type="text/css">

         table {
     font-family:'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
     border:solid 2px red;
     text-align:justify-all;
     
     font-size:20px;
     color:darkblue;
     box-shadow:black 3px 3px 3px 3px;
     
    
 }


        .auto-style1 {
            width: 803px;
            height: 177px;
        }
        .auto-style3 {
            width: 146px;
            height: 66px;
        }
        .auto-style6 {
            margin-left: 59px;
        }
        .auto-style9 {
            width: 361px;
            height: 48px;
        }
        .auto-style13 {
            width: 319px;
            height: 48px;
        }
        .auto-style14 {
            width: 319px;
            height: 64px;
        }
        .auto-style15 {
            width: 361px;
            height: 64px;
        }
    </style>
</head>
<body>
    
            <!-- Spinner Start -->
<div id="spinner" class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
    <div class="spinner-border text-primary" role="status" style="width: 3rem; height: 3rem;"></div>
</div>
    <!-- Spinner End -->
    
      


    <a href="Default.aspx" role="link" class="btn btn-outline-dark"><u><b>Back to Home</b></u></a>
          <h1 align="center" style="font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif; color: deeppink;">Login to your aromaworld!!</h1>

  <form id="form2" runat="server">
      <br /><br /><br /><br />
                  <div class="text-center">
    <img src="../AdminTemplate/img/icons8-client-management.gif" alt="wrapkit" height="50"/>
</div><br /><br /><br /><br /> 
            <div class="align-self-end">
    <asp:Label ID="lblMsg" Visible="false" runat="server" />
</div>
          <table align="center" class="auto-style1">
              <tr>
                  <td class="auto-style14" style="text-align: right">UserName :</td>
                  <td class="auto-style15">
                      <asp:TextBox ID="txtUsername" runat="server" Width="178px" Height="20px"></asp:TextBox>
                      &nbsp;
                      <asp:RequiredFieldValidator ID="rfvUsername" runat="server" ControlToValidate="txtUsername" ErrorMessage="Mandatory Field" ForeColor="Red" Display="Dynamic" EnableTheming="True" Font-Bold="False" Font-Italic="False"></asp:RequiredFieldValidator>
                  </td>
              </tr>
              <tr>
                  <td class="auto-style13" style="text-align: right"> Password :</td>
                  <td class="auto-style9">
                      <asp:TextBox ID="txtPassword" runat="server" Width="178px" TextMode="Password" Height="20px" ></asp:TextBox>
                      &nbsp;
                      <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="txtPassword" ErrorMessage="Mandatory Field" ForeColor="Red" Display="Dynamic" EnableTheming="True" Font-Bold="False" Font-Italic="False"></asp:RequiredFieldValidator>
                  </td>
              </tr>
              <tr>
                  <td class="auto-style3" colspan="2" style="text-align:center">
                      <asp:Button ID="Button1" runat="server" Text="LOGIN" Font-Size="12" ForeColor="DarkBlue" OnClick="Button1_Click" CssClass="auto-style6" Height="25px" Width="78px"/>   &nbsp;<a href="Signup.aspx">Not Registered?</a>
                  </td>
              </tr>
          </table>
      <br /><br />
      <asp:Label ID="Label1" runat="server" Text="Login Successful!! ✔"  Visible="False" ForeColor="#00CC00"></asp:Label>
      <asp:Label ID="Label2" runat="server" Text="Login Failed ❌"  Visible="False" ForeColor="Red"></asp:Label>
      <br /><br /><br /><br /><br />  


    </form>
    <!-- JavaScript Libraries -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
<script src="../UserTemplate/lib/wow/wow.min.js"></script>
<script src="../UserTemplate/lib/easing/easing.min.js"></script>
<script src="../UserTemplate/lib/waypoints/waypoints.min.js"></script>
<script src="../UserTemplate/lib/owlcarousel/owl.carousel.min.js"></script>

<!-- Template Javascript -->
<script src="../UserTemplate/js/main.js"></script>
</body>
</html>
