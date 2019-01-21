<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
* {box-sizing: border-box}

/* Set height of body and the document to 100% */
body, html {
  height: 100%;
  margin: 0;
  font-family: Arial;
}

/* Style tab links */
.tablink {
  background-color: #555;
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
  background-color: #777;
}

/* Style the tab content (and add height:100% for full page content) */
.tabcontent {
  color: rgb(0, 0, 0);
  display: none;
  padding: 100px 20px;
  height: 100%;
}

#Features {background-color: red;}
#Calculator {background-color: green;}
#Documents{background-color: blue;}
</style>
</head>
<body>

<button class="tablink" onclick="openPage('Features', this, 'red')"id="defaultOpen">Features</button>
<button class="tablink" onclick="openPage('Calculator', this, 'green')" >Calculator</button>
<button class="tablink" onclick="openPage('Documents', this, 'blue')">Documents</button>

<div id="Features" class="tabcontent">
  <h1>Features</h1>
  <p>
        <h2>Loan Term</h2>
        The maximum term of your home loan can be up to 30 years and it cannot extend beyond your retirement age or 60* years (whichever is earlier).
        
        *60 years for salaried individuals and 70 years for self-employed individuals. <br>
      
        <h2>Loan Amount</h2>
        You can get a home loan up to 90% of the cost of a chosen selected property for the loan requirement up to Rs. 30 Lakh*, depending upon the loan amount required.

Your home loan amount depends on your annual income and your ability to repay the loan. You can increase your home loan amount by adding an earning co-applicant.

Calculate your eligibility now
*For loan above Rs. 30 Lakh, the loan to value applicable will be as per United norms & policy guidelines.
<br>

<h2>Interest Rate & Charges</h2>
Your home loan interest rate starts from 10%* p.a. Know more about fees and charges (*T&C Apply) <br>
<br>
Modes of Repayment<br>
You can pay your home loan EMIs through:

Electronic Clearing Service (ECS)/ National Automated Clearing House(NACH)- based on standing instructions, given to your bank
Post Dated Cheques (PDCs) - Drawn on your salary/savings account. (Only for locations where ECS/NACH facility is not available.)
<br>

<h2>Tax Benefits</h2>
Your home loan makes you eligible for certain tax benefits* as per the prevailing laws. This means that you can save more money by claiming deductions in your income tax, against principal and interest amount repaid.

*As per Income Tax Act 1961 rules, the current applicable exemption under section 24(b) is Rs. 2,00,000/- for the interest amount paid in the financial year and up to Rs. 1,50,000/- (under section 80 C) for the principal amount repaid in the same year.
<br>



  </p>
</div>

<div id="Calculator" class="tabcontent">
  <h3>Calculator</h3>
  <p>Some news this fine day!</p> 
</div>

<div id="Documents" class="tabcontent">
  <h3>Documents</h3>
  <p>Get in touch, or swing by for a cup of coffee.</p>
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
   
</body>
</html> 
