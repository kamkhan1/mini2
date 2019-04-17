<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update Trainee</title>
</head>
<body>
	<h1>Assign a certification</h1>
	<c:url var="myAction" value="getDetails" />
		
	<f:form method="post" modelAttribute="emp" action="${myAction}">
		<table>
			<tr>
				<td>Please enter Employee ID:</td>
			</tr>
			<tr>
				<td><f:input path="empId" /></td>
			</tr>
			<tr>
				<td><input type="submit" value="Get employee" /></td>
			</tr>
		</table>
	</f:form>
<br>
<h4>${msg}</h4>
</body>
</html>