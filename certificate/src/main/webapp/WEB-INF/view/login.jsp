<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri = "http://www.springframework.org/tags/form" prefix = "f" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
</head>
<body>
<h2>Certificate Management System </h2>
<br>
<br>
<h2>Login</h2>

<f:form method= "POST" action = "operations" modelAttribute = "admin" >
User Name:
<f:input type = "text" path="empId"/>
<f:errors></f:errors>
<br>
Password: 
<f:input type = "password" path="password"/>
<f:errors></f:errors>
<br>

<input type = "submit" value= "Login"/>


</f:form>
<br>
<h5>${msg}</h5>

	

</body>
</html>