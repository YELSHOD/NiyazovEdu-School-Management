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
<title>?????????????? ??????</title>
</head>
<body >

<div class="container" >

<h2 style="padding: 30px">Бағалар тізімі</h2>
<%@include file="businessMessage.jsp" %>
<table class="table bg-light text-dark">
  <thead>
    <tr>
      <th scope="col">Пәндер</th>
      <th scope="col">Бағалар</th>
      <th scope="col">Оқушы аты-жөні</th>
      <th scope="col">Оқушы идентификаторы</th>
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
