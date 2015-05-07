<%@taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script src="//code.jquery.com/jquery-1.11.2.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<link href="resources/css/sticky-footer.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="resources/css/animate.css">
</head>

<body>
	<c:if test="${pageContext.request.userPrincipal.name != null}">
		<jsp:include page="/WEB-INF/views/common/navigate.jsp" />
	</c:if>
	<jsp:include page="/WEB-INF/views/common/header.jsp" />

	<c:if test="${pageContext.request.userPrincipal.name == null}">
		<div class="container">
			<p>
				Hello Guest, You need to <a class="animated infinite bounce"
					href="login">Login</a>
			</p>
		</div>
	</c:if>

	<!-- For login user -->
	<c:if test="${pageContext.request.userPrincipal.name != null}">
		<div class="container">
			<p class="animated bounceInLeft">Our Company Representative:</p>
			<div id="myCarousel" class="carousel slide" data-ride="carousel">
				<!-- Indicators -->
				<ol class="carousel-indicators">
					<c:forEach begin="1" end="${imgCount}" var="index">
						<c:choose>
							<c:when test="${index==1}">
								<li data-target="#myCarousel" data-slide-to="${index}"
									class="active"></li>
							</c:when>
							<c:otherwise>
								<li data-target="#myCarousel" data-slide-to="${index}"></li>
							</c:otherwise>
						</c:choose>
					</c:forEach>
				</ol>
	
				<!-- Wrapper for slides -->
				<div class="carousel-inner" role="listbox">
					<c:forEach begin="1" end="${imgCount}" var="index">
						<c:choose>
							<c:when test="${index==1}">
								<div class="item active">
									<a href="delete?id=${index}"> <img
										src="resources/images/${index}.jpg"
										class="img-circle img-responsive animated rotateIn">
									</a>
								</div>
							</c:when>
							<c:otherwise>
								<div class="item">
									<a href="delete?id=${index}"> <img
										src="resources/images/${index}.jpg"
										class="img-circle img-responsive animated rotateIn">
									</a>
								</div>
							</c:otherwise>
						</c:choose>
					</c:forEach>
				</div>
	
				<!-- Left and right controls -->
				<a class="left carousel-control" href="#myCarousel" role="button"
					data-slide="prev"> <span
					class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
					<span class="sr-only">Previous</span>
				</a> <a class="right carousel-control" href="#myCarousel" role="button"
					data-slide="next"> <span
					class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
					<span class="sr-only">Next</span>
				</a>
			</div>
		</div>
		<div class="container">
			<p>Customize Your Own Gallery:</p>
			<c:url var="addAction" value="/upload"></c:url>
			<form method="POST" action="${addAction}"
				enctype="multipart/form-data">
				<input type="file" name="file"
					accept="image/jpeg,image/png,image/gif" />
				<button type="submit" class="btn btn-default">Upload</button>
			</form>
		</div>
	</c:if>
	<div class="container">
		<audio controls>
			<source src="resources/music/xspg.mp3"
				type="audio/mpeg">
		</audio>
	</div>

	<jsp:include page="/WEB-INF/views/common/footer.jsp" />
</body>
</html>