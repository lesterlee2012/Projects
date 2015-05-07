<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="container animated bounceInLeft">
	<h4>Assign Project on Employee ${EmpId}</h4>
	<form action="<c:url value='/admin/employee/addProject'/>" method="GET">
		<select name="id">
			<c:forEach var="project" items="${projects}">
				<option value="${project.id}">${project.name}</option>
			</c:forEach>
		</select>
		<input type="hidden" name="EmpId" value="${EmpId}"/>
		<button type="submit" class="btn btn-default">Assign</button>
	</form>
</div>

<div class="container animated tada">
	<h4>Projects List of Employee ${EmpId}</h4>
	<table class="table table-hover table-bordered">
		<thead>
			<tr>
				<th>ID</th>
				<th>Name</th>
				<th>Delete</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="project" items="${listProjects}">
				<tr>
					<td>${project.id}</td>
					<td>${project.name}</td>
					<td><a
						href="<c:url value='/admin/employee/removeProject?id=${project.id}&EmpId=${EmpId}' />">Delete</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</div>