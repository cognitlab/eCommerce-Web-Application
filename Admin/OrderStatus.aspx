<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="OrderStatus.aspx.cs" Inherits="Aromakart.Admin.OrderStatus" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AromaDB(cs) %>" ProviderName="<%$ ConnectionStrings:AromaDB(cs).ProviderName %>" SelectCommand="SELECT * FROM [OrdersTbl]"></asp:SqlDataSource>
  
             
                 <div class=" table table-responsive table-borderless table-hover">
            <div class="card">
    <asp:GridView ID="GridView1" runat="server" Width="500px" BorderWidth="0px" BorderColor="#999999" Font-Bold="False" Font-Size="Medium" BackColor="White" BorderStyle="None" CellPadding="9" GridLines="Horizontal" AutoGenerateColumns="False" DataKeyNames="OrderDetailsId" DataSourceID="SqlDataSource1" AllowPaging="True" AllowCustomPaging="False" PageSize="3">
        <AlternatingRowStyle BackColor="#DCDCDC" />
        <Columns>
            <asp:BoundField DataField="OrderDetailsId" HeaderText="OrderDetailsId" InsertVisible="False" ReadOnly="True" SortExpression="OrderDetailsId" />
            <asp:BoundField DataField="OrderNo" HeaderText="OrderNo" SortExpression="OrderNo" />
            <asp:BoundField DataField="ProductId" HeaderText="ProductId" SortExpression="ProductId" />
            <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
            <asp:BoundField DataField="Uid" HeaderText="Uid" SortExpression="Uid" />
            <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
            <asp:BoundField DataField="PaymentId" HeaderText="PaymentId" SortExpression="PaymentId" />
            <asp:BoundField DataField="OrderDate" HeaderText="OrderDate" SortExpression="OrderDate" />
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

</asp:Content>
