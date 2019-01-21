<%@ taglib uri="http://java.sun.com/jsp/jstl/core" 
prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" 
prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" 
prefix="form" %>
<%@ page session="false" %>

<html>
<head>
	<title>Customer Page</title>


</head>
<body>
<h1>
Registration for Customer.
</h1>
<c:url var="registerAction" value="/customer/add" ></c:url>
<form:form action="${registerAction}" 
	modelAttribute="customer">
	<c:if test="${!empty customer.customerName}"><br/>
		<form:label path="customerd">
				<spring:message text="customer ID"/>
			</form:label>
		<form:input path="customerId" readonly="true" 
			size="10"  disabled="true" />
			<form:hidden path="customerId" />
	</c:if>
	<br/>
	<br/>
			<form:label path="customerName">
				<spring:message text=" Name"/>
			</form:label>
	
		 <form:input path="customerName" />
		 
			
<br/>
<br/>
<br/>
	<br/>
			<form:label path="emailId">
				<spring:message text="Customer email"/>
			</form:label>
	
		 <form:input path="emailId" />

		<form:label path="password">
				<spring:message text="Password"/>
			</form:label>
		
		 <form:input path="password" type="password" /> 
		 <br/>
	<br/>
				 
		 		<form:label path="address.city">
				<spring:message text="City"/>
			</form:label>
	
		 <form:input path="address.city"  />
			
				<input type="submit"
					value="<spring:message 
					text="Submit"/>" />
	
		</form:form>
<br>

</body>
</html>