<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://www.springframework.org/tags/form" prefix="f" %>   
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>DETAILS</title>
</head>
<body>
<h1>Adding Details</h1>
<br>
<f:form action="addingRecord" method="POST" modelAttribute="emp" >
Employee Id:
<f:input type="text" path="empId" value="${certificate.empId}"/>
<f:errors path="empId"></f:errors>
<br>
Employee Name:
<f:input type="text" path="empName" value="${certificate.empName}"/>
<f:errors path="empName"></f:errors>
<br>
Certification Id:
<f:input type="text" path="certId" value="${certificate.certId}"/>
<f:errors path="certId"></f:errors>
<br>
Certification Name:
<f:input type="text" path="certName" value="${certificate.certName}"/>
<f:errors path="certId"></f:errors>
<br>
Due date:
<f:input type="date"   path="date" value="${certificate.date}"/>
<f:errors path="date"></f:errors>
<br>

Status:
<f:input type="text" path="status" value="${certificate.status}"/>
<f:errors path="status"></f:errors>
<br>
<input type="submit" value="Submit"/>
</f:form>


</body>
</html>