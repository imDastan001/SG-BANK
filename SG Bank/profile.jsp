<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">

    <title>SG Bank Profile page</title>
    <meta content="This is a Bank Website" name="description">
    <link href="assets/img/favicon.ico" rel="icon">
    <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">
    <link
        href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
        rel="stylesheet">
    <link href="assets/vendor/aos/aos.css" rel="stylesheet">
    <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
    <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
    <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
    <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">
    <link href="assets/css/style.css" rel="stylesheet">
<link rel="stylesheet" href="styling.css">
</head>
<%
if(session.getAttribute("name")==null || session.getAttribute("EMAIL")==null || session.getAttribute("USERNAME")==null){
    response.sendRedirect("login.html");
}


%>

<body>
    <header id="header" class="header fixed-top">
        <div class="container-fluid container-xl d-flex align-items-center justify-content-between">

            <a href="index.html" class="logo d-flex align-items-center">
                <img src="assets/img/logo.png" alt="">
                <span>SG Bank</span>
            </a>

            <nav id="navbar" class="navbar">
                <ul>
                    <li><a class="getstarted scrollto" href="logout.jsp">Log Out</a></li>
                </ul>
                <i class="bi bi-list mobile-nav-toggle"></i>
            </nav>

        </div>
    </header>

    <div class="container emp-profile">
        <form method="post">
            <div class="row">
                <div class="col-md-4">
                    <div class="profile-img">
                        <img src="userprofile.png"
                            alt="" />
        
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="profile-head">
                        <h5>
                        <%out.print(session.getAttribute("USERNAME"));%>
                        </h5>
                        <h6>
                            <%out.print(session.getAttribute("ADDRESS"));%>
                        </h6>
                        <p class="proile-rating">CREDIT SCORE : <span><%out.print(session.getAttribute("credit"));%></span></p>
                      
                    </div>
                </div>
             
            </div>
            
            <div class="row">
                <div class="col-md-4">
                    <div class="profile-work">
                        <p style="color:#0d6efd; font-size: 18px; margin-top:-1px;">Balance:Rs <%out.print(session.getAttribute("BALANCE"));%>.00 </p>
                    
                        <a href="withdraw.jsp">Withdraw amount</a><br />
                        <a href="transfer.jsp">Transfer money</a><br />
                        <a href="profile.jsp">Profile</a><br />
                        <a href="transaction.jsp">Transaction History</a><br />
                    </div>
                </div>

                <div class="col-md-8">
                    <div class="tab-content profile-tab" id="myTabContent">
                        <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                            <div class="row">
                                <div class="col-md-6">
                                    <label>Customer Id</label>
                                </div>
                                <div class="col-md-6">
                                    <p><%out.print(session.getAttribute("CID"));%></p>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <label>Full Name</label>
                                </div>
                                <div class="col-md-6">
                                    <p><%out.print(session.getAttribute("name"));%></p>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <label>Email</label>
                                </div>
                                <div class="col-md-6">
                                    <p><%out.print(session.getAttribute("EMAIL"));%></p>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <label>Phone</label>
                                </div>
                                <div class="col-md-6">
                                    <p><%out.print(session.getAttribute("PHONENUMBER"));%></p>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <label>Account Number</label>
                                </div>
                                <div class="col-md-6">
                                    <p><%out.print(session.getAttribute("ACCOUNT_NUMBER"));%></p>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <label>IFSC Code</label>
                                </div>
                                <div class="col-md-6">
                                    <p><%out.print(session.getAttribute("IFSC_CODE"));%></p>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <label>Credit Card</label>
                                </div>
                                <div class="col-md-6">
                                    <p>374********<%out.print(session.getAttribute("CREDIT_CARD"));%><br><span style="color:black;">Expiry:</span> 12/26 <span
                                            style="color:black;">CVV:</span> ***</p>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
                            <div class="row">
                                <div class="col-md-6">
                                    <label>Experience</label>
                                </div>
                                <div class="col-md-6">
                                    <p>Expert</p>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <label>Hourly Rate</label>
                                </div>
                                <div class="col-md-6">
                                    <p>10$/hr</p>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <label>Total Projects</label>
                                </div>
                                <div class="col-md-6">
                                    <p>230</p>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <label>English Level</label>
                                </div>
                                <div class="col-md-6">
                                    <p>Expert</p>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <label>Availability</label>
                                </div>
                                <div class="col-md-6">
                                    <p>6 months</p>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <label>Your Bio</label><br />
                                    <p>Your detail description</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </div>
    <footer id="footer" class="footer">


        <div class="footer-top">
            <div class="container">
                <div class="row gy-4">
                    <div class="col-lg-5 col-md-12 footer-info">
                        <a href="index.html" class="logo d-flex align-items-center">
                            <img src="assets/img/logo.png" alt="">
                            <span>SG Bank</span>
                        </a>
                        <p>SG Bank is established in 2022 with its registered office in Gwalior, Madhya Pradesh, India.
                            Its a full-service branch,
                            Started by Shashank_shekhar</p>
                        <div class="social-links mt-3">
                            <a href="#" class="twitter"><i class="bi bi-twitter"></i></a>
                            <a href="#" class="facebook"><i class="bi bi-facebook"></i></a>
                            <a href="#" class="instagram"><i class="bi bi-instagram"></i></a>
                            <a href="#" class="linkedin"><i class="bi bi-linkedin"></i></a>
                        </div>
                    </div>



                    <div class="col-lg-3 col-md-12 footer-contact text-center text-md-start">
                        <h4>Contact Us</h4>
                        <p>
                            Turari Gwalior,
                            NH-75, Gwalior
                            Madhya Pradesh<br>
                            <strong>Phone:</strong> 6204167079<br>
                            <strong>Email:</strong>shashankstrshekhar001@gmail.com<br>
                        </p>

                    </div>

                </div>
            </div>
        </div>

        <div class="container">
            <div class="copyright">
                &copy; Copyright <strong><span>SG BANK</span></strong>. All Rights Reserved
            </div>
            <div class="credits">
                Designed by <strong><span>Shashank_shekhar</span></strong>
            </div>
        </div>
    </footer><!-- End Footer -->

    <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i
            class="bi bi-arrow-up-short"></i></a>

    <!-- Vendor JS Files -->
    <script src="assets/vendor/purecounter/purecounter.js"></script>
    <script src="assets/vendor/aos/aos.js"></script>
    <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
    <script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
    <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
    <script src="assets/vendor/php-email-form/validate.js"></script>

    <!-- Template Main JS File -->
    <script src="assets/js/main.js"></script>

</body>

</html>