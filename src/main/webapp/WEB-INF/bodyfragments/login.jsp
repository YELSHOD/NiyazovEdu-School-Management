<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
  response.setContentType("text/html; charset=UTF-8");
  response.setCharacterEncoding("UTF-8");
%>

<body>
<section class="vh-100 " class="bg-image bgimage" >
  <div class="container py-5 h-100">
    <div class="row d-flex align-items-center justify-content-center h-100">
      <div class="col-md-8 col-lg-7 col-xl-6">
        <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-login-form/draw2.svg"
          class="img-fluid" alt="Phone image">
      </div>
      <div class="col-md-7 col-lg-5 col-xl-5 offset-xl-1">
      <h3 class="mb-4 pb-2 pb-md-0 mb-md-5">Жеке кабинетке кіру</h3>
      <%@include file="businessMessage.jsp" %>
        <form method="post" action="${pageContext.request.contextPath}/auth" modelAttribute="form">
          <!-- Email input -->
          <div class="form-outline mb-4">
            <input type="email" id="form1Example13" class="form-control form-control-lg" name="email" />
            <label class="form-label" for="form1Example13">Почта мекенжайы</label>
          </div>

          <!-- Password input -->
          <div class="form-outline mb-4">
            <input type="password" id="form1Example23" class="form-control form-control-lg" name="password" />
            <label class="form-label" for="form1Example23">Құпиясөз</label>
          </div>
          
          <div class="d-flex justify-content-around align-items-center mb-4">
          <!-- Submit button -->
          <button type="submit" class="btn btn-primary btn-lg btn-block">Кіру</button>
          </div>



            <div class="text-center">
              <a href="${pageContext.request.contextPath}/registration" class="text-decoration-none">Жүйеде тіркелмегенсіз ба?</a>
            </div>




          <div class="fixed-bottom mb-3 ml-3">
            <a href="tel:+77085143050" class="btn btn-success mr-2" target="_blank">Қоңырау шалу</a>
            <a href="https://wa.me/77085143050?text=Administrator" class="btn btn-success mr-2" target="_blank">Whatsapp</a>
            <a href="https://t.me/yelshod" class="btn btn-success mr-2" target="_blank">Telegram</a>
            <a href="https://www.instagram.com/yelshod_/" class="btn btn-success" target="_blank">Instagram</a>
          </div>


<%--          <style>--%>
<%--            .contact-buttons {--%>
<%--              position: fixed;--%>
<%--              bottom: 20px;--%>
<%--              right: 20px;--%>
<%--            }--%>

<%--            .contact-btn {--%>
<%--              margin-bottom: 10px;--%>
<%--            }--%>
<%--          </style>--%>

        </form>
      </div>
    </div>
  </div>
</section>
</body>
