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
   			<p>My salary is: <c:out value="${salary}"/><p>
		</c:if>
		
		<fmt:message key="SAQ_MINIACCOUNT_EMAIL" bundle="${storeText}" />
	</body>
</html>