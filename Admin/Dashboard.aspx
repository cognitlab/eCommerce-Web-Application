<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="Aromakart.Admin.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


                            <!-- *************************************************************** -->
                        <!-- Start First Cards -->
                        <!-- *************************************************************** -->
                        <div class="card-group">
                            <div class="card border-right">
                                <div class="card-body">
                                    <div class="d-flex d-lg-flex d-md-block align-items-center">
                                        <div>
                                            <div class="d-inline-flex align-items-center">
                                                <h2 class="text-dark mb-1 font-weight-medium">3</h2>
                                                <span
                                                    class="badge bg-primary font-12 text-white font-weight-medium badge-pill ml-2 d-lg-block d-md-none">+10.33%</span>
                                            </div>
                                            <h6 class="text-muted font-weight-normal mb-0 w-100 text-truncate">Active Users</h6>
                                        </div>
                                        <div class="ml-auto mt-md-3 mt-lg-0">
                                            <span class=""><a href="Users.aspx"><i data-feather="user-plus"></i></a></span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="card border-right">
                                <div class="card-body">
                                    <div class="d-flex d-lg-flex d-md-block align-items-center">
                                        <div>
                                            <h2 class="text-dark mb-1 w-100 text-truncate font-weight-medium"><sup
                                                    class="set-doller"></sup>5</h2>
                                            <h6 class="text-muted font-weight-normal mb-0 w-100 text-truncate">Products Item
                                            </h6>
                                        </div>
                                        <div class="ml-auto mt-md-3 mt-lg-0">
                                            <span class=""><a href="AddProduct.aspx"><i class="" data-feather="shopping-cart"></i></a></span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="card border-right">
                                <div class="card-body">
                                    <div class="d-flex d-lg-flex d-md-block align-items-center">
                                        <div>
                                            <div class="d-inline-flex align-items-center">
                                                <h2 class="text-dark mb-1 font-weight-medium">5</h2>
                                                <span
                                                    class="badge bg-danger font-12 text-white font-weight-medium badge-pill ml-2 d-md-none d-lg-block">4%</span>
                                            </div>
                                            <h6 class="text-muted font-weight-normal mb-0 w-100 text-truncate">Category</h6>
                                        </div>
                                        <div class="ml-auto mt-md-3 mt-lg-0">
                                             <span class=""><a href="Category.aspx"><i class="" data-feather="tag"></i></a></span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="card">
                                <div class="card-body">
                                    <div class="d-flex d-lg-flex d-md-block align-items-center">
                                        <div>
                                            <h2 class="text-dark mb-1 font-weight-medium">2</h2>
                                            <h6 class="text-muted font-weight-normal mb-0 w-100 text-truncate">Projects</h6>
                                        </div>
                                        <div class="ml-auto mt-md-3 mt-lg-0">
                                            <span class=""><a href="Dashboard.aspx"><i class="" data-feather="globe"></i></a></span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- *************************************************************** -->
                        <!-- End First Cards -->
                        <!-- *************************************************************** -->
                        <!-- *************************************************************** -->
                        <!-- Start Sales Charts Section -->
                        <!-- *************************************************************** -->
                       
                        <!-- *************************************************************** -->
                        <!-- End Sales Charts Section -->
                        <!-- *************************************************************** -->
                        <!-- *************************************************************** -->
                        <!-- Start Location and Earnings Charts Section -->
                        <!-- *************************************************************** -->
                       
                        <!-- *************************************************************** -->
                        <!-- End Location and Earnings Charts Section -->
                        <!-- *************************************************************** -->
                        <!-- *************************************************************** -->
                        <!-- Start Top Leader Table -->
                        <!-- *************************************************************** -->
                        <div class="row">
                            <div class="col-12">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="d-flex align-items-center mb-4">
                                            <h4 class="card-title">Top Leaders</h4>
                                            <div class="ml-auto">
                                               <%-- <div class="dropdown sub-dropdown">
                                                    <button class="btn btn-link text-muted dropdown-toggle" type="button"
                                                        id="dd1" data-toggle="dropdown" aria-haspopup="true"
                                                        aria-expanded="false">
                                                        <i data-feather="more-vertical"></i>
                                                    </button>
                                                    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="dd1">
                                                        <a class="dropdown-item" href="#">Insert</a>
                                                        <a class="dropdown-item" href="#">Update</a>
                                                        <a class="dropdown-item" href="#">Delete</a>
                                                    </div>
                                                </div>--%>
                                            </div>
                                        </div>
                                        <div class="table-responsive">
                                            <table class="table no-wrap v-middle mb-0">
                                                <thead>
                                                    <tr class="border-0">
                                                        <th class="border-0 font-14 font-weight-medium text-muted">Team Lead
                                                        </th>
                                                        <th class="border-0 font-14 font-weight-medium text-muted px-2">Project
                                                        </th>
                                                        <th class="border-0 font-14 font-weight-medium text-muted">Team Professors</th>
                                                        <th class="border-0 font-14 font-weight-medium text-muted text-center">
                                                            Status
                                                        </th>
                                                        <th class="border-0 font-14 font-weight-medium text-muted text-center">
                                                            Weeks
                                                        </th>
                                                        <th class="border-0 font-14 font-weight-medium text-muted">Budget</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                   
                                                    <tr>
                                                        <td class="px-2 py-4">
                                                            <div class="d-flex no-block align-items-center">
                                                                <div class="mr-3"><img
                                                                        src="../AdminTemplate/assets/images/users/widget-table-pic2.jpg"
                                                                        alt="user" class="rounded-circle" width="45"
                                                                        height="45" /></div>
                                                                <div class="">
                                                                    <h5 class="text-dark mb-0 font-16 font-weight-medium">Dwarkesh
                                                                        Thanki
                                                                    </h5>
                                                                    <span class="text-muted font-14">Professors@heist.com</span>
                                                                </div>
                                                            </div>
                                                        </td>
                                                        <td class="text-muted px-2 py-4 font-14">AromaKart - An Ecommerce shop</td>
                                                        <td class="px-2 py-4">
                                                            <div class="popover-icon">
                                                                <a class="btn btn-secondary rounded-circle btn-circle font-12 popover-item"
                                                                    href="javascript:void(0)">Darshan</a>
                                                                <a class="btn btn-cyan rounded-circle btn-circle font-12 popover-item"
                                                                    href="javascript:void(0)">Bhargav</a>
                                                                  <a class="btn btn-warning rounded-circle btn-circle font-12 popover-item"
      href="javascript:void(0)">JACK</a>
                                                                  <a class="btn btn-danger rounded-circle btn-circle font-12 popover-item"
      href="javascript:void(0)">Uday</a>
                                                             
                                                            </div>
                                                        </td>
                                                        <td class="text-center px-2 py-4"><i
                                                                class="ti ti-check text-success font-12" data-toggle="tooltip"
                                                                data-placement="top" title="Done"></i>
                                                        </td>
                                                        <td class="text-center text-muted font-weight-medium px-2 py-4">1</td>
                                                        <td class="font-weight-medium text-dark px-2 py-4">$85K</td>
                                                    </tr>
                                                   
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- *************************************************************** -->
                        <!-- End Top Leader Table -->
                        <!-- *************************************************************** -->
    

</asp:Content>
