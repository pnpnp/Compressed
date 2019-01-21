<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Register</title>
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





<script type="text/javascript">
  function ValidatePAN()
  {
     var pan_no = document.getElementById("pan");
    
   if (pan_no.value != "") {
              PanNo = pan_no.value;
              var panPattern = /^([a-zA-Z]{5})(\d{4})([a-zA-Z]{1})$/;
              if (PanNo.search(panPattern) == -1) {
                  alert("Invalid Pan No");
                  pan_no.focus();
                  pan_no.value='';
                  return false;
              }
            
          }
  }
  </script>

<script type="text/javascript">
    window.onload= function(){
    var txtPassword = document.getElementById("txtPassword");
    var txtConfirmPassword = document.getElementById("txtConfirmPassword");
    txtPassword.onchange = ConfirmPassword;
    txtConfirmPassword.onkeyup=ConfirmPassword;
  
    function ConfirmPassword(){
         txtConfirmPassword.setCustomValidity("");
          if(txtPassword.value != txtConfirmPassword.value) {
              txtConfirmPassword.setCustomValidity("Both passwords have to be same")
         
          } 
        }
    }
    </script>

<script type="text/javascript">
  function AadharValidate() {
      var aadhar = document.getElementById("txtAadhar").value;
      var adharcardTwelveDigit = /^\d{12}$/;
      var adharSixteenDigit = /^\d{16}$/;
      if (aadhar != '') {
          if (aadhar.match(adharcardTwelveDigit)) {
              return true;
          }
          else if (aadhar.match(adharSixteenDigit)) {
              return true;
          }
          else {
              alert("Enter valid Aadhar Number");
              return false;
          }
      }
  }
</script>

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

<script>


function CalculateEMI()
{
  var p = document.getElementById('loanAmount').value;
  var n = document.getElementById('tenure').value;
  var r = 0.007;
  var emi = p * r * (((1+r)^n)/ ((1+r)^(n-1))) ;
  document.getElementById("emi").innerHTML = emi;

}



function Checker()
{	

var monthlyIncome = document.getElementById('salary').value;
var maxAmount = 60 * (0.6 * monthlyIncome) ;
var loanAmount = document.getElementById('loanAmount').value;
	
if (loanAmount > maxAmount)
			{
			 alert("Loan Amount should be less than Maximum Amount");
			 document.getElementById("loanAmount").value = "";
			 document.getElementById("emi").value = "";
			}
	}


</script>

<script>


function CalculateEligibility()
{
	/* document.write(5 + 6);
 */
  var monthlyIncome = document.getElementById('salary').value;
  var maxAmount = 60 * (0.6 * monthlyIncome) ;
  document.getElementById("demo").innerHTML = maxAmount;

}

</script>


</head>

<body>

	<!--==========================
    Header
  ============================-->
	<header id="header">
		<div class="container-fluid">

			<div id="logo" class="pull-left">
				<h1>
					<a href="#intro" class="scrollto">United Home Loans</a>
				</h1>
				<!-- Uncomment below if you prefer to use an image logo -->
<!-- 				<a href="#intro"><img src="img/logo.png" alt="" title="" /></a>
 -->			</div>

			<nav id="nav-menu-container">
				<ul class="nav-menu">
					<li><a href="">Home</a></li>
					<li><a href="calculators">Calculators</a></li>
					<li><a href="aboutus">About Us</a></li>
					<li><a href="faq">FAQ</a></li>
					<li><a href="login">Login</a></li>
					<!-- <li class="menu-has-children"><a href="">Drop Down</a>
            <ul>
              <li><a href="#">Drop Down 1</a></li>
              <li><a href="#">Drop Down 3</a></li>
              <li><a href="#">Drop Down 4</a></li>
              <li><a href="#">Drop Down 5</a></li>
            </ul>
          </li> -->
					<!-- <li><a href="#contact">Contact</a></li> -->
				</ul>
			</nav>
			<!-- #nav-menu-container -->
		</div>
	</header>
	<!-- #header -->

	<!--==========================
    Intro Section
  ============================-->
	<section id="intro">
		<br> <br> <br> <br> <br>

		<h2 class="text-center">Register</h2>

		<%-- <c:url var="addAction" value="/add"></c:url>
 --%>

		<form:form action="add" method="post" modelAttribute="customer">
		
		<h3 align="center">Personal Details: </h3>
		
			<table width="500" cell-padding=10 align="center">
				<tr>
					<td colspan="2"></td>
				</tr>
				<tr>
					<td width="300">First Name</td>
					<td width="300"><form:input type="text"
							placeholder="Enter your First Name" path="customerFirstName"
							pattern="[a-z A-Z]*" required="required" /></td>
				</tr>

				<tr>
					<td width="300">Middle Name</td>
					<td width="300"><form:input type="text"
							placeholder="Enter your Middle Name" path="customerMiddleName"
							pattern="[a-z A-Z]*" required="required" /></td>
				</tr>


				<tr>
					<td width="300">Last Name</td>
					<td width="300"><form:input type="text"
							placeholder="Enter your Last Name" path="customerLastName"
							pattern="[a-z A-Z]*" required="required" /></td>
				</tr>
				<tr>
					<td>Email ID</td>
					<td><form:input type="email" placeholder="Enter your Email id"
							path="emailId" onblur="validateEmail(this);" required="required" /></td>
				</tr>
				<tr>
					<td>Password</td>
					<td><form:input type="password" path="password"
							id="txtPassword" name="txtPassword" placeholder="Password"
							pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
							title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters"
							required="required" /></td>
				</tr>
				<tr>
					<td>Confirm Password</td>
					<td><form:input type="password" path=""
							id="txtConfirmPassword" name="txtConfirmPassword"
							placeholder="Re-enter Password"
							pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" required="required" /></td>
				</tr>



				<tr>
					<td>Mobile no</td>
					<td><form:input path="mobileNo" pattern="[0-9]{1}[0-9]{9}"
						 type="number" name="Mobile Number"
							placeholder="Mobile Number" />
				</tr>

				  <tr>
            <td>Date Of Birth</td>
            <td><form:input type="number" placeholder="DD/MM/YYYY" path="birthDate"  required="required" /></td>
          </tr> 

				<tr>
					<td height="23">Select your Gender</td>
					<td>Male<form:radiobutton path="gender" value="Male"
							required="required" /> Female<form:radiobutton path="gender"
							value="Female" />
					</td>
				</tr>


				<tr>
					<td width="300">Enter PAN</td>
					<td width="300"><form:input placeholder="PAN Number"
							onblur='ValidatePAN(this)' type="text" path="panNo" name="pan"
							id="pan" required="required" /></td>

				</tr>







				<tr>
					<td width="300">Enter your Aadhar no</td>
					<td width="300"><form:input type="text" id="txtAadhar"
							placeholder="12 digit Aadhar Number" onblur="AadharValidate();"
							path="aadharNo" required="required" /></td>
				</tr>

				<!--  <tr>
         <td>Select your DOB</td>
          <td>

              <input type="date" id="start" name="trip-start"
              value="2018-07-22"
              min="1900-12-31" max="2018-12-31">
         
        </td>
        </tr>  -->

				<tr>
					<td width="300">Country Name</td>
					<td width="300"><select name="country">
							<option value="Afghanistan">Afghanistan</option>
							<option value="Albania">Albania</option>
							<option value="Algeria">Algeria</option>
							<option value="American Samoa">American Samoa</option>
							<option value="Andorra">Andorra</option>
							<option value="Angola">Angola</option>
							<option value="Anguilla">Anguilla</option>
							<option value="Antigua &amp; Barbuda">Antigua &amp;
								Barbuda</option>
							<option value="Argentina">Argentina</option>
							<option value="Armenia">Armenia</option>
							<option value="Aruba">Aruba</option>
							<option value="Australia">Australia</option>
							<option value="Austria">Austria</option>
							<option value="Azerbaijan">Azerbaijan</option>
							<option value="Bahamas">Bahamas</option>
							<option value="Bahrain">Bahrain</option>
							<option value="Bangladesh">Bangladesh</option>
							<option value="Barbados">Barbados</option>
							<option value="Belarus">Belarus</option>
							<option value="Belgium">Belgium</option>
							<option value="Belize">Belize</option>
							<option value="Benin">Benin</option>
							<option value="Bermuda">Bermuda</option>
							<option value="Bhutan">Bhutan</option>
							<option value="Bolivia">Bolivia</option>
							<option value="Bonaire">Bonaire</option>
							<option value="Bosnia &amp; Herzegovina">Bosnia &amp;
								Herzegovina</option>
							<option value="Botswana">Botswana</option>
							<option value="Brazil">Brazil</option>
							<option value="British Indian Ocean Ter">British Indian
								Ocean Ter</option>
							<option value="Brunei">Brunei</option>
							<option value="Bulgaria">Bulgaria</option>
							<option value="Burkina Faso">Burkina Faso</option>
							<option value="Burundi">Burundi</option>
							<option value="Cambodia">Cambodia</option>
							<option value="Cameroon">Cameroon</option>
							<option value="Canada">Canada</option>
							<option value="Canary Islands">Canary Islands</option>
							<option value="Cape Verde">Cape Verde</option>
							<option value="Cayman Islands">Cayman Islands</option>
							<option value="Central African Republic">Central African
								Republic</option>
							<option value="Chad">Chad</option>
							<option value="Channel Islands">Channel Islands</option>
							<option value="Chile">Chile</option>
							<option value="China">China</option>
							<option value="Christmas Island">Christmas Island</option>
							<option value="Cocos Island">Cocos Island</option>
							<option value="Colombia">Colombia</option>
							<option value="Comoros">Comoros</option>
							<option value="Congo">Congo</option>
							<option value="Cook Islands">Cook Islands</option>
							<option value="Costa Rica">Costa Rica</option>
							<option value="Cote DIvoire">Cote D'Ivoire</option>
							<option value="Croatia">Croatia</option>
							<option value="Cuba">Cuba</option>
							<option value="Curaco">Curacao</option>
							<option value="Cyprus">Cyprus</option>
							<option value="Czech Republic">Czech Republic</option>
							<option value="Denmark">Denmark</option>
							<option value="Djibouti">Djibouti</option>
							<option value="Dominica">Dominica</option>
							<option value="Dominican Republic">Dominican Republic</option>
							<option value="East Timor">East Timor</option>
							<option value="Ecuador">Ecuador</option>
							<option value="Egypt">Egypt</option>
							<option value="El Salvador">El Salvador</option>
							<option value="Equatorial Guinea">Equatorial Guinea</option>
							<option value="Eritrea">Eritrea</option>
							<option value="Estonia">Estonia</option>
							<option value="Ethiopia">Ethiopia</option>
							<option value="Falkland Islands">Falkland Islands</option>
							<option value="Faroe Islands">Faroe Islands</option>
							<option value="Fiji">Fiji</option>
							<option value="Finland">Finland</option>
							<option value="France">France</option>
							<option value="French Guiana">French Guiana</option>
							<option value="French Polynesia">French Polynesia</option>
							<option value="French Southern Ter">French Southern Ter</option>
							<option value="Gabon">Gabon</option>
							<option value="Gambia">Gambia</option>
							<option value="Georgia">Georgia</option>
							<option value="Germany">Germany</option>
							<option value="Ghana">Ghana</option>
							<option value="Gibraltar">Gibraltar</option>
							<option value="Great Britain">Great Britain</option>
							<option value="Greece">Greece</option>
							<option value="Greenland">Greenland</option>
							<option value="Grenada">Grenada</option>
							<option value="Guadeloupe">Guadeloupe</option>
							<option value="Guam">Guam</option>
							<option value="Guatemala">Guatemala</option>
							<option value="Guinea">Guinea</option>
							<option value="Guyana">Guyana</option>
							<option value="Haiti">Haiti</option>
							<option value="Hawaii">Hawaii</option>
							<option value="Honduras">Honduras</option>
							<option value="Hong Kong">Hong Kong</option>
							<option value="Hungary">Hungary</option>
							<option value="Iceland">Iceland</option>
							<option value="India">India</option>
							<option value="Indonesia">Indonesia</option>
							<option value="Iran">Iran</option>
							<option value="Iraq">Iraq</option>
							<option value="Ireland">Ireland</option>
							<option value="Isle of Man">Isle of Man</option>
							<option value="Israel">Israel</option>
							<option value="Italy">Italy</option>
							<option value="Jamaica">Jamaica</option>
							<option value="Japan">Japan</option>
							<option value="Jordan">Jordan</option>
							<option value="Kazakhstan">Kazakhstan</option>
							<option value="Kenya">Kenya</option>
							<option value="Kiribati">Kiribati</option>
							<option value="Korea North">Korea North</option>
							<option value="Korea Sout">Korea South</option>
							<option value="Kuwait">Kuwait</option>
							<option value="Kyrgyzstan">Kyrgyzstan</option>
							<option value="Laos">Laos</option>
							<option value="Latvia">Latvia</option>
							<option value="Lebanon">Lebanon</option>
							<option value="Lesotho">Lesotho</option>
							<option value="Liberia">Liberia</option>
							<option value="Libya">Libya</option>
							<option value="Liechtenstein">Liechtenstein</option>
							<option value="Lithuania">Lithuania</option>
							<option value="Luxembourg">Luxembourg</option>
							<option value="Macau">Macau</option>
							<option value="Macedonia">Macedonia</option>
							<option value="Madagascar">Madagascar</option>
							<option value="Malaysia">Malaysia</option>
							<option value="Malawi">Malawi</option>
							<option value="Maldives">Maldives</option>
							<option value="Mali">Mali</option>
							<option value="Malta">Malta</option>
							<option value="Marshall Islands">Marshall Islands</option>
							<option value="Martinique">Martinique</option>
							<option value="Mauritania">Mauritania</option>
							<option value="Mauritius">Mauritius</option>
							<option value="Mayotte">Mayotte</option>
							<option value="Mexico">Mexico</option>
							<option value="Midway Islands">Midway Islands</option>
							<option value="Moldova">Moldova</option>
							<option value="Monaco">Monaco</option>
							<option value="Mongolia">Mongolia</option>
							<option value="Montserrat">Montserrat</option>
							<option value="Morocco">Morocco</option>
							<option value="Mozambique">Mozambique</option>
							<option value="Myanmar">Myanmar</option>
							<option value="Nambia">Nambia</option>
							<option value="Nauru">Nauru</option>
							<option value="Nepal">Nepal</option>
							<option value="Netherland Antilles">Netherland Antilles</option>
							<option value="Netherlands">Netherlands (Holland,
								Europe)</option>
							<option value="Nevis">Nevis</option>
							<option value="New Caledonia">New Caledonia</option>
							<option value="New Zealand">New Zealand</option>
							<option value="Nicaragua">Nicaragua</option>
							<option value="Niger">Niger</option>
							<option value="Nigeria">Nigeria</option>
							<option value="Niue">Niue</option>
							<option value="Norfolk Island">Norfolk Island</option>
							<option value="Norway">Norway</option>
							<option value="Oman">Oman</option>
							<option value="Pakistan">Pakistan</option>
							<option value="Palau Island">Palau Island</option>
							<option value="Palestine">Palestine</option>
							<option value="Panama">Panama</option>
							<option value="Papua New Guinea">Papua New Guinea</option>
							<option value="Paraguay">Paraguay</option>
							<option value="Peru">Peru</option>
							<option value="Phillipines">Philippines</option>
							<option value="Pitcairn Island">Pitcairn Island</option>
							<option value="Poland">Poland</option>
							<option value="Portugal">Portugal</option>
							<option value="Puerto Rico">Puerto Rico</option>
							<option value="Qatar">Qatar</option>
							<option value="Republic of Montenegro">Republic of
								Montenegro</option>
							<option value="Republic of Serbia">Republic of Serbia</option>
							<option value="Reunion">Reunion</option>
							<option value="Romania">Romania</option>
							<option value="Russia">Russia</option>
							<option value="Rwanda">Rwanda</option>
							<option value="St Barthelemy">St Barthelemy</option>
							<option value="St Eustatius">St Eustatius</option>
							<option value="St Helena">St Helena</option>
							<option value="St Kitts-Nevis">St Kitts-Nevis</option>
							<option value="St Lucia">St Lucia</option>
							<option value="St Maarten">St Maarten</option>
							<option value="St Pierre &amp; Miquelon">St Pierre &amp;
								Miquelon</option>
							<option value="St Vincent &amp; Grenadines">St Vincent
								&amp; Grenadines</option>
							<option value="Saipan">Saipan</option>
							<option value="Samoa">Samoa</option>
							<option value="Samoa American">Samoa American</option>
							<option value="San Marino">San Marino</option>
							<option value="Sao Tome &amp; Principe">Sao Tome &amp;
								Principe</option>
							<option value="Saudi Arabia">Saudi Arabia</option>
							<option value="Senegal">Senegal</option>
							<option value="Serbia">Serbia</option>
							<option value="Seychelles">Seychelles</option>
							<option value="Sierra Leone">Sierra Leone</option>
							<option value="Singapore">Singapore</option>
							<option value="Slovakia">Slovakia</option>
							<option value="Slovenia">Slovenia</option>
							<option value="Solomon Islands">Solomon Islands</option>
							<option value="Somalia">Somalia</option>
							<option value="South Africa">South Africa</option>
							<option value="Spain">Spain</option>
							<option value="Sri Lanka">Sri Lanka</option>
							<option value="Sudan">Sudan</option>
							<option value="Suriname">Suriname</option>
							<option value="Swaziland">Swaziland</option>
							<option value="Sweden">Sweden</option>
							<option value="Switzerland">Switzerland</option>
							<option value="Syria">Syria</option>
							<option value="Tahiti">Tahiti</option>
							<option value="Taiwan">Taiwan</option>
							<option value="Tajikistan">Tajikistan</option>
							<option value="Tanzania">Tanzania</option>
							<option value="Thailand">Thailand</option>
							<option value="Togo">Togo</option>
							<option value="Tokelau">Tokelau</option>
							<option value="Tonga">Tonga</option>
							<option value="Trinidad &amp; Tobago">Trinidad &amp;
								Tobago</option>
							<option value="Tunisia">Tunisia</option>
							<option value="Turkey">Turkey</option>
							<option value="Turkmenistan">Turkmenistan</option>
							<option value="Turks &amp; Caicos Is">Turks &amp; Caicos
								Is</option>
							<option value="Tuvalu">Tuvalu</option>
							<option value="Uganda">Uganda</option>
							<option value="Ukraine">Ukraine</option>
							<option value="United Arab Erimates">United Arab
								Emirates</option>
							<option value="United Kingdom">United Kingdom</option>
							<option value="United States of America">United States
								of America</option>
							<option value="Uraguay">Uruguay</option>
							<option value="Uzbekistan">Uzbekistan</option>
							<option value="Vanuatu">Vanuatu</option>
							<option value="Vatican City State">Vatican City State</option>
							<option value="Venezuela">Venezuela</option>
							<option value="Vietnam">Vietnam</option>
							<option value="Virgin Islands (Brit)">Virgin Islands
								(Brit)</option>
							<option value="Virgin Islands (USA)">Virgin Islands
								(USA)</option>
							<option value="Wake Island">Wake Island</option>
							<option value="Wallis &amp; Futana Is">Wallis &amp;
								Futana Is</option>
							<option value="Yemen">Yemen</option>
							<option value="Zaire">Zaire</option>
							<option value="Zambia">Zambia</option>
							<option value="Zimbabwe">Zimbabwe</option>
					</select>
				</tr>
				
				<tr>
					<td width="300">State</td>
					<td width="300"><form:input placeholder="State"
							type="text" path="address.state"
							name="state" id="state" required="required" /></td>

				</tr>
				
					<tr>
					<td width="300">City</td>
					<td width="300"><form:input placeholder="City"
							type="text" path="address.city"
							name="city" id="city" required="required" /></td>

				</tr>



				
				
				
</table> <br>

<table width="500" cell-padding=10 align="center">
<h3 align="center">Property Details:</h3>
</table>

<table width="500" cell-padding=10 align="center">

<tr>
					<td width="300">Property Name</td>
					<td width="300"><form:input placeholder="Enter Property Name"
							type="text" path="property.name"
							name="name" id="" required="required" /></td>

				</tr>

			<tr>
					<td width="300">Property Location</td>
					<td width="300"><form:input placeholder="Enter Property Location"
							type="text" path="property.location"
							name="loaction" id="loaction" required="required" /></td>

				</tr>
			
			
			<tr>
					<td width="300">Estimated Cost</td>
					<td width="300"><form:input placeholder="Enter Property Cost"
							type="number" path="property.cost" name="cost" id="cost"
							onfocus="this.value=''" required="required" /></td>

				</tr>
	</table> <br>

<table width="500" cell-padding=10 align="center">
<h3 align="center">Employment Details:</h3>
</table>

<table width="500" cell-padding=10 align="center">
				<tr>
					<td width="300">Type of Employment</td>
					<td>Salaried<form:radiobutton path="customerDetails.typeOfEmp"
							value="salaried" required="required" /> Self Employed <form:radiobutton
							path="customerDetails.typeOfEmp" value="selfEmployed" />
					</td>
				</tr>

				<tr>
					<td width="300">Organization Type</td>
					<td>Government<form:radiobutton
							path="customerDetails.organizationType" value="government"
							required="required" /> Private <form:radiobutton
							path="customerDetails.organizationType" value="private" />
					</td>
				</tr>

				<tr>
					<td width="300">Retirement Age</td>
					<td width="300"><form:input placeholder="Enter Retirement Age"
							type="number" path="customerDetails.retirementAge"
							name="retirementAge" id="retirementAge" onfocus="this.value=''"
							required="required" /></td>

				</tr>


				<tr>
					<td width="300">Employer Name</td>
					<td width="300"><form:input placeholder="Organization Name"
							type="text" path="customerDetails.employerName"
							name="employerName" id="employerName" required="required" /></td>

				</tr>

				<tr>
					<td width="300">Current Monthly Salary</td>
					<td width="300"><form:input placeholder="Salary" type="number"
							path="customerDetails.salary" name="salary" id="salary"
							onfocus="this.value=''" required="required" /></td>

				</tr>

				<tr>
					<td width="300">Maximum Amount</td>
					<td width="300">
						<!-- <p id="demo"></p> --> <form:label type="number"
							path="customerDetails.maxAmount" name="maxAmount" id="demo"
							required="required" readonly="true" />
					</td>

				</tr>
				<br>
				<tr>
					<td colspan="2" align="center">
						<button type="button" class="btn btn-success"
							onclick='CalculateEligibility();'>Calculate Eligibility
						</button>
				</tr>
				
				
				</table>
				
				<table> <br>
				
			<h3 align="center">Loan Details:</h3>	
			
				</table>
				
				
				<table width="500" cell-padding=10 align="center">

				<tr>
					<td width="300">Loan Amount</td>
					<td width="300"><form:input placeholder="Enter loan amount"
							type="number" path="loanAmount" name="loanAmount" id="loanAmount"
							onfocus="this.value=''" required="required" /></td>

				</tr>

				<tr>
					<td width="300">Tenure</td>
					<td width="300"><form:input placeholder="Tenure in years"
							type="number" path="customerDetails.tenure" name="tenure"
							id="tenure" onfocus="this.value=''" required="required" /></td>

				</tr>

				<tr>
					<td width="300">Rate of Interest</td>
					<td width="300"><form:input value="8.5" type="number"
							path="customerDetails.interestRate" name="interestRate"
							id="interestRate" required="required" readonly="true" /></td>

				</tr>

				<tr>
					<td width="300">Monthly EMI</td>
					<td width="300">
						<!-- 					<p id="demo1"></p>
 --> <form:label type="number" path="customerDetails.emi" name="emi"
							id="emi" required="required" readonly="true" />
					</td>

				</tr>


				<!-- <tr>
					<td colspan="2" align="center"><button name="calcElig"
						onclick='CalculateEligibility();' value="Calculate Eligibility"></button></td>
				</tr> -->

				

				<tr>
					<td colspan="2" align="center">
						<button type="button" class="btn btn-success"
							onclick='CalculateEMI();Checker();'>Calculate EMI</button>
				</tr>

				<!-- <tr>
					<td colspan="2" align="center"><input type="submit" name="calcEMI"
						onclick='CalculateEMI;' value="Calculate EMI" /></td>
				</tr> -->

				<tr>
					<td colspan="2" align="center"><input type="submit" name="add"
						value="Sign Up and Apply" onclick='Checker();' /></td>
				</tr>


			</table>
		</form:form>





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