<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Users.aspx.cs" Inherits="Aromakart.Admin.WebForm4" %>
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
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="mb-4">
    <asp:Label ID="lblMsg" runat="server"></asp:Label>
</div>

    
    <div class="col-sm-12">
        <div class="card">
            <div class="card-header"></div>
            <div class="card-block">
       <div class="row">
      

       <%--CATEGORY LIST--%>
        <div class="col-12 mobile-inputs">
    <div class="card">
        <div class="card-body">
            <h4 class="card-title" align="center">Users List</h4>
            <hr />
            <div class="card-block table-border-style">
            <div class="table-responsive">
                <asp:Repeater ID="rUsers" runat="server" OnItemCommand="rUsers_ItemCommand">
                    <HeaderTemplate>
                        <table class="table data-table-export table-hover">
                            <thead>
                                <tr>
                                    <th class="table-plus">SrNo</th>
                                    
                                    <th>Username</th>
                                    <th>Email</th>
                                    <th>JoinDate</th>
                                    <th class="datatable-nosort">Delete</th>
                                </tr>
                            </thead>
                            <tbody>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <tr>
                            <td class="table-plus"> <%# Eval("Uid")  %></td>
                            <td><%# Eval("Uname")  %></td>
                            <td><%# Eval("Uemail")  %></td>
                            <td><%# Eval("JoinDate")  %></td>
                            <td>
                                <asp:LinkButton ID="lbDelete" runat="server" Text="Delete" CssClass="badge badge-danger" CausesValidation="false" CommandArgument='<%# Eval("Uid") %>' CommandName="Delete" OnClientClick="return confirm('Do you want to delete this user?');">
     <i class="ti-trash"></i>
</asp:LinkButton>
                            </td>
                        </tr>
                    </ItemTemplate>
                    <FooterTemplate>
                            </tbody>
                           </table>
                    </FooterTemplate>
                </asp:Repeater>
            </div>
        </div>
    </div>
</div>
</div>
   </div>
</div>
        </div>
    </div>
</asp:Content>
