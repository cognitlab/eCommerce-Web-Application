<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Aromakart.User.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    

 
    <%--VIDEO START--%>
    <div>
    <video muted autoplay loop class=" w-100" src="../UserTemplate/vid/2.mp4" type="video/mp4"  alt="vid"  />
    </div>
  <%--VIDEO END--%>
   
      <!-- About Start -->  
    <div class="container-xxl py-5">
        <div class="container">
            <div class="row g-5">
                <div class="col-lg-6">
                    <div class="row g-3">
                        <div class="col-6 text-end">
                            <img class="img-fluid bg-white w-100 h-100 mb-3 wow fadeIn" data-wow-delay="0.1s" src="../UserTemplate/img/demure-aroma-sticks.png" alt="aggarbati"/>
                           <%-- <img class="img-fluid bg-white w-50 wow fadeIn" data-wow-delay="0.2s" src="img/about-3.jpg" alt="">--%>
                        </div>
                        <%--<div class="col-6">--%>
                            <%--<img class="img-fluid bg-white w-50 mb-3 wow fadeIn" data-wow-delay="0.3s" src="img/about-4.jpg" alt="">
                            <img class="img-fluid bg-white w-100 wow fadeIn" data-wow-delay="0.4s" src="img/about-2.jpg" alt="">--%>
                        <%--</div>--%>
                    </div>
                </div>
                <div class="col-lg-6 wow fadeIn" data-wow-delay="0.5s">
                    <div class="section-title">
                        <p class="fs-5 fw-medium fst-italic text-success">Our Story</p>
                        <h1 class="display-6">The success history of Aromakart in 25 years</h1>
                    </div>
                    <div class="row g-3 mb-4">
                        <div class="col-sm-4">
                            <%--<img class="img-fluid bg-white w-100" src="img/about-5.jpg" alt="">--%>
                            <iframe src="https://giphy.com/embed/5FvH8qufodrMY" width="100" height="150" frameBorder="0"></iframe>
                        </div>
                        <div class="col-sm-8">
                            <h5>Our agarbatti is one of the most popular sticks in the world</h5>
                            <p class="mb-0">Tempor erat elitr rebum at clita. Diam dolor diam ipsum sit. Aliqu diam amet diam et eos. Clita erat ipsum et lorem et sit</p>
                        </div>
                    </div>
                    <div class="border-top mb-4"></div>
                    <div class="row g-3">
                        <div class="col-sm-8">
                            <h5>Daily use of a agarbatti is good for your mental health</h5>
                            <p class="mb-0">Tempor erat elitr rebum at clita. Diam dolor diam ipsum sit. Aliqu diam amet diam et eos. Clita erat ipsum et lorem et sit</p>
                        </div>
                        <div class="col-sm-4">
                            <%--<img class="img-fluid bg-white w-100 h-100" src="https://www.aromakart.com/assets/img/h3-img.jpg" alt="">--%>
                            <iframe src="https://giphy.com/embed/cAFvw6xkh7hiq2ck1n" width="260" height="300" frameBorder="0"></iframe>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- About End -->
    
    <!-- Featured Start -->
         <div class="section-title text-center mx-auto wow fadeInUp" data-wow-delay="0.1s" style="max-width: 500px;">
<h1 class="display-6">Featured</h1>
     </div>
    <div class="container-fluid pt-5">
        <div class="row px-xl-5 pb-3">
            <div class="col-lg-3 col-md-6 col-sm-12 pb-1">
                <div class="d-flex align-items-center border mb-4" style="padding: 30px;">
                    <h1 class="fa fa-check text-success m-0 mr-3"></h1>
                    <h5 class="font-weight-semi-bold m-0">Quality Product</h5>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-12 pb-1">
                <div class="d-flex align-items-center border mb-4" style="padding: 30px;">
                    <h1 class="fa fa-shipping-fast text-success m-0 mr-2"></h1>
                    <h5 class="font-weight-semi-bold m-0">Free Shipping</h5>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-12 pb-1">
                <div class="d-flex align-items-center border mb-4" style="padding: 30px;">
                    <h1 class="fas fa-exchange-alt text-success m-0 mr-3"></h1>
                    <h5 class="font-weight-semi-bold m-0">14-Day Return</h5>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-12 pb-1">
                <div class="d-flex align-items-center border mb-4" style="padding: 30px;">
                    <h1 class="fa fa-phone-volume text-success m-0 mr-3"></h1>
                    <h5 class="font-weight-semi-bold m-0">24/7 Support</h5>
                </div>
            </div>
        </div>
    </div>
    <!-- Featured End -->

    <div class="py-md-5 py-4">
	<div class="container">
		<div class="bg-light p-md-5 p-4">
			<div class="row g-md-5 g-4 align-items-start justify-content-center">
				<div class="col-md-4">
					<img src="https://www.aromakart.com/assets/img/h3-img.jpg" class="w-100" alt="H2 Image">
				</div>
				<div class="col-md-8">
					<h2 class="display-3 mb-md-5 mb-3 playfair">Creation</h2>
					<p class="lead lh-lg">Our each fragrance is a unique creation. In order to launch a signature fragrance or flavour, it needs lots of factors - a talented &amp; well experienced perfumer, high quality aromatic raw materials, natural resinoids, aroma chemicals, state of the art manufacturing process &amp; customised packaging.</p>
					<p class="lead lh-lg">Creating a scent requires huge passion &amp; high level of expertise from a Perfumer. With our fragrance library of over 4000+ Fragrances &amp; Flavours, advanced professional team, high quality level &amp; perfection &amp; creativity. We have all the possibilities to bring to our clients unmistakably winning fragrances.</p>
					<p class="lead lh-lg mb-0">Please, knock us to find the perfect scent for your products. </p>
				</div>
			</div>
		</div>
	</div>
</div>

     
        <!-- Offer Start -->
     <div class="section-title text-center mx-auto wow fadeInUp" data-wow-delay="0.1s" style="max-width: 500px;">
<h1 class="display-6">Seasonal Offers</h1>
     </div>
    <div class="container-fluid offer pt-5">
        <div class="row px-xl-5">
            <div class="col-md-6 pb-4">
                <div class="position-relative bg-warning text-center text-md-right text-white mb-2 py-5 px-5">
                    <img src="https://www.aromakart.com/uploads/392f2f07e28258a83bb50eb69ef06147.jpg?v=2" class="card-img shadow" alt=""/>
                    <div class="position-relative" style="z-index: 1;">
                        <h5 class="text-uppercase text-danger shadow mb-3">20% off the all order</h5>
                        <h1 class="mb-4 font-weight-semi-bold">Spring Collection</h1>
                        <a href="Store.aspx" class="btn btn-danger py-md-2 px-md-3">Shop Now</a>
                    </div>
                </div>
            </div>
            <div class="col-md-6 pb-4">
                <div class="position-relative bg-secondary text-center text-md-left text-white mb-2 py-5 px-5">
                    <img src="https://www.aromakart.com/uploads/b7d8b23a9790efad01a7c7a8031d7f55.jpg?v=2" alt="" class="card-img shadow">
                    <div class="position-relative" style="z-index: 1;">
                        <h5 class="text-uppercase text-danger shadow mb-3">20% off the all order</h5>
                        <h1 class="mb-4 font-weight-semi-bold">Winter Collection</h1>
                        <a href="Store.aspx" class="btn btn-danger py-md-2 px-md-3">Shop Now</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Offer End -->


</asp:Content>
