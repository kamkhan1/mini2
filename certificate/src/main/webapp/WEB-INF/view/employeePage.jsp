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
     <h4>Employee name: ${usr.empName}</h4>
     <h4>Employee Id: ${usr.empId}</h4>

  <table border=1>
    <tr>
      <th>Certificate Name</th>
      
      <th>Certification Due Date</th>
      <th>Certificate status</th>
    </tr>
    
      <tr>
        <td>${usr.certName}</td>
       
        <td>${usr.date}</td>
        <td>${usr.status}</td>
      </tr>
    
  </table>

</body>
</html>

</body>
</html>