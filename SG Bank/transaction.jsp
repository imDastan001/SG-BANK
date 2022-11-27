<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>SG Bank Transaction page</title>
  <meta content="This is a Bank Website" name="description">
  <link href="assets/img/favicon.ico" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">
  <link href="assets/vendor/aos/aos.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">
  <link href="assets/css/style.css" rel="stylesheet">
  <link rel="stylesheet" href="styling.css">
</head>
<%@ page import = "java.sql.*"%>
<%
String username = (String)session.getAttribute("USERNAME");

if(username==null){
    %>
    <SCRIPT>
        window.alert("INVALID CREDENTIALS");
        window.location='profile.jsp';
    </SCRIPT>
    <%


}
else{
  %>
  <body>
    <style>
.transaction_table{
  margin-top: 7rem;
  margin-bottom:13rem;
}


    </style>
    <header id="header" class="header fixed-top">
      <div class="container-fluid container-xl d-flex align-items-center justify-content-between">
  
        <a href="index.html" class="logo d-flex align-items-center">
          <img src="assets/img/logo.png" alt="">
          <span>SG Bank</span>
        </a>
  
        <nav id="navbar" class="navbar">
         
          <i class="bi bi-list mobile-nav-toggle"></i>
        </nav>
  
      </div>
    </header>
  <div class="transaction_table">
    <div class="container mt-5 px-2">
      
      <div class="table-responsive">
      <table class="table table-responsive table-borderless">
          
        <thead>
          <tr class="bg-light">
            <th scope="col" width="7%">ID</th>  
            <th scope="col" width="12%">Status</th>
            <th scope="col" width="23%">IFSC_code</th>
            <th scope="col" width="25%">Transaction Type</th>
            <th scope="col" class="text-end" width="20%"><span>Amount</span></th>
          </tr>
        </thead>
        <tbody style="border:1px solid #fff;">
         



<%

try{
    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","dastan");
    Statement stmt = con.createStatement();
    String sql = "select ifsc_code, cid ,transaction.U_ID, transaction.amount,transaction.t_status,transaction.t_type from banking inner join transaction on banking.username = transaction.userid where banking.username='"+username+"'";
    ResultSet rs=stmt.executeQuery(sql);
    while(rs.next()){
%>
<tr style="color:white;" >
  <td><%=rs.getString("U_ID") %></td>
  <td><i class="fa fa-check-circle-o green"></i><span class="ms-1"><%=rs.getString("T_STATUS") %></span></td>
  <td><%=rs.getString("IFSC_CODE") %></td>
  <td><%=rs.getString("T_TYPE") %></td>
      <td class="text-end"><span class="fw-bolder"><%=rs.getString("AMOUNT") %></span></td>
  </tr> 

<%


    }





    con.close();  


 }
 catch(Exception e){out.print(e);}  
}


%>



 
   
  </tbody>
</table>
  
  </div>
    
</div>
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
            <p>SG Bank is established in 2022 with its registered office in Gwalior, Madhya Pradesh, India. Its a full-service branch,
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
        Designed by  <strong><span>Shashank_shekhar</span></strong>
      </div>
    </div>
  </footer><!-- End Footer -->

  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

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