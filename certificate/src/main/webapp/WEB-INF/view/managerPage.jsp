<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://www.springframework.org/tags/form" prefix = "f" %>
 <%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
  

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<center>
 <table border=1>
        <tr>
            <th>Empoyee id</th>
            <th>employee Name</th>
            <th>role</th>
          
        </tr>
        <c:forEach var="getAllEmployee" items="${elist}">
            <tr>
                <td>${getAllEmployee.empId}</td>
                <td>${getAllEmployee.empName}</td>
                <td>${getAllEmployee.role}</td>
                
               
            </tr>
        </c:forEach>
        
            
    </table>
    <br>
    <a href="employee">Get certification detail</a>
    <a href="assign">Assign a certification to an employee</a>


</center>


</body>
</html>