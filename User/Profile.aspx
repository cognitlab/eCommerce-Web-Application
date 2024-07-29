<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="Aromakart.User.Profile" %>

<%@ Import Namespace="Aromakart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <br />
    <br />
    <br />
    <br />
    <br />
    <br />



    <section class="book_section layout_padding">
        <div class="container">
            <div class="heading_container">
                <div class="align-self-end">
                    <h2>User Information</h2>
                </div>

                <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                                <div class="card-title mb-4">
                                    <div class="d-flex justify-content-start">
                                        <div>
                                            <%--<img src="<%# Utils.getImgUrl( Eval("ImgUrl"))%>"  class="img-thumbnail" style="height: 200px; width: 200px;" />--%>
                                        </div>




                                        <div class="userData ml-3">
                                            <h3>
                                                <a href="javascript:void(0);">
                                                    <asp:Label runat="server" ToolTip="Name" Font-Bold="true" ForeColor="OrangeRed">
                                        <%Response.Write(Session["name"]); %>
                                                    </asp:Label>
                                                </a>
                                            </h3>
                                            <h6 class="d-block">
                                                <a href="javascript:void(0)">
                                                    <asp:Label ID="lblUserName" ToolTip="Unique Username" runat="server" ForeColor="OrangeRed">
                                                   @<%Response.Write(Session["username"]); %>
                                                    </asp:Label>
                                                </a>
                                            </h6>
                                            <h6 class="d-block">
                                                <a href="javascript:void(0)">
                                                    <asp:Label ID="lblEmail" ToolTip="User Email" runat="server" ForeColor="OrangeRed">
                                            <%Response.Write(Session["email"]); %>
                                                    </asp:Label>
                                                </a>
                                            </h6>
                                            <h6 class="d-block">
                                                <a href="javascript:void(0)">
                                                    <asp:Label ID="lblCreatedDate" ToolTip="Account Created On" runat="server" ForeColor="OrangeRed">
                                                  <%Response.Write(Session["createdDate"]); %>
                                                    </asp:Label>
                                                </a>
                                            </h6>

                                        </div>

                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-12">
                                        <ul class="nav nav-tabs mb-4" id="myTab" role="tablist">
                                            <li class="nav-item">
                                                <a class="nav-link active text-info" id="basicInfo-tab" data-bs-toggle="pill" href="#basicInfo" role="tablist" aria-controls="basicInfo" aria-selected="true">Basic Info</a>
                                            </li>
                                           <%-- <li class="nav-item">
                                                <a class="nav-link text-info" id="connectedServices-tab" data-bs-toggle="pill" href="#connectedServices" role="tablist" aria-controls="connectedServices" aria-selected="false"><i class="fa fa-clock mr-2"></i>Purchase History</a>
                                            </li>--%>
                                        </ul>

                                        <div class="tab-content ml-1" id="myTabContent">
                                            <%--Basic User Info--%>
                                            <div class="tab-pane fade show active" id="basicInfo" role="tabpanel" aria-labelledby="basicinfo-tab">
                                                <asp:Repeater ID="rUserProfile" runat="server">
                                                    <ItemTemplate>
                                                        <div class="row">
                                                            <div class="col-sm-3 col-md-2 col-5">
                                                                <label style="font-weight: bold;">Full Name</label>
                                                            </div>
                                                            <div class="col-md-8 col-6">
                                                                <%# Eval("Name") %>
                                                            </div>
                                                        </div>
                                                        <hr />

                                                        <div class="row">
                                                            <div class="col-sm-3 col-md-2 col-5">
                                                                <label style="font-weight: bold;">UserName</label>
                                                            </div>
                                                            <div class="col-md-8 col-6">
                                                                <%# Eval("Uname") %>
                                                            </div>
                                                        </div>
                                                        <hr />

                                                        <div class="row">
                                                            <div class="col-sm-3 col-md-2 col-5">
                                                                <label style="font-weight: bold;">Mobile No.</label>
                                                            </div>
                                                            <div class="col-md-8 col-6">
                                                                <%# Eval("Umobile") %>
                                                            </div>
                                                        </div>

                                                        <hr />
                                                        <div class="row">
                                                            <div class="col-sm-3 col-md-2 col-5">
                                                                <label style="font-weight: bold;">Email Addr.</label>
                                                            </div>
                                                            <div class="col-md-8 col-6">
                                                                <%# Eval("Uemail") %>
                                                            </div>
                                                        </div>
                                                        <hr />

                                                        <div class="row">
                                                            <div class="col-sm-3 col-md-2 col-5">
                                                                <label style="font-weight: bold;">PostCode</label>
                                                            </div>
                                                            <div class="col-md-8 col-6">
                                                                <%# Eval("PostCode") %>
                                                            </div>
                                                        </div>
                                                        <hr />
                                                        <div class="row">
                                                            <div class="col-sm-3 col-md-2 col-5">
                                                                <label style="font-weight: bold;">Address</label>
                                                            </div>
                                                            <div class="col-md-8 col-6">
                                                                <%# Eval("Address") %>
                                                            </div>
                                                        </div>
                                                        <hr />
                                                        <div class="middle pt-2">

                                                            <a href="Signup.aspx?id=<%Response.Write(Session["userId"]);%>" class="btn btn-warning">
                                                                <i class="fa fa-pencil"></i>Edit Details
                                                            </a>
                                                        </div>
                                                    </ItemTemplate>
                                                </asp:Repeater>
                                            </div>

                                            <%--Basic User Info Ends--%>

                                            <%--Order History Starts--%>

                                            <div class="tab-pane fade" id="connectedServices" role="tab" aria-labelledby="ConnectedServices-tab">
                                                <%-- <h2>Order History</h2>--%>

                                                <asp:Repeater runat="server" ID="rPurchaseHistory" OnItemDataBound="rPurchaseHistory_ItemDataBound">
                                                    <ItemTemplate>
                                                        <div class="container">
                                                            <div class="row pt-1 pb-1" style="background-color: lightgray">
                                                                <div class="col-4">
                                                                    <span class="badge badge-pill badge-dark text-white">
                                                                        <%# Eval("SrNo") %>
                                                                    </span>
                                                                    PaymentMode: <%# Eval("PaymentMode").ToString() == "cod" ? "Cash On Delivery" : Eval("PaymentMode").ToString().ToUpper() %>
                                                                </div>
                                                                <div class="col-6">
                                                                    <%# string.IsNullOrEmpty(Eval("CardNo").ToString()) ? "":"Card No:" +Eval("CardNo") %>
                                                                </div>
                                                                <div class="col-2">
                                                                    <a href="#"><i class="fa fa-download mr-2">Invoice</i></a>
                                                                </div>
                                                            </div>
                                                            <asp:HiddenField ID="hdnPaymentId" Value='<%# Eval("PaymentId") %>' runat="server" />


                                                            <asp:Repeater ID="rOrders" runat="server">
                                                                <HeaderTemplate>
                                                                    <table class="table">
                                                                        <thead>
                                                                            <tr>
                                                                                <th>Product Name</th>
                                                                                <th>Unit Price</th>
                                                                                <th>Qty</th>
                                                                                <th>Total Price</th>
                                                                                <th>Order Id</th>
                                                                                <th>Status</th>
                                                                            </tr>
                                                                        </thead>
                                                                        <tbody>
                                                                </HeaderTemplate>
                                                                <ItemTemplate>
                                                                    <tr>
                                                                        <td>
                                                                            <asp:Label ID="lblName" Text='<%# Eval("ProductName") %>' runat="server" />
                                                                        </td>
                                                                        <td>
                                                                            <asp:Label ID="Label1" Text='<%#  string.IsNullOrEmpty(Eval("ProductPrice").ToString()) ? "" : "₹" +Eval("ProductPrice")%>' runat="server" />
                                                                        </td>
                                                                        <td>
                                                                            <asp:Label ID="Label2" Text='<%# Eval("Quantity") %>' runat="server" />
                                                                        </td>
                                                                        <td>
                                                                            <asp:Label ID="Label3" Text='<%# Eval("TotalPrice") %>' runat="server" />
                                                                        </td>
                                                                        <td>
                                                                            <asp:Label ID="Label4" Text='<%# Eval("OrderNo") %>' runat="server" />
                                                                        </td>
                                                                        <td>
                                                                            <asp:Label ID="Label5" Text='<%# Eval("Status") %>' runat="server" />
                                                                        </td>
                                                                    </tr>
                                                                </ItemTemplate>
                                                                <FooterTemplate>
                                                                    </tbody>
                                                </table>
                                                                </FooterTemplate>
                                                            </asp:Repeater>

                                                        </div>
                                                    </ItemTemplate>
                                                </asp:Repeater>
                                            </div>
                                        </div>

                                        <%--Order History End--%>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </section>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>
