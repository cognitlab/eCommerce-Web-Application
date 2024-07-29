<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.Master" AutoEventWireup="true" CodeBehind="Store.aspx.cs" Inherits="Aromakart.User.Allitem" %>

<%@ Import Namespace="Aromakart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style>
</style>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <br /><br /><br /><br /><br />

    <%--ITEM SECTION--%>
    <section class="item_section layout_padding">
        <div class="conainer">
            <div class="heading_conatainer heading_section">
                <div class="align-self-end">
                    <asp:Label ID="lblMsg" runat="server" Visible="false"></asp:Label>
                </div>
                <h2 align="center">= Our Items =</h2><br /><br /><br />
            </div>
          
<%--            <ul class="filters_menu">
                
                <asp:Repeater ID="rCategory" runat="server">
                    <ItemTemplate>
                        <li data-filter=".<%# Regex.Replace(Eval("CategoryName").ToString().ToLower(),@"\s+","")%>" data-id="<%# Eval("CategoryId") %>" class="btn btn-outline-danger"><%# Eval("CategoryName") %></li>
                    </ItemTemplate>
                </asp:Repeater>
            </ul>--%>

            <div class="filters_content ">
                <div class="row grid">
                    <asp:Repeater ID="rProducts" runat="server" OnItemCommand="rProducts_ItemCommand">
                        <ItemTemplate>
                            <div class="col-lg-4 col-md-6 wow fadeInUp"  data-wow-delay="0.1s" >
                                <div class="store-item position-relative text-center ">
                                    <img class="img-fluid rounded-2 " src="<%# Utils.getImgUrl(Eval("ProductImgUrl"))%>" alt="" style="height: 200px; width: 200px;">
                                    <div class="p-4">
                                        <div class="text-center mb-3">
                                            <small class="fa fa-star text-success"></small>
                                            <small class="fa fa-star text-success"></small>
                                            <small class="fa fa-star text-success"></small>
                                            <small class="fa fa-star text-success"></small>
                                            <small class="fa fa-star text-success"></small>
                                        </div>
                                        <h4 class="mb-3"><%# Eval("ProductName") %></h4>
                                        <p class="text-truncate"><%# Eval("ProductDesc") %></p>
                                        <h4 class="text-success">₹<%# Eval("ProductPrice") %></h4>
                                    </div>
                                    <div class="store-overlay">
                                       <%-- <a href="#" class="btn btn-success rounded-pill py-2 px-4 m-2">More Detail <i class="fa fa-arrow-right ms-2"></i></a>--%>
                                        <asp:LinkButton runat="server" ID="lbAddToCart" CommandName="addToCart" CommandArgument='<%# Eval("ProductId") %>' >
                                        <b class="btn btn-dark rounded-pill py-2 px-4 m-2">Add to Cart <i class="fa fa-cart-plus ms-2"></i></b>
                                        </asp:LinkButton>
                                    </div>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
            </div>





        </div>
    </section>
  <br /><br /><br /><br /><br />
</asp:Content>
