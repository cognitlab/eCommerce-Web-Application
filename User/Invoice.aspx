<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.Master" AutoEventWireup="true" CodeBehind="Invoice.aspx.cs" Inherits="Aromakart.User.WebForm6" %>

<%@ Import Namespace="Aromakart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">


<%--    <script>
        /*for disappearing alert box*/
        window.onload = function () {
            var seconds = 5;
            setTimeout(function () {
                document.getElementById("<%=lblMsg.ClientID%>").style.display = "none";
            }, seconds * 1000);
        };
    </script>--%>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h2 class="font-tofino-medium bg-danger">INVOICE........</h2>

    <section class="book_section layout_padding">
        <div class="container">
            <div class="heading_container">
                <div class="align-self-end">
                    <asp:Label ID="lblMsg" Visible="false" runat="server" />
                </div>
            </div>
        </div>

        <div class="container">
            <div class="table table-responsive">
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AromaDB(cs) %>" SelectCommand="Invoice" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:Parameter Name="Action" Type="String" />
                    <asp:Parameter Name="PaymentId" Type="Int32" />
                    <asp:Parameter Name="UserId" Type="Int32" />
                    <asp:Parameter Name="OrderDetailsId" Type="Int32" />
                    <asp:Parameter Name="Status" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
              <div class=" table table-responsive table-bordered">
         <div class="card">
 <asp:GridView ID="GridView1" runat="server" Width="500px" BorderWidth="0px" BorderColor="#999999" Font-Bold="False" Font-Size="Medium" BackColor="White" BorderStyle="None" CellPadding="9" GridLines="Horizontal" AutoGenerateColumns="False" DataKeyNames="OrderDetailsId" DataSourceID="SqlDataSource1" AllowPaging="True" PageSize="8">
     <AlternatingRowStyle BackColor="#DCDCDC" />
     <Columns>
         <asp:BoundField DataField="OrderDetailsId" HeaderText="OrderDetailsId" InsertVisible="False" ReadOnly="True" SortExpression="OrderDetailsId" />
         <asp:BoundField DataField="OrderNo" HeaderText="OrderNo" SortExpression="OrderNo" />
         <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductId" />
         <asp:BoundField DataField="ProductPrice" HeaderText="Unit Price" SortExpression="Quantity" />
         <asp:BoundField DataField="TotalPrice" HeaderText="TotalPrice" SortExpression="Uid" />
     </Columns>
     
     <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
     <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
     <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
     <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
     <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
     <SortedAscendingCellStyle BackColor="#F1F1F1" />
     <SortedAscendingHeaderStyle BackColor="#0000A9" />
     <SortedDescendingCellStyle BackColor="#CAC9C9" />
     <SortedDescendingHeaderStyle BackColor="#000065" />
     </asp:GridView>
 </div>
            </div>
         </div> 
            <div class="text-center">
                <asp:LinkButton ID="lbDownloadInvoice" runat="server" OnClick="lbDownloadInvoice_Click" CssClass="btn btn-info">
                  <i class="fa fa-file-pdf-o mr-2"></i>Download Invoice
                </asp:LinkButton>
            </div>
        </div>


    </section>

</asp:Content>
