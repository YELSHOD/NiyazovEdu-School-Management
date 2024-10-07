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
<title>Пайдаланушылар тізімі</title>
</head>
<body >

<div class="container" >

<h2 style="padding: 30px">Сыныптар тізімі</h2>
<%@include file="businessMessage.jsp" %>
<table class="table bg-light text-dark">
  <thead>
    <tr>
      <th scope="col">Сынып </th>
      <th scope="col">Сынып туралы сипаттама</th>
      <th scope="col">Әрекет</th>
    </tr>
  </thead>
  <tbody>
  <c:forEach items="${list}" var="li" varStatus="u">
    <tr>     
      <td>${li.className}</td>
      <td>${li.description}</td>
      <td>      
      <a href="${pageContext.request.contextPath}/classEdit?id=${li.id}">Өзгерту</a>
      <a href="${pageContext.request.contextPath}/classDelete?id=${li.id}">Жою</a>
      </td>
    </tr>
   </c:forEach>
  </tbody>
</table>

</div>

</body>
</html>
