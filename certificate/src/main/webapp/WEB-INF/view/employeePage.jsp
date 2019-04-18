<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>INFORMATION FORM</title>
</head>
<body>

  <h1>USER INFORMATION</h1><br>
  <button onclick="window.location.href='/certificate'">logout</button><br><br>
     <h4>Employee name: ${emp.empName}</h4>
     <h4>Employee Id: ${emp.emplId}</h4>

  <table border=1>
    <tr>
      <th>certificateName</th>
      <th>Certificate startDate</th>
      <th>Certificate endDate</th>
      <th>Certificate status</th>
    </tr>
    <c:forEach var="certificate" items="${emp.certificates}">
      <tr>
        <td>${certificate.certificateName}</td>
        <td>${certificate.startDate}</td>
        <td>${certificate.endDate}</td>
        <td>${certificate.status}</td>
      </tr>
    </c:forEach>
  </table>

</body>
</html>

</body>
</html>