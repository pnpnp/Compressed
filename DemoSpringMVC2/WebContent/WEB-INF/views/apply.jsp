<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Apply Now</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="" name="keywords">
<meta content="" name="description">

<!-- Favicons -->
<link
	href="${pageContext.request.contextPath}/resources/img/favicon.png"
	rel="icon">
<link
	href="${pageContext.request.contextPath}/resources/img/apple-touch-icon.png"
	rel="apple-touch-icon">

<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,700,700i|Montserrat:300,400,500,700"
	rel="stylesheet">

<!-- Bootstrap CSS File -->
<link
	href="${pageContext.request.contextPath}/resources/lib/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Libraries CSS Files -->
<link
	href="${pageContext.request.contextPath}/resources/lib/font-awesome/css/font-awesome.min.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resources/lib/animate/animate.min.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resources/lib/ionicons/css/ionicons.min.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resources/lib/owlcarousel/assets/owl.carousel.min.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resources/lib/lightbox/css/lightbox.min.css"
	rel="stylesheet">

<!-- Main Stylesheet File -->
<link href="${pageContext.request.contextPath}/resources/css/style.css"
	rel="stylesheet">

<style>
* {
	box-sizing: border-box
}

/* Set height of body and the document to 100% */
body, html {
	height: 100%;
	margin: 0;
	font-family: Arial;
}

/* Style tab links */
.tablink {
	background-color: rgb(0, 0, 0);
	color: white;
	float: left;
	border: none;
	outline: none;
	cursor: pointer;
	padding: 14px 16px;
	font-size: 17px;
	width: 33.33%;
}

.tablink:hover {
	background-color: #222724;
}

/* Style the tab content (and add height:100% for full page content) */
.tabcontent {
	color: rgb(0, 0, 0);
	display: none;
	padding: 100px 20px;
	height: 100%;
}

#Features {
	background-color: rgb(255, 255, 255);
}

#Calculator {
	background-color: rgb(255, 255, 255);
}

#Documents {
	background-color: rgb(255, 255, 255);
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
				<h1>
					<a href="#intro" class="scrollto">United Home Loan</a>
				</h1>
				<!-- Uncomment below if you prefer to use an image logo -->
				<!-- <a href="#intro"><img src="img/logo.png" alt="" title="" /></a>-->
			</div>

			<nav id="nav-menu-container">
				<ul class="nav-menu">
					<li><a href="index1">Home</a></li>
					<li><a href="calculators1">Calculator</a></li>
					<li><a href="aboutus1">About Us</a></li>
					<li><a href="faq1">FAQ</a></li>
					<li><a href="profile">Profile</a></li>
					<li><a href="#">Logout</a></li>


				</ul>
			</nav>
		</div>
	</header>

	<!--==========================
    Intro Section
  ============================-->
	<section id="intro1">
		<br> <br> <br> <br> <br>


		<div class="box box-primary">
			<div class="box-header">
				<h2 class="text-center">Apply for Home Loan</h2>
				<div>
					<!-- /.box-header -->
					<button class="tablink" onclick="openPage('Features', this, 'red')"
						id="defaultOpen">Features</button>
					<button class="tablink"
						onclick="openPage('Calculator', this, 'green')">Calculator</button>
					<button class="tablink"
						onclick="openPage('Documents', this, 'blue')">Documents</button>

					<div id="Features" class="tabcontent">

						<p>
						<h3>Loan Term</h3>
						The maximum term of your home loan can be up to 30 years and it
						cannot extend beyond your retirement age or 60* years (whichever
						is earlier). *60 years for salaried individuals and 70 years for
						self-employed individuals. <br>
						<br>

						<h3>Loan Amount</h3>
						You can get a home loan up to 90% of the cost of a chosen selected
						property for the loan requirement up to Rs. 30 Lakh*, depending
						upon the loan amount required. Your home loan amount depends on
						your annual income and your ability to repay the loan. You can
						increase your home loan amount by adding an earning co-applicant.

						Calculate your eligibility now *For loan above Rs. 30 Lakh, the
						loan to value applicable will be as per United norms & policy
						guidelines. <br>
						<br>

						<h3>Interest Rate & Charges</h3>
						Your home loan interest rate starts from 10%* p.a. Know more about
						fees and charges (*T&C Apply) <br>
						<br>

						<h3>Modes of Repayment</h3>
						You can pay your home loan EMIs through: Electronic Clearing
						Service (ECS)/ National Automated Clearing House(NACH)- based on
						standing instructions, given to your bank Post Dated Cheques
						(PDCs) - Drawn on your salary/savings account. (Only for locations
						where ECS/NACH facility is not available.) <br>
						<br>

						<h3>Tax Benefits</h3>
						Your home loan makes you eligible for certain tax benefits* as per
						the prevailing laws. This means that you can save more money by
						claiming deductions in your income tax, against principal and
						interest amount repaid. *As per Income Tax Act 1961 rules, the
						current applicable exemption under section 24(b) is Rs. 2,00,000/-
						for the interest amount paid in the financial year and up to Rs.
						1,50,000/- (under section 80 C) for the principal amount repaid in
						the same year.

						</p>
					</div>

					<div id="Calculator" align="center" class="tabcontent">

						<p>

							<!-- <a href="eligibilitycalculator.html" class="btn-get-started scrollto">Eligibility Calculator</a>

          <a href="emicalculator.html" class="btn-get-started scrollto">EMI Calculator</a> -->

							<a href="eligibilitycalculator" class="btn btn-danger"
								role="button">Eligibility Calculator</a> &nbsp; &nbsp; <br>
							<br> <a href="emicalculator" class="btn btn-info"
								role="button">EMI Calculator</a> &nbsp; &nbsp; <br>
							<br>
							<br>
							<br>
							<br>
							<br>
							<br>
							<br>
							<br>


						</p>
					</div>

					<div id="Documents" class="tabcontent">

						<p>
						<h3>KYC Documents</h3>
						<ul>
							<li>ID & Address Proof (Any One Required)</li>
							<li>PAN card (Mandatory, if income is considered for loan
								eligibility calculation)</li>
							<li>Valid Passport</li>
							<li>Voter ID card</li>
							<li>Driving license</li>
							<li>Aadhar Card</li>

						</ul>

						<h3>Residence Proof (Any One Required)</h3>

						<ul>
							<li>Utility Bill: Electricity, Telephone, Postpaid mobile,
								Water bill etc.</li>
							<li>Ration card</li>
							<li>Letter from employer</li>
							<li>Bank statement /copy of Pass book reflecting address</li>
							<li>Valid Rent Agreement</li>
							<li>Sale Deed</li> *National Housing Bank (NHB) had introduced
							Know Your Customer (KYC) guidelines for housing finance
							companies. We request you to co-operate with us in complying with
							these guidelines.
						</ul>




						<h3>Income Documents</h3>

						<b>Salaried Individuals</b>
						<ul>
							<li>Salary slips for the last 2 months or salary
								certificate*</li>
							<li>Cash Salary – Income details on Company Letterhead</li>
							<li>Copy of bank statements for the past 3 months (salary
								account)</li> *If variable components like over time and incentives
							are reflected, then salary slips for the past 6 months are
							required.


						</ul>




						<b>Self-Employed Professional </b>

						<ul>
							<li>Certificate of qualification for professionals : CA,
								Doctors or Architects</li>
							<li>Copy of last two years’ income tax returns, along with
								computation of income</li>
							<li>Copy of last two years’ P/L account with all schedules
								and audited balance sheet, wherever applicable.</li>
							<li>VAT or Service Tax returns or TDS Certificate</li>
							<li>Bank statement for the last 6 months (Savings account,
								current account and O/D account)</li>
							<li>Self-Employed Non Professionals</li>
							<li>Copy of your last two years’ income tax returns, along
								with computation of income</li>
							<li>Copy of last two years’ P/L account with all schedules
								and audited balance sheet, wherever applicable</li>
							<li>VAT or Service Tax returns or TDS Certificate</li>
							<li>Bank statement for the last 6 months (Savings account,
								current account or an O/D account)</li>
						</ul>




						<h3>Property Documents</h3>

						<ul>
							<li>Allotment letter from builder</li>
							<li>Agreement of Sale</li>
							<li>Registration and stamp duty receipt</li>
							<li>Index- ii</li>
							<li>NOC from builder</li>
							<li>Own Contribution Receipt (OCR )</li>
							<li>All builder linked documents (Applicable for cases which
								are not approved or previously not funded by DHFL)</li>
							<li>Development Agreement</li>
							<li>Tripartite Agreement</li>
							<li>Partnership Deed</li>
							<li>Sale Deed</li>
							<li>Title Search Report</li>
							<li>NA order</li> Note: Original documents are required for
							verification purpose only


						</ul>






						</p>
					</div>



					<script>
function openPage(pageName,elmnt,color) {
  var i, tabcontent, tablinks;
  tabcontent = document.getElementsByClassName("tabcontent");
  for (i = 0; i < tabcontent.length; i++) {
    tabcontent[i].style.display = "none";
  }
  tablinks = document.getElementsByClassName("tablink");
  for (i = 0; i < tablinks.length; i++) {
    tablinks[i].style.backgroundColor = "";
  }
  document.getElementById(pageName).style.display = "block";
  elmnt.style.backgroundColor = color;
}

// Get the element with id="defaultOpen" and click on it
document.getElementById("defaultOpen").click();
</script>
	</section>
	<!-- #intro -->

	<main id="main"> <footer id="footer">

		<div class="footer-top">

			<div class="container">

				<div class="row">



					<div class="col-lg-3 col-md-6 footer-info">

						<h3>United Home Loans</h3>

						<p>
							We are here to guide you on <br>everything you need to know
							<br>about availing a home loan.
						</p>

					</div>



					<div class="col-lg-3 col-md-6 footer-links">

						<h4>Useful Links</h4>

						<ul>

							<li><i class="ion-ios-arrow-right"></i> <a href="#">Home</a></li>

							<li><i class="ion-ios-arrow-right"></i> <a href="#">Calculators</a></li>

							<li><i class="ion-ios-arrow-right"></i> <a href="#">About
									Us</a></li>

							<li><i class="ion-ios-arrow-right"></i> <a href="#">Terms
									of service</a></li>

							<li><i class="ion-ios-arrow-right"></i> <a href="#">Privacy
									policy</a></li>

						</ul>

					</div>



					<div class="col-lg-3 col-md-6 footer-contact">

						<h4>Contact Us</h4>

						<p>

							TTC Electronic Zone, <br> Mahape Road, <br> Navi
							Mumbai, <br> Maharashtra 400710, <br>India <br> <br>

							<strong>Phone:</strong> 022 6795 4545<br> <strong>Email:</strong>
							unitedhl@gmail.com<br>

						</p>



						<div class="social-links">

							<a href="#" class="twitter"><i class="fa fa-twitter"></i></a> <a
								href="#" class="facebook"><i class="fa fa-facebook"></i></a> <a
								href="#" class="instagram"><i class="fa fa-instagram"></i></a> <a
								href="#" class="google-plus"><i class="fa fa-google-plus"></i></a>

							<a href="#" class="linkedin"><i class="fa fa-linkedin"></i></a>

						</div>



					</div>



					<div class="col-lg-3 col-md-6 footer-newsletter">

						<h4>Our Newsletter</h4>

						<p>Subscribe to our Newsletter for regular updates.</p>

						<form action="" method="post">

							<input type="email" name="email"><input type="submit"
								value="Subscribe">

						</form>

					</div>



				</div>

			</div>

		</div>



		<div class="container">

			<div class="copyright">

				Disclaimer - "As regards deposit taking activity of the company, the
				viewers may refer to the advertisement in the newspaper /
				information furnished in the application form for soliciting public
				deposits; published on June 28, 2018 in the Free Press Journal and
				in Navshakti, Mumbai, respectively. The Company is having a valid
				Certificate of Registration dated 31/07/2001 issued by the National
				Housing Bank under Section 29A of the National Housing Bank Act,
				1987. However, the National Housing Bank does not accept any
				responsibility or guarantee about the present position as to the
				financial soundness of the company or for the correctness of any of
				the statements or representations made or opinions expressed by the
				company and for repayment of deposits / discharge of the liabilities
				by the company." <br> <br> *The information mentioned
				herein is subject to change without prior notice. <br> Please
				visit your nearest United branch for detailed information on our
				various products and changes, if any. Terms and conditions apply. <br>
				<br> &copy; Copyright <strong>United Home Loans</strong>. All
				Rights Reserved

			</div>

			<div class="credits"></div>

		</div>

	</footer><!-- #footer --> <a href="#" class="back-to-top"><i
		class="fa fa-chevron-up"></i></a> <!-- Uncomment below i you want to use a preloader -->

	<!-- <div id="preloader"></div> --> <a href="#" class="back-to-top"><i
		class="fa fa-chevron-up"></i></a> <!-- Uncomment below i you want to use a preloader -->
	<!-- <div id="preloader"></div> --> <!-- JavaScript Libraries --> <script
		src="${pageContext.request.contextPath}/resources/lib/jquery/jquery.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/lib/jquery/jquery-migrate.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/lib/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/lib/easing/easing.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/lib/superfish/hoverIntent.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/lib/superfish/superfish.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/lib/wow/wow.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/lib/waypoints/waypoints.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/lib/counterup/counterup.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/lib/owlcarousel/owl.carousel.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/lib/isotope/isotope.pkgd.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/lib/lightbox/js/lightbox.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/lib/touchSwipe/jquery.touchSwipe.min.js"></script>
	<!-- Contact Form JavaScript File --> <script
		src="${pageContext.request.contextPath}/resources/contactform/contactform.js"></script>

	<!-- Template Main Javascript File --> <script
		src="${pageContext.request.contextPath}/resources/js/main.js"></script>
</body>
</html>
