<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" 
prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" 
prefix="spring" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>United Home Loan</title>
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <meta content="" name="keywords">
  <meta content="" name="description">



  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <!-- <meta name="keywords" content="" /> -->
  <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //custom-theme -->
<link href="${pageContext.request.contextPath}/resources/css/style1.css" rel="stylesheet" type="text/css" media="all" />
<!-- js -->
<script src="${pageContext.request.contextPath}/resources/js/jquery-1.9.1.min.js"></script>
<!--// js -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/easy-responsive-tabs.css " />
 
  <!-- Favicons -->
  <link href="${pageContext.request.contextPath}/resources/img/favicon.png" rel="icon">
  <link href="${pageContext.request.contextPath}/resources/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <!-- <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,700,700i|Montserrat:300,400,500,700" rel="stylesheet"> -->

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


  
  <script>
function validateEmail(emailField){
  var reg = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;

  if (reg.test(emailField.value) == false) 
  {
      alert('Invalid Email Address');
      return false;
  }

  return true;

}
</script>
  
</head>

<body class="bg agileinfo">

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
          <li><a href="">Home</a></li>
          <li><a href="calculators">Calculator</a></li>
          <li><a href="aboutus">About Us</a></li>
          <li><a href="faq">FAQ</a></li>
          <li><a href="login">Login</a></li>
          
     
        </ul>
      </nav>
    </div>
  </header>

  <!--==========================
    Intro Section
  ============================-->
  <section id="intro">
    <br>
    <br> 
    
    

    <h1 class="agile_head text-center"> Login</h1>
    <div class="w3layouts_main wrap">
     <!--Horizontal Tab-->
         <div id="parentHorizontalTab_agile">
             <ul class="resp-tabs-list hor_1">
                 <li>Enter Details:</li>
                 <!-- <li>Admin</li> -->
             </ul>
             <div class="resp-tabs-container hor_1">
                <div class="w3_agile_login">
<%--                 <c:url var="addAction" value="/add"></c:url>
 --%>      
                
  <form:form action="entry"  method="post"  modelAttribute="customer" class="agile_form">
             Email
             <form:input type="email" path="emailId" placeholder="your email id"  onblur="validateEmail(this);"  required="required" />
             Password
             <form:input type="password" placeholder="password" path="password" required="required" class="password" /> 
             
             <input type="submit" name="entry" value="LogIn" class="agileinfo" />
           </form:form>
            <!-- <div class="login_w3ls">
                 <a href="#">Forgot Password</a>
            </div> -->
            <div class="login_w3ls">
               <a href="register">Register</a>
              </div>
                 </div>
               
           
         </div>
         
         
        
 
         
 
 
             </div>
         </div>
      <!-- //Horizontal Tab -->
     </div>
   <!-- <div class="agileits_w3layouts_copyright text-center">
       <p>� 2017 Simple Login and Signup Form. All rights reserved | Design by <a href="//w3layouts.com/">W3layouts</a></p>
   </div> -->
 <!--tabs-->
 <script src="${pageContext.request.contextPath}/resources/js/easyResponsiveTabs.js"></script>
 <script type="text/javascript">
 $(document).ready(function() {
   //Horizontal Tab
   $('#parentHorizontalTab_agile').easyResponsiveTabs({
     type: 'default', //Types: default, vertical, accordion
     width: 'auto', //auto or any width like 600px
     fit: true, // 100% fit in a container
     tabidentify: 'hor_1', // The tab groups identifier
     activate: function(event) { // Callback function if tab is switched
       var $tab = $(this);
       var $info = $('#nested-tabInfo');
       var $name = $('span', $info);
       $name.text($tab.text());
       $info.show();
     }
   });
 });
 </script>
 <script type="text/javascript">
     window.onload = function () {
       document.getElementById("password1").onchange = validatePassword;
       document.getElementById("password2").onchange = validatePassword;
     }
     function validatePassword(){
       var pass2=document.getElementById("password2").value;
       var pass1=document.getElementById("password1").value;
       if(pass1!=pass2)
         document.getElementById("password2").setCustomValidity("Passwords Don't Match");
       else
         document.getElementById("password2").setCustomValidity('');
 
         //empty string means no validation error
     }
 
 </script>
 

  
      <a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>
  <!-- Uncomment below i you want to use a preloader -->
  <!-- <div id="preloader"></div> -->

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