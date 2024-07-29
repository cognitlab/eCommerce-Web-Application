<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.Master" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="Aromakart.User.WebForm4" %>
<%@ Import Namespace="Aromakart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

        <script>
    /*for disappearing alert box*/
    window.onload = function () {
        var seconds = 5;
        setTimeout(function () {
            document.getElementById("<%=lblMsg.ClientID%>").style.display = "none";
        }, seconds * 1000);
    };
</script>

<script>
    function ImagePreview(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();
            reader.onload = function (e) {
                $('#<%= imgUser.ClientID%>').prop('src', e.target.result)
                    .width(200)
                    .height(200)
            };
            reader.readAsDataURL(input.files[0]);
        }

    }
</script>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br /><br /><br /><br /><br />
    <section class="book_section layout_padding">
        <div class="container">
            <div class="heading_container" >
                <div class="align-self-end">
                    <asp:Label ID="lblMsg" Visible="false" runat="server" />
                </div>
                <div class="bg-success form-control text-center">
                <asp:Label ID="lblHeaderMsg" Text="User Registration" ForeColor="AliceBlue"  Font-Size="X-Large"  runat="server" BorderStyle="None" Font-Overline="False"  />
                    </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-6">
                    <div class="form_container">
                        <div>
                         
                         <asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="txtName" ErrorMessage="Mandatory Field" ForeColor="Red" Display="Dynamic" SetFocusOnError="true">
                         </asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="revName" runat="server" ErrorMessage="Name must be in Characters Only"  ControlToValidate="txtName" ForeColor="Red" Display="Dynamic" SetFocusOnError="true"  ValidationExpression="^[a-zA-Z\s]+$"></asp:RegularExpressionValidator>
                            <asp:TextBox ID="txtName" runat="server" ToolTip="FullName" CssClass="form-control" placeholder="Enter Full Name"></asp:TextBox>
                            </div>
                        <br />
                                                        <div>
                             
                        <asp:RequiredFieldValidator ID="rfvUsername" runat="server" ControlToValidate="txtUsername" ErrorMessage="Mandatory Field" ForeColor="Red" Display="Dynamic" SetFocusOnError="true">
                        </asp:RequiredFieldValidator>
                                                            <asp:TextBox ID="txtUsername" runat="server" ToolTip="Username" CssClass="form-control" placeholder="Enter UserName"></asp:TextBox>
                             </div>

                                                <br />
                                                        <div>
                            
                        <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Mandatory Field" ForeColor="Red" Display="Dynamic" SetFocusOnError="true">
                        </asp:RequiredFieldValidator>
                                                             <asp:TextBox ID="txtEmail" runat="server" ToolTip="Username" CssClass="form-control" placeholder="Enter Email"></asp:TextBox>
                             </div>

                                     <br />
                                                        <div>
                             
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtMobile" ErrorMessage="Mobile Number Required" ForeColor="Red" Display="Dynamic" SetFocusOnError="true">
                        </asp:RequiredFieldValidator>
                          <asp:RegularExpressionValidator ID="revMobile" runat="server" ErrorMessage="Mobile Number must be 10 digits only"  ControlToValidate="txtMobile" ForeColor="Red" Display="Dynamic" SetFocusOnError="true"  ValidationExpression="^[0-9]{10}$"></asp:RegularExpressionValidator>
    <asp:TextBox ID="txtMobile" runat="server" ToolTip="Mobile Number" CssClass="form-control" placeholder="Enter Mobile Number"></asp:TextBox>
                             </div>

                    </div>
                </div>   
                 <div class="col-md-6">
     <div class="form_container">

          <div>
  
  <asp:RequiredFieldValidator ID="rfvAddress" runat="server" ControlToValidate="txtAddress" ErrorMessage="Address is required" ForeColor="Red" Display="Dynamic" SetFocusOnError="true">
  </asp:RequiredFieldValidator>
              <asp:TextBox ID="txtAddress" runat="server" ToolTip="Address" CssClass="form-control" TextMode="MultiLine" placeholder="Enter Address"></asp:TextBox>
     </div>
 <br />
                                 <div>
      
 <asp:RequiredFieldValidator ID="rfvPostCode" runat="server" ControlToValidate="txtPostCode" ErrorMessage="Postcode required" ForeColor="Red" Display="Dynamic" SetFocusOnError="true">
 </asp:RequiredFieldValidator>
  <asp:RegularExpressionValidator ID="revPostCode" runat="server" ErrorMessage="Postcode must be 6 digits only"  ControlToValidate="txtPostCode" ForeColor="Red" Display="Dynamic" SetFocusOnError="true"  ValidationExpression="^[0-9]{6}$"></asp:RegularExpressionValidator>
                                     <asp:TextBox ID="txtPostCode" runat="server" ToolTip="PostCode"  CssClass="form-control" placeholder="Enter Post/Zip Code" TextMode="Number"></asp:TextBox>
      </div>

                         <br />
                                 <div>
                                     <asp:FileUpload ID="fuUserImage" CssClass="form-control" ToolTip="User Image" runat="server" onchange="ImagePreview(this);" />
                                 </div>

              <br />
                                 <div>
     
 <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="txtPassword" ErrorMessage="Password Required" ForeColor="Red" Display="Dynamic" SetFocusOnError="true">
 </asp:RequiredFieldValidator>
     <asp:TextBox ID="txtPassword" runat="server" ToolTip="Password" CssClass="form-control" placeholder="Enter Password" TextMode="Password"></asp:TextBox>
   
      </div>
         </div>
</div>

                <div class="row pl-4">
                    <div class="btn_box">
                        <asp:Button ID="btnRegister" runat="server" Text="Register" CssClass="btn btn-success rounded-pill pl-4 pr-4 text-white" OnClick="btnRegister_Click" />

                        <asp:Label ID="lblAlreadyUser" runat="server" Text="Already Registerd?" CssClass="pl-3 text-black-100"></asp:Label>
                        <a href='Login.aspx' role="link" class="link link-danger fas fa-key">&nbsp Login here...</a>
                    </div>
                </div>

                <div class="row p-5">
                    <div style="align-items:center;">
                        <asp:Image ID="imgUser" runat="server" CssClass="img-thumbnail" />
                    </div>
                </div>

            </div>
        </div>
    </section>
    <br /><br /><br /><br /><br />
</asp:Content>
