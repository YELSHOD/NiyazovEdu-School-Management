<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="crt"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User List</title>
</head>
<body >

<div class="container" >

<h2 style="padding: 30px">Marks List according to the subject</h2>
<%@include file="businessMessage.jsp" %>
<table class="table bg-light text-dark">
  <thead>
    <tr>
      <th scope="col">Subjects</th>
      <th scope="col">Marks</th>   
      <th scope="col">studentName</th> 
      <th scope="col">studentId</th>  
    </tr>
  </thead>
  <tbody>
  <c:forEach items="${studentMarksheet}" var="li" varStatus="u">
    <tr>     
      <td>${li.subject}</td>
      <td>${li.mark}</td>
      <td>${li.studentName}</td>
      <td>${li.studentId}</td>
    </tr>
   </c:forEach>
  </tbody>
</table>

</div>

</body>
</html>