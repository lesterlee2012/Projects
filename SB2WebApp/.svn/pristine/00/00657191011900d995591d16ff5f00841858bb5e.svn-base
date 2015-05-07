<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<div class="container animated bounceInLeft">
	<h4>Assign Employee on Project ${ProjId}</h4>
	<form action="<c:url value='/admin/project/addEmployee'/>" method="GET">
		<select name="id">
			<c:forEach var="employee" items="${employees}">
				<option value="${employee.id}">${employee.name}</option>
			</c:forEach>
		</select>
		<input type="hidden" name="ProjId" value="${ProjId}"/>
		<button type="submit" class="btn btn-default">Assign</button>
	</form>
</div>

<div class="container animated tada">
	<h4>Employees List on Project ${ProjId}</h4>
	<table class="table table-hover table-bordered">
		<thead>
			<tr>
				<th>ID</th>
				<th>Name</th>
				<th>Job</th>
				<th>Manager</th>
				<th>Hiredate</th>
				<th>Salary</th>
				<th>Comm.</th>
				<th>Dept</th>
				<th>Delete</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${listEmployees}" var="emp">
				<tr>
					<td>${emp.id}</td>
					<td>${emp.name}</td>
					<td>${emp.job}</td>
					<td>${emp.manager}</td>
					<td><fmt:formatDate type="date" pattern="yyyy-MM"
							value="${emp.hiredate}" /></td>
					<td>${emp.salary}</td>
					<td>${emp.commission}</td>
					<td>${emp.deptid}</td>
					<td><a
						href="<c:url value='/admin/project/removeEmployee?id=${emp.id}&ProjId=${ProjId}' />">Delete</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</div>