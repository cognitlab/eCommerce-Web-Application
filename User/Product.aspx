<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.Master" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="Aromakart.User.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



    <!-- Products Start -->
    <div class="container-fluid product py-5">
        <div class="container py-5">
            <div class="section-title text-center mx-auto wow fadeInUp" data-wow-delay="0.1s" style="max-width: 500px;">
                <p class="fs-5 fw-medium fst-italic text-success">Our Products</p>
                <h1 class="display-6">Fragrance has a complex positive effect on the body</h1>
            </div>
            <div class="owl-carousel product-carousel wow fadeInUp" data-wow-delay="0.5s">
                <a href="" class="d-block product-item rounded">
                    <img src="../Images/Product/a48ab5be-4777-4ae6-bd3f-73ab88f6e8b0.jpg"" alt="">
                    <div class="bg-white shadow-sm text-center p-4 position-relative mt-n5 mx-4">
                        <h4 class="text-success">Incense Sticks</h4>
                        <span class="text-body">Diam dolor diam ipsum sit diam amet diam et eos. Clita erat ipsum</span>
                    </div>
                </a>
                <a href="" class="d-block product-item rounded">
                    <img src="../Images/Product/System.Web.UI.WebControls.FileUpload.png" " alt="">
                    <div class="bg-white shadow-sm text-center p-4 position-relative mt-n5 mx-4">
                        <h4 class="text-success">Carrier Oils</h4>
                        <span class="text-body">Diam dolor diam ipsum sit diam amet diam et eos. Clita erat ipsum</span>
                    </div>
                    
                </a>
                <a href="" class="d-block product-item rounded">
                    <img src="../Images/Product/ed8941ab-d580-4757-af33-6db6bc4ffa43.png" alt="">
                    <div class="bg-white shadow-sm text-center p-4 position-relative mt-n5 mx-4">
                        <h4 class="text-success">Fragrance Oils</h4>
                        <span class="text-body">Diam dolor diam ipsum sit diam amet diam et eos. Clita erat ipsum</span>
                    </div>
                </a>
                
                <a href="" class="d-block product-item rounded">
                    <img src="../UserTemplate/img/otherpro1.png" alt="">
                    <div class="bg-white shadow-sm text-center p-4 position-relative mt-n5 mx-4">
                        <h4 class="text-success">Other Products</h4>
                        <span class="text-body">Diam dolor diam ipsum sit diam amet diam et eos. Clita erat ipsum</span>
                    </div>
                </a>
            </div>
        </div>
    </div>
    <!-- Products End -->
   


</asp:Content>
