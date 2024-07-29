<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="AddProduct.aspx.cs" Inherits="Aromakart.Admin.WebForm3" EnableEventValidation="false" %>

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
                    $('#<%= imgProduct.ClientID%>').prop('src', e.target.result)
                        .width(200)
                        .height(200)
                };
                reader.readAsDataURL(input.files[0]);
            }

        }
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="mb-4">
        <asp:Label ID="lblMsg" runat="server"></asp:Label>
    </div>


    <div class="row">
        <div class="col-sm-12 col-md-4">
            <div class="card">
                <div class="card-body">
                    <h4 class="card-title">Product</h4>
                    <hr />

                    <div class="form-body">

                        <label>Product Name</label>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <asp:TextBox ID="txtName" runat="server" CssClass="form-control" placeholder="Enter Product Name"> </asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvProductname" runat="server" ForeColor="Red" Font-Size="Small" Display="Dynamic" SetFocusOnError="true" ControlToValidate="txtName" ErrorMessage="Product Name required"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                        </div>

                        <label>Product Description</label>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <asp:TextBox ID="txtDesc" runat="server" CssClass="form-control" placeholder="Enter Product Description" TextMode="MultiLine"> </asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvProductdesc" runat="server" ForeColor="Red" Font-Size="Small" Display="Dynamic" SetFocusOnError="true" ControlToValidate="txtDesc" ErrorMessage="Product Name required"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                        </div>

                        <label>Product Price(₹)</label>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <asp:TextBox ID="txtPrice" runat="server" CssClass="form-control" placeholder="Enter Product Price"> </asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ForeColor="Red" Font-Size="Small" Display="Dynamic" SetFocusOnError="true" ControlToValidate="txtPrice" ErrorMessage="Price required"></asp:RequiredFieldValidator>
                                    <%--<asp:RegularExpressionValidator ID="revProductPrice" runat="server" ErrorMessage="Price must be in decimal"  ForeColor="Red" Font-Size="Small" Display="Dynamic" SetFocusOnError="true" ControlToValidate="txtPrice" ValidationExpression="^\{0,8}(\.\d{1,4})?$"></asp:RegularExpressionValidator>  --%>
                                </div>
                            </div>
                        </div>
                        <label>Product Quantity</label>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <asp:TextBox ID="txtQuantity" runat="server" CssClass="form-control" placeholder="Enter Quantity"> </asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ForeColor="Red" Font-Size="Small" Display="Dynamic" SetFocusOnError="true" ControlToValidate="txtQuantity" ErrorMessage="Quantity required"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Quantity must be non-negative" ForeColor="Red" Font-Size="Small" Display="Dynamic" SetFocusOnError="true" ControlToValidate="txtQuantity" ValidationExpression="^([1-9]\d*|0)$"></asp:RegularExpressionValidator>
                                </div>
                            </div>
                        </div>


                        <label>Product Image</label>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <asp:FileUpload ID="fuProductImg" runat="server" CssClass="form-control" onchange="ImagePreview(this);" />
                                    <asp:HiddenField ID="hdnId" runat="server" Value="0" />
                                </div>
                            </div>
                        </div>

                        <label>Product Category</label>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <asp:DropDownList ID="ddlCategories" CssClass="form-control" runat="server"  DataTextField="CategoryName" DataValueField="CategoryId" AppendDataBoundItems="true">
                                        <asp:ListItem Value="0">Select Category</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="rfvddl1" runat="server" ForeColor="Red" Font-Size="Small" Display="Dynamic" SetFocusOnError="true" ControlToValidate="ddlCategories" ErrorMessage="Category required" InitialValue="0"></asp:RequiredFieldValidator>
                                   
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <asp:CheckBox ID="cbIsActive" runat="server" Text="&nbsp; IsActive" />
                                </div>
                            </div>
                        </div>

                    </div>

                    <div class="form-action pb-5">
                        <div class="text-left">
                            <asp:Button ID="btnAddOrUpdate" runat="server" CssClass="btn btn-info" Text="Add" OnClick="btnAddOrUpdate_Click" />
                            <asp:Button ID="btnClear" runat="server" CssClass="btn btn-dark" Text="Reset" OnClick="btnClear_Click" />
                        </div>
                    </div>

                    <div>
                        <asp:Image ID="imgProduct" runat="server" CssClass="img-thumbnail" AlternateText="" />
                    </div>

                </div>
            </div>
        </div>

        <%--CATEGORY LIST--%>
        <div class="col-sm-12 col-md-8">
            <div class="card">
                <div class="card-body">
                    <h4 class="card-title">Product List</h4>
                    <hr />
                    <div class="table-responsive">
                        <asp:Repeater ID="rProduct" runat="server" OnItemCommand="rProduct_ItemCommand" OnItemDataBound="rProduct_ItemDataBound">
                            <HeaderTemplate>
                                <table class="table data-table-export table-hover">
                                    <thead>
                                        <tr>
                                            <th class="table-plus">Name</th>
                                            <th>Image </th>
                                            <th>Price(₹) </th>
                                            <th>Qty </th>
                                            <th>Category </th>
                                            <th>IsActive</th>
                                            <th>Description</th>
                                            <th>CreatedDate</th>
                                            <th class="datatable-nosort">Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <tr>
                                    <td class="table-plus"><%# Eval("ProductName")  %></td>

                                    <td>
                                        <img width="50" height="50" class="img-thumbnail" src="<%# Aromakart.Utils.getImgUrl( Eval("ProductImgUrl")) %>" alt="image" />

                                    </td>
                                    <td><%# Eval("ProductPrice")  %></td>


                                    <td>
                                        <asp:Label ID="lblQuantity" runat="server" Text='<%# Eval("ProductQuantity")  %>'></asp:Label>
                                    </td>

                                    <td><%# Eval("CategoryName")  %></td>

                                    <td>
                                        <asp:Label ID="lblIsActive" runat="server" Text='<%# (bool)Eval("IsActive") == true ? "Active" : "In-Active" %>' CssClass='<%# (bool)Eval("IsActive") == true ? "badge badge-success" : "badge badge-danger" %>'></asp:Label>
                                    </td>

                                    <td><%# Eval("ProductDesc")  %></td>

                                    <td><%# Eval("CreatedDate")  %></td>

                                    <td>
                                        <asp:LinkButton ID="lbEdit" runat="server" Text="Edit" CssClass="badge badge-primary" CommandArgument='<%# Eval("ProductId") %>' CommandName="Edit" CausesValidation="false">
                                    <i class="ti-pencil"></i>
                                        </asp:LinkButton>

                                        <asp:LinkButton ID="lbDelete" runat="server" Text="Delete" CssClass="badge badge-danger" CausesValidation="false" CommandArgument='<%# Eval("ProductId") %>' CommandName="Delete" OnClientClick="return confirm('Do you want to delete this product?');">
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

</asp:Content>
