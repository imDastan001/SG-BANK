<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>SG Bank Withdraw page</title>
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
<link rel="stylesheet" href="withdraw.css">
<link rel="stylesheet" href="styling.css">
</head>





<%
if(session.getAttribute("name")==null){
    response.sendRedirect("index.html");
}
else{

%>
<header id="header" class="header fixed-top">
  <div class="container-fluid container-xl d-flex align-items-center justify-content-between">

    <a href="index.html" class="logo d-flex align-items-center">
      <img src="assets/img/logo.png" alt="">
      <span>SG Bank</span>
    </a>

    <nav id="navbar" class="navbar">


  </div>
</header>



<body>
  <style>
    
  </style>
  <div class=information>
    <div class=hello>
      <img class=person
        src="userprofile.png"
        alt=>
      <div class=info>
        <p>Hello,
        <p>
        <p><b> 
          <%out.print(session.getAttribute("name"));%>
         </b></p>
      </div>
    </div>
    <div class=form>
      <form action="withdrawamnt.jsp">
        <div class="form-outline mb-4">
          <input type="number" id="form3Example3" name="amnt" class="form-control" />
          <label class="form-label" for="form3Example3">Withdraw amount</label>
        </div>

        <!-- Password input -->
        <div class="form-outline mb-4">
          <input type="password" id="form3Example4" name="password" class="form-control" />
          <label class="form-label" for="form3Example4">Password</label>
        </div>
        <button id="button" type="submit">Withdraw</a>

      </form>
    </div>
  </div>
  </div>


  <!-- ======= Footer ======= -->
  <footer id="footer" class="footer">


    <div class="footer-top">
      <div class="container">
        <div class="row gy-4">
          <div class="col-lg-5 col-md-12 footer-info">
            <a href="index.html" class="logo d-flex align-items-center">
              <img src="assets/img/logo.png" alt="">
              <span>SG Bank</span>
            </a>
            <p>SG Bank is established in 2022 with its registered office in Gwalior, Madhya Pradesh, India. Its a
              full-service branch,
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
<% 
}
%>