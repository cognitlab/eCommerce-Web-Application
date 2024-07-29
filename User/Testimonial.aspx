<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.Master" AutoEventWireup="true" CodeBehind="Testimonial.aspx.cs" Inherits="Aromakart.User.Testimonial" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

<%--     <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600&family=Playfair+Display:wght@700;900&display=swap" rel="stylesheet">

    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="../UserTemplate/lib/animate/animate.min.css" rel="stylesheet">
    <link href="../UserTemplate/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="../UserTemplate/css/bootstrap.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="../UserTemplate/css/style.css" rel="stylesheet">--%>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- Testimonial Start -->
    <div class="container-fluid py-5">
        <div class="container">
            <div class="section-title text-center mx-auto wow fadeInUp" data-wow-delay="0.1s" style="max-width: 500px;">
                <p class="fs-5 fw-medium fst-italic text-success">Testimonial</p>
                <h1 class="display-6">What our clients say about our aromacart</h1>
            </div>
            <div class="owl-carousel testimonial-carousel wow fadeInUp" data-wow-delay="0.5s">
                <div class="testimonial-item border-success p-4 p-lg-5">
                    <p class="mb-4">Diam dolor diam ipsum sit. Aliqu diam amet diam et eos. Clita erat ipsum et lorem et sit, sed stet lorem sit clita duo justo</p>
                    <div class="d-flex align-items-center justify-content-center">
                        <img class="img-fluid flex-shrink-0" src="../UserTemplate/img/testimonial-1.jpg" alt="">
                        <div class="text-start ms-3">
                            <h5>Client Name</h5>
                            <span class="text-success">Profession</span>
                        </div>
                    </div>
                </div>
                <div class="testimonial-item border-success p-4 p-lg-5">
                    <p class="mb-4">Diam dolor diam ipsum sit. Aliqu diam amet diam et eos. Clita erat ipsum et lorem et sit, sed stet lorem sit clita duo justo</p>
                    <div class="d-flex align-items-center justify-content-center">
                        <img class="img-fluid flex-shrink-0" src="../UserTemplate/img/testimonial-2.jpg" alt="">
                        <div class="text-start ms-3">
                            <h5>Client Name</h5>
                            <span class="text-success">Profession</span>
                        </div>
                    </div>
                </div>
                <div class="testimonial-item border-success p-4 p-lg-5">
                    <p class="mb-4">Diam dolor diam ipsum sit. Aliqu diam amet diam et eos. Clita erat ipsum et lorem et sit, sed stet lorem sit clita duo justo</p>
                    <div class="d-flex align-items-center justify-content-center">
                        <img class="img-fluid flex-shrink-0" src="../UserTemplate/img/testimonial-3.jpg" alt="">
                        <div class="text-start ms-3">
                            <h5>Client Name</h5>
                            <span class="text-success">Profession</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Testimonial End -->

<%--       <!-- JavaScript Libraries -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="../UserTemplate/lib/wow/wow.min.js"></script>
    <script src="../UserTemplate/lib/easing/easing.min.js"></script>
    <script src="../UserTemplate/lib/waypoints/waypoints.min.js"></script>
    <script src="../UserTemplate/lib/owlcarousel/owl.carousel.min.js"></script>

    <!-- Template Javascript -->
    <script src="../UserTemplate/js/main.js"></script>--%>


</asp:Content>
