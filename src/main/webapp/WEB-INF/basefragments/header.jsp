<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	response.setContentType("text/html; charset=UTF-8");
	response.setCharacterEncoding("UTF-8");
%>

<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="crt"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>

<nav class="navbar navbar-expand-lg navbar-light bg-info text-white">
	<div class="container-fluid">
		<a class="navbar-brand" href="${pageContext.request.contextPath}/home">Niyazov Education </a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
				data-bs-target="#navbarNav" aria-controls="navbarNav"
				aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarNav">
			<div class="float-left">
				<ul class="navbar-nav">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="${pageContext.request.contextPath}/home">Басты бетке</a>
					</li>

					<c:if test="${sessionScope.user == null}">
						<li class="nav-item"><a class="nav-link"
												href="${pageContext.request.contextPath}/registration">Тіркелу</a>
						</li>
						<li class="nav-item"><a class="nav-link"
												href="${pageContext.request.contextPath}/loginView">Кіру</a></li>
					</c:if>

					<c:if test="${sessionScope.user.userRole == 'Admin'}">
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
							role="button" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"> Пайдаланушылар </a>
							<div class="dropdown-menu" aria-labelledby="navbarDropdown">
								<a class="dropdown-item"
								   href="${pageContext.request.contextPath}/registration">Пайдаланушы қосу</a> <a class="dropdown-item"
												href="${pageContext.request.contextPath}/userList">Пайдаланушылар тізімі</a>
							</div></li>




						<li class="nav-item"><a class="nav-link active"
												aria-current="page" href="${pageContext.request.contextPath}/studentList">Оқушылар тізімі</a>
						</li>

						<li class="nav-item"><a class="nav-link active"
												aria-current="page" href="${pageContext.request.contextPath}/facultyList">Оқытушылар тізімі</a>
						</li>

						<li class="nav-item"><a class="nav-link active"
												aria-current="page" href="${pageContext.request.contextPath}/accountantList">Бухгалтерлер тізімі</a>
						</li>

						<li class="nav-item dropdown"><a
								class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
								role="button" data-toggle="dropdown" aria-haspopup="true"
								aria-expanded="false"> Сыныптар </a>
							<div class="dropdown-menu" aria-labelledby="navbarDropdown">
								<a class="dropdown-item"
								   href="${pageContext.request.contextPath}/class">Сыныптарды қосу</a> <a
									class="dropdown-item"
									href="${pageContext.request.contextPath}/classList">Сыныптар
								тізімі</a>
								<a
										class="dropdown-item"
										href="${pageContext.request.contextPath}/assignClass">Сыныпқа оқушы қосу</a>

							</div></li>

						<li class="nav-item dropdown"><a
								class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
								role="button" data-toggle="dropdown" aria-haspopup="true"
								aria-expanded="false"> Пәндер </a>
							<div class="dropdown-menu" aria-labelledby="navbarDropdown">
								<a class="dropdown-item"
								   href="${pageContext.request.contextPath}/subject"> Пән қосу</a> <a class="dropdown-item"
																										 href="${pageContext.request.contextPath}/subjectList">Пәндер тізімі</a>
							</div></li>

<%--						<li class="nav-item dropdown"><a--%>
<%--								class="nav-link dropdown-toggle" href="#" id="navbarDropdown"--%>
<%--								role="button" data-toggle="dropdown" aria-haspopup="true"--%>
<%--								aria-expanded="false">Оқушы үлгерімі </a>--%>
<%--							<div class="dropdown-menu" aria-labelledby="navbarDropdown">--%>
<%--								<a class="dropdown-item"--%>
<%--								   href="${pageContext.request.contextPath}/attendance">--%>
<%--									Сабаққа қатысу тізімін өзгерту</a>--%>
<%--								<a class="dropdown-item"--%>
<%--								   href="${pageContext.request.contextPath}/attendanceList">--%>
<%--									Сабаққа қатысу тізімі</a>--%>
<%--							</div></li>--%>

						<li class="nav-item dropdown"><a
								class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
								role="button" data-toggle="dropdown" aria-haspopup="true"
								aria-expanded="false">Төлемдер</a>
							<div class="dropdown-menu" aria-labelledby="navbarDropdown">
								<a class="dropdown-item"
								   href="${pageContext.request.contextPath}/fee">
									Төлемдер қосу</a>
								<a class="dropdown-item"
								   href="${pageContext.request.contextPath}/feeList">
									Төлемдер тізімі</a>
							</div></li>

						<li class="nav-item dropdown"><a
								class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
								role="button" data-toggle="dropdown" aria-haspopup="true"
								aria-expanded="false">Электронды журнал</a>
							<div class="dropdown-menu" aria-labelledby="navbarDropdown">
								<a class="dropdown-item"
								   href="${pageContext.request.contextPath}/marksheet">
									Баға қою</a>
								<a class="dropdown-item"
								   href="${pageContext.request.contextPath}/marksheetList">
									Бағалар тізімі</a>

								<a class="dropdown-item"
								   href="${pageContext.request.contextPath}/attendance">
									Сабаққа қатысу тізімін өзгерту</a>
								<a class="dropdown-item"
								   href="${pageContext.request.contextPath}/attendanceList">
									Сабаққа қатысу тізімі</a>

							</div>
						</li>

					</c:if>

					<c:if test="${sessionScope.user.userRole == 'Student'}">
						<li class="nav-item"><a class="nav-link active"
												aria-current="page" href="${pageContext.request.contextPath}/facultyList">Оқытушылар тізімі</a>
						</li>

						<li class="nav-item"><a class="nav-link active"
												aria-current="page" href="${pageContext.request.contextPath}/accountantList">Бухгалтерлер тізім</a>
						</li>

						<li class="nav-item dropdown"><a
								class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
								role="button" data-toggle="dropdown" aria-haspopup="true"
								aria-expanded="false"> Пәндер </a>
							<div class="dropdown-menu" aria-labelledby="navbarDropdown">
								<a class="dropdown-item"
								   href="${pageContext.request.contextPath}/subjectList">Пәндер тізімі</a>
							</div></li>

						<li class="nav-item dropdown"><a
								class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
								role="button" data-toggle="dropdown" aria-haspopup="true"
								aria-expanded="false">Сабақ кестесі</a>
							<div class="dropdown-menu" aria-labelledby="navbarDropdown">
								<a class="dropdown-item"
								   href="${pageContext.request.contextPath}/attendanceList">
									Сабақ кестесі тізімі</a>
							</div>
						</li>

<%--						<li class="nav-item dropdown"><a--%>
<%--								class="nav-link dropdown-toggle" href="#" id="navbarDropdown"--%>
<%--								role="button" data-toggle="dropdown" aria-haspopup="true"--%>
<%--								aria-expanded="false">Оқушы үлгерімі</a>--%>
<%--							<div class="dropdown-menu" aria-labelledby="navbarDropdown">--%>
<%--								<a class="dropdown-item"--%>
<%--								   href="${pageContext.request.contextPath}/attendanceList">--%>
<%--									Оқушы үлгерім тізімі</a>--%>
<%--							</div></li>--%>

						<li class="nav-item dropdown"><a
								class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
								role="button" data-toggle="dropdown" aria-haspopup="true"
								aria-expanded="false">Төлемдер</a>
							<div class="dropdown-menu" aria-labelledby="navbarDropdown">

								<a class="dropdown-item"
								   href="${pageContext.request.contextPath}/feeList">
									Төлемдер тізімі</a>
							</div></li>

						<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
						role="button" data-toggle="dropdown" aria-haspopup="true"
						aria-expanded="false">Электронды журнал</a>
						<div class="dropdown-menu" aria-labelledby="navbarDropdown">
							<a class="dropdown-item"
							   href="${pageContext.request.contextPath}/marksheetList">
								Бағалар тізімі</a>


							<a class="dropdown-item"
							   href="${pageContext.request.contextPath}/attendanceList">
								Сабаққа қатысу тізімі</a>

						</div>
						</li>


<%--						<li class="nav-item"><a class="nav-link active"--%>
<%--						aria-current="page" href="${pageContext.request.contextPath}/accountantList">N-Library</a>--%>
<%--						</li>--%>

					</c:if>
					<c:if test="${sessionScope.user.userRole == 'Accountant'}">

						<li class="nav-item"><a class="nav-link active"
												aria-current="page" href="${pageContext.request.contextPath}/accountantList">Бухгалтерлер тізім</a>
						</li>

						<li class="nav-item dropdown"><a
								class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
								role="button" data-toggle="dropdown" aria-haspopup="true"
								aria-expanded="false">Төлемдер</a>
							<div class="dropdown-menu" aria-labelledby="navbarDropdown">
								<a class="dropdown-item"
								   href="${pageContext.request.contextPath}/fee">
									Төлемдер қосу</a>
								<a class="dropdown-item"
								   href="${pageContext.request.contextPath}/feeList">
									Төлемдер тізімі</a>
							</div></li>

					</c:if>
					<c:if test="${sessionScope.user.userRole == 'Faculty'}">

						<li class="nav-item"><a class="nav-link active"
												aria-current="page" href="${pageContext.request.contextPath}/facultyList">Оқытушылар тізімі</a>
						</li>

						<li class="nav-item"><a class="nav-link active"
												aria-current="page" href="${pageContext.request.contextPath}/accountantList">Бухгалтерлер тізімі</a>
						</li>


						<li class="nav-item"><a class="nav-link active"
												aria-current="page" href="${pageContext.request.contextPath}/studentList">Оқушылар тізімі</a>
						</li>

						<li class="nav-item dropdown"><a
								class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
								role="button" data-toggle="dropdown" aria-haspopup="true"
								aria-expanded="false"> Сыныптар </a>
							<div class="dropdown-menu" aria-labelledby="navbarDropdown">
								<a class="dropdown-item"
								   href="${pageContext.request.contextPath}/class">Сыныптарды қосу</a> <a
									class="dropdown-item"
									href="${pageContext.request.contextPath}/classList">Сыныптар
								тізімі</a>
								<a
										class="dropdown-item"
										href="${pageContext.request.contextPath}/assignClass">Сыныпқа оқушы қосу</a>

							</div></li>




						<li class="nav-item dropdown"><a
								class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
								role="button" data-toggle="dropdown" aria-haspopup="true"
								aria-expanded="false"> Пәндер </a>
							<div class="dropdown-menu" aria-labelledby="navbarDropdown">
								<a class="dropdown-item"
								   href="${pageContext.request.contextPath}/subject"> Пәндер қосу</a> <a class="dropdown-item"
																										 href="${pageContext.request.contextPath}/subjectList">Пәндер тізімі</a>
							</div></li>


						<li class="nav-item dropdown"><a
								class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
								role="button" data-toggle="dropdown" aria-haspopup="true"
								aria-expanded="false">Электронды журнал</a>
							<div class="dropdown-menu" aria-labelledby="navbarDropdown">
								<a class="dropdown-item"
								   href="${pageContext.request.contextPath}/marksheet">
									Баға қою</a>
								<a class="dropdown-item"
									href="${pageContext.request.contextPath}/marksheetList">
									Бағалар тізімі</a>

								<a class="dropdown-item"
								   href="${pageContext.request.contextPath}/attendance">
									Сабаққа қатысу тізімін өзгерту</a>
								<a class="dropdown-item"
								   href="${pageContext.request.contextPath}/attendanceList">
									Сабаққа қатысу тізімі</a>
							</div></li>

<%--						<li class="nav-item dropdown"><a--%>
<%--								class="nav-link dropdown-toggle" href="#" id="navbarDropdown"--%>
<%--								role="button" data-toggle="dropdown" aria-haspopup="true"--%>
<%--								aria-expanded="false">Оқушы үлгерімі</a>--%>
<%--							<div class="dropdown-menu" aria-labelledby="navbarDropdown">--%>
<%--								<a class="dropdown-item"--%>
<%--								   href="${pageContext.request.contextPath}/attendance">--%>
<%--									Сабаққа қатысу тізімін өзгерту</a>--%>
<%--								<a class="dropdown-item"--%>
<%--								   href="${pageContext.request.contextPath}/attendanceList">--%>
<%--									Сабаққа қатысу тізімі</a>--%>
<%--							</div></li>--%>
							
					
					</c:if>


				</ul>
			</div>
			<div class="navbar-nav ml-auto"> <!-- Используем ml-auto для выравнивания вправо -->
				<c:if test="${sessionScope.user != null}">
					<ul class="navbar-nav">
						<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/logout">Шығу</a></li>
						<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/userEdit?id=${sessionScope.user.id}">Профиль беті</a></li>
					</ul>
				</c:if>
			</div>
		</div>
	</div>
</nav>
