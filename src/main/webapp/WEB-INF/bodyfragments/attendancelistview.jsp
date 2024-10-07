<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    response.setContentType("text/html; charset=UTF-8");
    response.setCharacterEncoding("UTF-8");
%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="crt"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Оқушылар тізімі</title>
</head>
<body >

<div class="container" >

<h2 style="padding: 30px">Оқушылардың үлгерім тізімі</h2>
<%@include file="businessMessage.jsp" %>
<table class="table bg-light text-dark">
  <thead>
    <tr>
      <th scope="col">Сынып атауы</th>
      <th scope="col">Оқушы аты</th>
      <th scope="col">Күй</th>
       <c:choose>
     <c:when test="${sessionScope.user.userRole == 'Student'}">  
     </c:when>
     <c:otherwise>    
      <th scope="col">Әрекет</th>
       </c:otherwise>
     </c:choose>
      
    </tr>
  </thead>
  <tbody>
  <c:forEach items="${list}" var="li" varStatus="u">
    <tr>     
      <td>${li.className}</td>
      <td>${li.studentName}</td>
      <td>${li.status}</td>
      <td>   
      
        <c:choose>
     <c:when test="${sessionScope.user.userRole == 'Student'}">  
     </c:when>
     <c:otherwise>   
      <a href="${pageContext.request.contextPath}/attendanceEdit?id=${li.id}">Өзгерту</a>
      <a href="${pageContext.request.contextPath}/attendanceDelete?id=${li.id}">Жою</a>
       </c:otherwise>
     </c:choose>      
      </td>
    </tr>
   </c:forEach>
  </tbody>
</table>

</div>

</body>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
</html>
