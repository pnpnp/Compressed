<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
 <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" 
prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" 
prefix="spring" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>Loan Details</title>
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <meta content="" name="keywords">
  <meta content="" name="description">

  <!-- Favicons -->
  <link href="${pageContext.request.contextPath}/resources/img/favicon.png" rel="icon">
  <link href="${pageContext.request.contextPath}/resources/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,700,700i|Montserrat:300,400,500,700" rel="stylesheet">

  <!-- Bootstrap CSS File -->
  <link href="${pageContext.request.contextPath}/resources/lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Libraries CSS Files -->
  <link href="${pageContext.request.contextPath}/resources/lib/font-awesome/css/font-awesome.min.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}/resources/lib/animate/animate.min.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}/resources/lib/ionicons/css/ionicons.min.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}/resources/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}/resources/lib/lightbox/css/lightbox.min.css" rel="stylesheet">

  <!-- Main Stylesheet File -->
  <link href="${pageContext.request.contextPath}/resources/css/style.css" rel="stylesheet">


</head>

<body>

  <!--==========================
    Header
  ============================-->
  <header id="header">
    <div class="container-fluid">

      <div id="logo" class="pull-left">
        <h1><a href="#intro" class="scrollto">United Home Loan</a></h1>
        <!-- Uncomment below if you prefer to use an image logo -->
        <!-- <a href="#intro"><img src="img/logo.png" alt="" title="" /></a>-->
      </div>

      <nav id="nav-menu-container">
        <ul class="nav-menu">
            <li><a href="index1">Home</a></li>
            <li><a href="calculators1">Calculator</a></li>
            <li><a href="aboutus1">About Us</a></li>
            <li><a href="faq1">FAQ</a></li>
            <li><a href="customerprofile">Profile</a></li>
            <li><a href="logout">Logout</a></li>
          
     
        </ul>
      </nav>
    </div>
  </header>

  <!--==========================
    Intro Section
  ============================-->
  <section id="intro1">
    <br>
    <br> <br>
    <br> <br>
    
  
    <form:form action="addLoanDetails" role="form" method="post" modelAttribute="customer">
        <div class="box box-primary">
            <div class="box-header">
                    <h2  class="text-center">Step 4</h2>
                    
                <h2  class="text-center">Enter Loan Details</h2>
                
            </div>
            <!-- /.box-header -->
            
           <%--  <label class="label">Salary</label> &nbsp; &nbsp;
            <form:input type="text" path="salary" id="salary" class="label"required="required" />

                  <br> <br> --%>
                  
            <label>Maximum Amount</label> &nbsp; &nbsp;
            <form:input type="text"  path="loanDetails.maxAmount"  readonly="readonly" required="required"/>

                  <br> <br>
                  
                  <label>Loan Amount</label> &nbsp; &nbsp;
                <form:input type="number" min="0" path="loanDetails.loanAmount" id="loanAmount" required="required" oninput="validity.valid||(value='');"/>
                <br> <br>

            <label>Interest Rate</label> &nbsp; &nbsp;
            <form:input type="text" value="8.5%" path="loanDetails.interestRate" readonly="readonly" required="required"/>
                <br> <br>

                <label>Tenure</label> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                <form:input type="number" min="0" path="loanDetails.tenure" id="tenure" required="required" oninput="validity.valid||(value='');"/>
                <br> <br>

               <%--   <label>EMI</label> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                <form:input type="number" min="0" path="loanDetails.emi" id="emi"  readonly="readonly" oninput="validity.valid||(value='');"/>
                <br> <br> --%>

                </div>
               
            
            <!--     <div class="reset">
                    <button type="button" class="btn btn-success">Submit </button></div>
                    <button type="button" name="Submit" value="Save" class="btn btn-danger"><i class="livicon" data-n="pen" data-s="16"   ></i> Save</button>
                     <button type="reset" name="Reset" value="Clear" class="btn btn-primary"><i class="livicon" data-n="trash" data-s="16" data-c="#fff" data-hc="0"></i> Clear</button>
                </div>  -->
                
                        <input type="submit" name="done" value="Submit"/>
                </form:form>
    
    
    
  </section><!-- #intro -->

  <main id="main">

      <footer id="footer">

          <div class="footer-top">
      
            <div class="container">
      
              <div class="row">
      
      
      
                <div class="col-lg-3 col-md-6 footer-info">
      
                  <h3>United Home Loans</h3>
      
                  <p>We are here to guide you on <br>everything you need to know <br>about availing a home loan.</p>
      
                </div>
      
      
      
                <div class="col-lg-3 col-md-6 footer-links">
      
                  <h4>Useful Links</h4>
      
                  <ul>
      
                    <li><i class="ion-ios-arrow-right"></i> <a href="#">Home</a></li>
      
                    <li><i class="ion-ios-arrow-right"></i> <a href="#">Calculators</a></li>
      
                    <li><i class="ion-ios-arrow-right"></i> <a href="#">About Us</a></li>
      
                    <li><i class="ion-ios-arrow-right"></i> <a href="#">Terms of service</a></li>
      
                    <li><i class="ion-ios-arrow-right"></i> <a href="#">Privacy policy</a></li>
      
                  </ul>
      
                </div>
      
      
      
                <div class="col-lg-3 col-md-6 footer-contact">
      
                  <h4>Contact Us</h4>
      
                  <p>
      
                    TTC Electronic Zone, <br>
      
                    Mahape Road, <br>
      
                    Navi Mumbai, <br> Maharashtra 400710, <br>India <br> <br>
      
                    <strong>Phone:</strong>  022 6795 4545<br>
      
                    <strong>Email:</strong> unitedhl@gmail.com<br>
      
                  </p>
      
      
      
                  <div class="social-links">
      
                    <a href="#" class="twitter"><i class="fa fa-twitter"></i></a>
      
                    <a href="#" class="facebook"><i class="fa fa-facebook"></i></a>
      
                    <a href="#" class="instagram"><i class="fa fa-instagram"></i></a>
      
                    <a href="#" class="google-plus"><i class="fa fa-google-plus"></i></a>
      
                    <a href="#" class="linkedin"><i class="fa fa-linkedin"></i></a>
      
                  </div>
      
      
      
                </div>
      
      
      
                <div class="col-lg-3 col-md-6 footer-newsletter">
      
                  <h4>Our Newsletter</h4>
      
                  <p>Subscribe to our Newsletter for regular updates.</p>
      
                  <form action="" method="post">
      
                    <input type="email" name="email"><input type="submit"  value="Subscribe">
      
                  </form>
      
                </div>
      
      
      
              </div>
      
            </div>
      
          </div>
      
      
      
          <div class="container">
      
            <div class="copyright">
      
                Disclaimer - "As regards deposit taking activity of the company, the viewers may refer to the advertisement in the newspaper / information furnished in the application form for soliciting public deposits; published on June 28, 2018 in the Free Press Journal and in Navshakti, Mumbai, respectively. The Company is having a valid Certificate of Registration dated 31/07/2001 issued by the National Housing Bank under Section 29A of the National Housing Bank Act, 1987. However, the National Housing Bank does not accept any responsibility or guarantee about the present position as to the financial soundness of the company or for the correctness of any of the statements or representations made or opinions expressed by the company and for repayment of deposits / discharge of the liabilities by the company."
      
                <br> <br>
      
                *The information mentioned herein is subject to change without prior notice. <br> Please visit your nearest United branch for detailed information on our various products and changes, if any. Terms and conditions apply. <br> <br>
      
              &copy; Copyright <strong>United Home Loans</strong>. All Rights Reserved
      
            </div>
      
            <div class="credits">
      
             
      
            
      
            </div>
      
          </div>
      
        </footer><!-- #footer -->
      
      
      
        <a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>
      
        <!-- Uncomment below i you want to use a preloader -->
      
        <!-- <div id="preloader"></div> -->
      
      

  <a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>
  <!-- Uncomment below i you want to use a preloader -->
  <!-- <div id="preloader"></div> -->

  <!-- JavaScript Libraries -->
  <script src="${pageContext.request.contextPath}/resources/lib/jquery/jquery.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/lib/jquery/jquery-migrate.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/lib/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/lib/easing/easing.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/lib/superfish/hoverIntent.js"></script>
  <script src="${pageContext.request.contextPath}/resources/lib/superfish/superfish.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/lib/wow/wow.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/lib/waypoints/waypoints.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/lib/counterup/counterup.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/lib/owlcarousel/owl.carousel.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/lib/isotope/isotope.pkgd.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/lib/lightbox/js/lightbox.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/lib/touchSwipe/jquery.touchSwipe.min.js"></script>
  <!-- Contact Form JavaScript File -->
  <script src="${pageContext.request.contextPath}/resources/contactform/contactform.js"></script>

  <!-- Template Main Javascript File -->
  <script src="${pageContext.request.contextPath}/resources/js/main.js"></script>

</body>
</html>
