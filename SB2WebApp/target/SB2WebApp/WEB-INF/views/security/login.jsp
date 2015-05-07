<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page session="true"%>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet"
	href="<c:url value='/resources/css/sticky-footer.css' />">
<script src="//code.jquery.com/jquery-1.11.2.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="<c:url value='/resources/css/animate.css' />">
<title>Login Page</title>
<style>
.error {
	padding: 15px;
	margin-bottom: 20px;
	border: 1px solid transparent;
	border-radius: 4px;
	color: #a94442;
	background-color: #f2dede;
	border-color: #ebccd1;
}

.msg {
	padding: 15px;
	margin-bottom: 20px;
	border: 1px solid transparent;
	border-radius: 4px;
	color: #31708f;
	background-color: #d9edf7;
	border-color: #bce8f1;
}
</style>
</head>

<body>
	<jsp:include page="/WEB-INF/views/common/header.jsp" />

	<div class="container">
		<div class="row">
			<div class="col-md-offset-3 col-md-6">
				<c:if test="${not empty error}">
					<div class="error">${error}</div>
				</c:if>
				<c:if test="${not empty msg}">
					<div class="msg">${msg}</div>
				</c:if>

				<form class="form-signin" name="loginForm" role="form" action="login_check" method="POST">
					<h2 class="form-signin-heading">Please sign in</h2>				
					<div class="form-group">
						<label for="inputName" class="sr-only">User</label> 
						<input type="text" id="inputName" name="username" class="form-control"
							placeholder="Your User Name" required autofocus> 
					</div>
					<div class="form-group">
						<label	for="inputPassword" class="sr-only">Password</label> 
						<input type="password" id="inputPassword" name="password" class="form-control" placeholder="Password" required>
					</div>
					<div class="checkbox">
						<label> <input type="checkbox" name="remember-me">
							Remember me
						</label>
					</div>
					<button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
				</form>
			</div>
		</div>
	</div>

	<jsp:include page="/WEB-INF/views/common/footer.jsp" />
</body>
</html>