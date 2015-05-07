<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!-- Fixed navbar -->
<nav class="navbar navbar-default navbar-fixed-top animated bounceIn">
	<div class="container">
		<div class="navbar-header">
			<a class="navbar-brand"
				href="<c:url value='/logout'/>">${pageContext.request.userPrincipal.name}/logout</a>
		</div>
		<div id="navbar" class="collapse navbar-collapse">
			<ul class="nav navbar-nav">
				<li class="active"><a href="<c:url value='/welcome'/>">Home<span class="glyphicon glyphicon-home"></span></a></li>
				<li><a href="<c:url value='/admin/employee'/>">Employee<span class="glyphicon glyphicon-user"></span></a></li>
				<li><a href="<c:url value='/admin/department'/>">Department<span class="glyphicon glyphicon-stats"></span></a></li>
				<li><a href="<c:url value='/admin/project'/>">Project<span class="glyphicon glyphicon-wrench"></span></a></li>
			</ul>
		</div>
	</div>
</nav>