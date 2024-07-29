<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Category.aspx.cs" Inherits="Aromakart.Admin.WebForm2" %>
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
                    $('#<%=ImagePreview.ClientID%>').prop('src', e.target.result)
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
                    <h4 class="card-title">Category</h4>
                    <hr />

                    <div class="form-body">

                        <label>Category Name</label>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <asp:TextBox ID="txtCategoryName" runat="server" CssClass="form-control" placeholder="Entry Category Name"> </asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvCategoryname" runat="server" ForeColor="Red" Font-Size="Small" Display="Dynamic" SetFocusOnError="true" ControlToValidate="txtCategoryName" ErrorMessage="Category Name required"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                        </div>

                        <label>Category Image</label>
                     <div class="row">
                            <div class="col-md-12">
                                 <div class="form-group">
                                       <asp:FileUpload ID="fuCategoryImage" runat="server" CssClass="form-control" onchange="ImagePreview(this);" />
                                        <asp:HiddenField ID="hfCategoryId" runat="server" Value="0"/>
                                   </div>
                             </div>
                        </div>

                        <div class="row">
                            <div class="col-md-12">
                             <div class="form-group">
                                        <asp:CheckBox ID="cbIsActive" runat="server" Text="&nbsp; IsActive"/>
                               </div>
                               </div>
                        </div>

                    </div>

                    <div class="form-action pb-5">
                        <div class="text-left">
                            <asp:Button ID="btnAddOrUpdate" runat="server" CssClass="btn btn-info" Text="Add" OnClick="btnAddOrUpdate_Click" />
                            <asp:Button ID="btnClear" runat="server" CssClass="btn btn-dark" Text="Reset" OnClick="btnClear_Click"/>
                        </div>
                    </div>

                    <div>
                        <asp:Image ID="ImagePreview" runat="server" CssClass="img-thumbnail" AlternateText=""/>
                    </div>

                </div>
            </div>
        </div>

        <%--CATEGORY LIST--%>
         <div class="col-sm-12 col-md-8">
     <div class="card">
         <div class="card-body">
             <h4 class="card-title">Category List</h4>
             <hr />
             <div class="table-responsive">
                 <asp:Repeater ID="rCategory" runat="server" OnItemCommand="rCategory_ItemCommand">
                     <HeaderTemplate>
                         <table class="table data-table-export table-hover">
                             <thead>
                                 <tr>
                                     <th class="table-plus">Name</th>
                                     <th>Image </th>
                                     <th>IsActive</th>
                                     <th>CreatedDate</th>
                                     <th class="datatable-nosort">Action</th>
                                 </tr>
                             </thead>
                             <tbody>
                     </HeaderTemplate>
                     <ItemTemplate>
                         <tr>
                             <td class="table-plus"> <%# Eval("CategoryName")  %></td>
                             <td> 
                                 <img width="50" height="50" class="img-thumbnail" src="<%# Aromakart.Utils.getImgUrl( Eval("CategoryImgUrl")) %>" alt="image"/>
                             </td>
                             <td>
                                 <asp:Label ID="lblIsActive" runat="server" Text='<%# (bool)Eval("IsActive") == true ? "Active" : "In-Active" %>' CssClass='<%# (bool)Eval("IsActive") == true ? "badge badge-success" : "badge badge-danger" %>'></asp:Label>
                             </td>
                             <td><%# Eval("CreatedDate")  %></td>
                             <td>
                                 <asp:LinkButton ID="lbEdit" runat="server" Text="Edit" CssClass="badge badge-primary" CommandArgument='<%# Eval("CategoryId") %>' CommandName="Edit" CausesValidation="false">
                                     <i class="fas fa-edit"></i>
                                 </asp:LinkButton>
                                 <asp:LinkButton ID="lbDelete" runat="server" Text="Delete" CssClass="badge badge-danger" CausesValidation="false" CommandArgument='<%# Eval("CategoryId") %>' CommandName="Delete">
                                     <i class="fas fa-trash-alt"></i>
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
