<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ include file="include/JSTLEnvironmentSetup.jspf"%>

<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Struts Web</title>
	</head>
	<body>
		<c:set var="salary" scope="session" value="${2000*2}"/>
		
		<c:if test="${salary > 2000}">
   			<p>My salary is: ${salary}<p>
		</c:if>

		<br />
		<br />
		<br />
		
		<h1>Test</h1>
		<br>
		http://www.java2s.com/Code/Java/J2EE/StrutsFrameworkASampleStrutsApplication.htm
		<hr width="100%">

		&#149; Add an Employee<br>
		&#149; <h:link forward="search">Search for Employees</h:link>
		<br>
	</body>
</html>