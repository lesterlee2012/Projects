<%@ page language="java" contentType="text/html; charset=US-ASCII"
	pageEncoding="US-ASCII"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
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
<title>${title}</title>
</head>

<body>
<c:if test="${navigate}">
	<jsp:include page="/WEB-INF/views/common/navigate.jsp" />
</c:if>
	<jsp:include page="/WEB-INF/views/common/header.jsp" />
	<jsp:include page="/WEB-INF/views/content/${content}.jsp" />
	<jsp:include page="/WEB-INF/views/common/footer.jsp" />
</body>

</html>

