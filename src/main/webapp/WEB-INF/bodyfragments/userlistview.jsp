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

<h2 style="padding: 30px">Пайдаланушылар тізімі</h2>
<sf:form method="post" action="${pageContext.request.contextPath}/searchUser" modelAttribute="form">
            <sf:input type="hidden" id="id" class="form-control form-control-lg" path="id" name="id" value="${form.id}"/>
              <div class="row">
                <div class="col-md-6 mb-4">
                  <div class="form-outline">   
                  <s:bind path="firstName">
                  <font color="red" style="font-size: 15px"><sf:errors path="${status.expression}" /></font>
                  <sf:input type="text" id="firstName" class="form-control" path="firstName" name="firstName"/>
                  </s:bind>      
                  <label class="form-label" for="genre"> Пайдаланушы атымен іздеу</label>
                  </div>				 
                </div>              
              </div>

   			 <div>
                <input class="btn btn-primary" type="submit" value="Іздеу" name="operation"/>
                <input class="btn btn-primary" type="submit" value="Қалпына келтіру" name="operation"/>
              </div>   

           </sf:form>



<h2 style="padding: 30px">Пайдаланушылар тізімі</h2>
<%@include file="businessMessage.jsp" %>
<table class="table bg-light text-dark">
  <thead>
    <tr>
      <th scope="col">Аты</th>
      <th scope="col">Тегі</th>
      <th scope="col">Почта мекенжайы</th>
      <th scope="col">Телефон нөмірі</th>
      <th scope="col">Туылған күні</th>
      <th scope="col">Әрекет</th>
    </tr>
  </thead>
  <tbody>
  <c:forEach items="${list}" var="li" varStatus="u">
    <tr>     
      <td>${li.firstName}</td>
      <td>${li.lastName}</td>
      <td>${li.email}</td>
      <td>${li.phoneNumber}</td>
      <td>${li.dob}</td>
      <td>      
      <a href="${pageContext.request.contextPath}/userEdit?id=${li.id}">Өзгерту</a>
      <a href="${pageContext.request.contextPath}/userDelete?id=${li.id}">Жою</a>
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
</html>
