<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    response.setContentType("text/html; charset=UTF-8");
    response.setCharacterEncoding("UTF-8");
%>
<%@page import="java.text.DateFormat"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="crt"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@page import="java.util.Date"%>

<body>
<section class="vh-100 gradient-custom ">
  <div class="container py-5 h-100">
    <div class="row justify-content-center align-items-center h-100">
      <div class="col-12 col-lg-9 col-xl-7">
        <div class="card shadow-2-strong card-registration" style="border-radius: 15px;">
          <div class="card-body p-4 p-md-5">
           <%@include file="businessMessage.jsp" %>
            <h3 class="mb-4 pb-2 pb-md-0 mb-md-5">Сыныпқа оқушы қосу</h3>
            
             
            <sf:form method="post" action="${pageContext.request.contextPath}/addAssignedClass" modelAttribute="form">
            <sf:input type="hidden" id="id" class="form-control form-control-lg" path="id" name="id" value="${form.id}"/>

          
               <div class="row">
                <div class="col-md-6 mb-4 pb-2">
                  
                  <select class="select form-control-lg" name="studentId">
                  <option value="1" disabled>Оқушыны таңдаңыз</option>
                    <c:forEach items="${userList}" var="userList" varStatus="u">
                    
                    <option value="${userList.id}">${userList.firstName} ${userList.lastName}</option>
                   
                    </c:forEach>
                  </select>
                  <label class="form-label select-label">Оқушыны таңдаңыз</label>

                </div>

                
                   <div class="col-md-6 mb-4 pb-2">
                  
                  <select class="select form-control-lg" name="classId">
                  <option value="1" disabled>Сыныпты таңдаңыз</option>
                    <c:forEach items="${classList}" var="classList" varStatus="u">
                    <option value="${classList.id}">${classList.className}</option>
                    </c:forEach>
                  </select>
                  <label class="form-label select-label">Сыныпты таңдаңыз</label>

                </div>
          
          
              </div>

                <c:choose>
  				<c:when test="${form.id>0}">
   				  <div class="mt-4 pt-2">
                <input class="btn btn-primary btn-lg" type="submit" value="Жаңарту" />
              </div>   
 			</c:when>

  			<c:otherwise>
             <div class="mt-4 pt-2">
                <input class="btn btn-primary btn-lg" type="submit" value="Қосу" />
              </div>
  			</c:otherwise>
			</c:choose> 

           </sf:form>
          
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
</body>
