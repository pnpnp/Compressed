<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" 
prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" 
prefix="spring" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>Pending Loans</title>
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

 <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">
 
 <style>
 table td{
  color:#ffffff;
}
 
 </style>
 
</head>

<body>

  <!--==========================
    Header
  ============================-->
  <header id="header">
    <div class="container-fluid">

      <div id="logo" class="pull-left">
        <h1><a href="#intro" class="scrollto">United Home Loans</a></h1>
        <!-- Uncomment below if you prefer to use an image logo -->
<%--         <a href="#intro"><img src="${pageContext.request.contextPath}/resources/img/logo.png" alt="" title="" /></a>
 --%>      </div>

      <nav id="nav-menu-container">
        <ul class="nav-menu">
                <li ><a href="index2">Home</a></li>
                <li><a href="calculators2">Calculators</a></li>
                <li><a href="aboutus2">About Us</a></li>
                <li><a href="faq2">FAQ</a></li>
                <li><a href="adminprofile">Profile</a></li>
                <li><a href="logout">Logout</a></li>
          
        </ul>
      </nav><!-- #nav-menu-container -->
    </div>
  </header><!-- #header -->

  <!--==========================
    Intro Section
  ============================-->
  <section id="intro">
    <div class="intro-container"> 
       <div id="introCarousel" class="carousel  slide carousel-fade" data-ride="carousel">

        <ol class="carousel-indicators"></ol>

        <div class="carousel-inner" role="listbox">

          <div class="carousel-item active">
            <div class="carousel-background"><img src="${pageContext.request.contextPath}/resources/img/intro-carousel/1.jpg" alt=""></div>
            <div class="carousel-container">
              <div class="carousel-content">
                <br> <br>
                <h2>Pending Loans</h2>
                
                
                <body>
<c:if test="${!empty listCustomers}"/>
<%-- <table border=2>
<tr>
<th>customerId</th>
<th>customerFirstName</th>
<th>customerMiddleName</th>
<th>customerLastName</th>
<th>emailId</th>
<th>gender</th>
<th>mobileNo</th>
<th>panNo</th>
<th>aadharNo</th>
<th>status</th>
<th>DETAILS</th>


<c:forEach items="${listCustomers}" var="customer">
		<tr>
			<td>${customer.customerId}</td>
			<td>${customer.customerFirstName}</td>
			<td>${customer.customerMiddleName}</td>
			<td>${customer.customerLastName}</td>
			<td>${customer.emailId}</td>
			<td>${customer.gender}</td>	
			<td>${customer.mobileNo}</td>	
			<td>${customer.panNo}</td>
			<td>${customer.aadharNo}</td>	
			<td>${customer.loanStatus}</td>
			
			
			
			<td><a href="<c:url value='/detailList/${customer.customerId}' />" >Details</a></td>
			
			
			 <td><a href="<c:url value='/accept/${customer.customerId}' />" >Accept</a></td>
			<td><a href="<c:url value='/reject/${customer.customerId}'/>" >Reject</a>
			</td> 	 					
		</tr>
		</c:forEach>
	</table>
	
	
<br> <br> --%>


<table class="table" border=2>
  <thead class="thead-dark">
   <tr>
<th>Customer Id</th>
<th>First Name</th>
<th>Middle Name</th>
<th>Last Name</th>
<th>Gender</th>
<th>Email ID</th>
<th>Mobile No</th>
<th>PAN No</th>
<th>Aadhar No</th>
<th>Loan Status</th>

<th>Accept</th>
<th>Reject</th>



<c:forEach items="${listCustomers}" var="customer">
		<tr>
			<td>${customer.customerId}</td>
			<td>${customer.customerFirstName}</td>
			<td>${customer.customerMiddleName}</td>
			<td>${customer.customerLastName}</td>
			<td>${customer.gender}</td>	
			<td>${customer.emailId}</td>		
			<td>${customer.mobileNo}</td>	
			<td>${customer.panNo}</td>
			<td>${customer.aadharNo}</td>
			<td>${customer.loanStatus}</td>
			
			

 		 		
	<td> <a href="<c:url value='/accept/${customer.customerId}'/>" button type="button" class="btn btn-success">Accept</button>  </td>
		<td> <a href="<c:url value='/reject/${customer.customerId}'/>" button type="button" class="btn btn-danger">Reject</button>  </td>
			 
			 
			 
			 
			 
			 
			 
			<%-- <td><a href="<c:url value='/reject/${customer.customerId}'/>" >Reject</a>
			</td>  --%>	 					
		</tr>
		</c:forEach>
  </tbody>
</table>







</body>
                
                
                
              </div>
            </div>
          </div>

          

        </div>

        
      </div>
    </div>
  </section>

  <main id="main">

    
   

   

    

  <!--==========================
    Footer
  ============================-->
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
