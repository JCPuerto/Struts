<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ include file="include/JSTLEnvironmentSetup.jspf"%>

<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Results</title>
	</head>
	<body>
	
		<h:errors />
		
		<h:form action="/search">
		
			<table>
				<tr>
					<td align="right">
						<fmt:message key="label.search.name" bundle="${storeText}" />:
					</td>
					<td>
						<h:text property="name"/>
						<h:errors property="name" />
					</td>
				</tr>
				<tr>
					<td></td>
					<td>-- or --</td>
				</tr>
				<tr>
					<td align="right">
						<fmt:message key="label.search.ssNum" bundle="${storeText}" />:
					</td>
					<td>
						<h:text property="ssNum"/>(xxx-xx-xxxx)
					</td>
				</tr>
				<tr>
					<td></td>
					<td>
						<h:submit/>
					</td>
				</tr>
			</table>
		
		</h:form>
		
		<p>Testing C tags</p>
		
		<logic:present name="SearchForm" property="results">
			
			<hr width="100%" size="1">
			
			<bean:size id="size" name="SearchForm" property="results"/>
			
			<logic:equal name="size" value="0">
				<center><font color="red"><b>No Employees Found</b></font></center>
			</logic:equal>
			
			<logic:greaterThan name="size" value="0">
				<table border="1">
					<tr>
						<th>Name</th>
						<th>Social Security Number</th>
					</tr>
						<logic:iterate id="result" name="SearchForm" property="results">
							<tr>
								<td><bean:write name="result" property="name"/></td>
								<td><bean:write name="result" property="ssNum"/></td>
							</tr>
						</logic:iterate>
				</table>
			</logic:greaterThan>
			
		</logic:present>
		
		<hr>
			
		<c:if test="${SearchForm.results != null && fn:length(SearchForm.results) == 0}">
			<center><font color="red"><b>No Employees Found - JC</b></font></center>
		</c:if>

		<c:if test="${SearchForm.results != null && fn:length(SearchForm.results) > 0}">
			
			<table border="1">
				<tr>
					<th>Name</th>
					<th>Social Security Number</th>
				</tr>
				<c:forEach items="${SearchForm.results}" var="Employee">
					<tr>
						<td>${Employee.name}</td>
						<td>${Employee.ssNum}</td>
					</tr>
				</c:forEach>
			</table>
			
		</c:if>
	</body>
</html>