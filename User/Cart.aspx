<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="Aromakart.User.WebForm2" EnableEventValidation="true" %>
<%@Import Namespace="Aromakart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <br /><br /><br /><br />

    <section class="book_section layout_padding">
        <div class="container">
            <div class="heading_container">
                <div class="align-self-end">
                    <asp:Label ID="lblMsg" runat="server" Visible="false"></asp:Label>
                </div>
                <h2 align="center">Your Shopping Cart</h2><br /><br /><br />
            </div>
        </div>

        <div class="container">
            <asp:Repeater ID="rCartItem" OnItemCommand="rCartItem_ItemCommand" OnItemDataBound="rCartItem_ItemDataBound" runat="server">
                <HeaderTemplate>
                    <table class="table">
                        <thead>
                            <tr>
                                <th>Name</th>
                                <th>Image</th>
                                <th>Unit Price</th>
                                <th>Quantity</th>
                                <th>Total Price</th>
                                <th></th>
                            </tr>
                        </thead>
                        <tbody>
                </HeaderTemplate>
                <ItemTemplate>
                    <tr>
                        <td>
                            <asp:Label ID="lblName" runat="server" Text='<%# Eval("ProductName") %>'></asp:Label>
                        </td>
                        <td>
                        <img width="60" src="<%# Utils.getImgUrl(Eval("ProductImgUrl")) %>" class="img-thumbnail flex-md-shrink-0" />
                        </td>
                        <td>₹<asp:Label ID="lblPrice" runat="server" Text='<%# Eval("ProductPrice") %>'></asp:Label>
                            <asp:HiddenField ID="hdnProductId" runat="server" Value='<%# Eval("ProductId") %>' />
                            <asp:HiddenField ID="hdnQuantity" runat="server" Value='<%# Eval("Quantity") %>' />
                            <asp:HiddenField ID="hdnPrdQuantity" runat="server" Value='<%# Eval("ProductQuantity") %>' />
                        </td>
                        <td>
                            <div class="product_details__option">
                                <div class="quantity">
                                    <div class="product-quantity">
                                        <asp:TextBox ID="txtQuantity" TextMode="Number" Text='<%# Eval("Quantity") %>' runat="server"></asp:TextBox>
                                        <asp:RegularExpressionValidator ID="revQuantity" Display="Dynamic" SetFocusOnError="true" EnableClientScript="true" runat="server" ErrorMessage="*" ForeColor="Red" Font-Size="Small" ValidationExpression="[1-9]*" ControlToValidate="txtQuantity"></asp:RegularExpressionValidator>
                                    </div>
                                </div>
                            </div>
                        </td>
                        <td>₹<asp:Label ID="lblTotalPrice" runat="server"></asp:Label></td>
                        <td>
                            <asp:LinkButton ID="lbDelete" runat="server" Text="Remove" CommandName="remove" CommandArgument='<%# Eval("ProductId") %>' OnClientClick="return confirm('Do you want to delete this item from cart?');"><i class="fa fa-close">❌</i></asp:LinkButton>
                        </td>
                    </tr>
                </ItemTemplate>
                <FooterTemplate>
                    <tr>
                        <td colspan="3"></td>
                        <td class="pl-lg-5">
                            <b>Grand Total:-</b>
                        </td>
                        <td>₹<%Response.Write(Session["grandTotalPrice"]); %></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td colspan="2" class="continue__btn">
                            <a href="Store.aspx" class="btn btn-info"><i class="fa fa-arrow-circle-left mr-2">&nbsp Continue Shopping</i></a>
                        </td>
                        <td>
                            <asp:LinkButton ID="lbUpdateCart" runat="server" CommandName="updateCart" CssClass="btn btn-warning">
                                <i class="fa fa-redo mr-2">&nbsp Update cart</i></a>
                            </asp:LinkButton>
                        </td>
                        <td>
                            <asp:LinkButton ID="lbCheckout" runat="server" CommandName="checkout" CssClass="btn btn-success">
                             <i class="fa fa-arrow-circle-right mr-2">&nbsp Checkout</i></a>
                            </asp:LinkButton>
                        </td>
                    </tr>
                    </tbody>
                    </table>
                </FooterTemplate>
            </asp:Repeater>
        </div>
    </section>


<br /><br /><br /><br /><br /><br /><br />
</asp:Content>
