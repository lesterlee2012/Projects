<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%@taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<div class="container">
	<div class="row">
		<div class="col-sm-6 animated bounceInLeft">
			<spring:url var="addAction"
				value="${empty DeptId?'/admin/employee/add':'/admin/department/addEmployee'}" />
			<h4 class="form-signin-heading">Employee information</h4>
			<sf:form action="${addAction}" commandName="employee" method="GET">
				<div class="form-group-sm">
					<sf:errors path="*" element="div" cssClass="animated bounceInRight" />
					<sf:label path="id" class="sr-only">
						<spring:message text="ID" />
					</sf:label>
					<sf:input path="id" type="text" class="form-control"
						placeholder="Enter ID" required="true"
						readonly="${empty employee.name?false:true}" />
				</div>
				<div class="form-group-sm">
					<sf:label path="name" class="sr-only">
						<spring:message text="Name" />
					</sf:label>
					<sf:input path="name" type="text" class="form-control"
						placeholder="Enter Name" required="true" />
				</div>
				<div class="form-group-sm">
					<sf:label path="job" class="sr-only">
						<spring:message text="Job" />
					</sf:label>
					<sf:input path="job" type="text" class="form-control"
						placeholder="Enter Job Position" required="true" />
				</div>
				<div class="form-group-sm">
					<sf:label path="manager" class="sr-only">
						<spring:message text="Manager" />
					</sf:label>
					<sf:input path="manager" type="text" class="form-control"
						placeholder="Enter Manager ID" required="true" />
				</div>
				<div class="form-group-sm">
					<sf:label path="hiredate" class="sr-only">
						<spring:message text="Hiredate" />
					</sf:label>
					<sf:input path="hiredate" type="text" class="form-control"
						placeholder="Enter Hiredate as YYYY.MM.DD" required="true" />
				</div>
				<div class="form-group-sm">
					<sf:label path="salary" class="sr-only">
						<spring:message text="Salary" />
					</sf:label>
					<sf:input path="salary" type="text" class="form-control"
						placeholder="Enter Salary" required="true" />
				</div>
				<div class="form-group-sm">
					<sf:label path="commission" class="sr-only">
						<spring:message text="Commission" />
					</sf:label>
					<sf:input path="commission" type="text" class="form-control"
						placeholder="Enter Commission" required="true" />
				</div>
				<div class="form-group-sm">
					<sf:label path="deptid" class="sr-only">
						<spring:message text="Dept ID" />
					</sf:label>
					<sf:input path="deptid" value="${DeptId}" type="text" class="form-control"
						placeholder="Enter Department ID" required="true"
						readonly="${!empty DeptId?true:false}" />
				</div>
				<button type="submit" class="btn btn-default">
					<spring:message
						text="${empty employee.name?'Add Employee':'Edit Employee'}" />
				</button>
			</sf:form>
		</div>
	</div>
</div>

<div class="container animated tada">
	<h4>
		Employees List
		<c:if test="${!empty DeptId}">of Department ${DeptId}</c:if>
	</h4>
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
				<th>Edit</th>
				<th>Delete</th>
				<th>Project</th>
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
					<c:choose>
						<c:when test="${empty DeptId}">
							<td><a
								href="<c:url value='/admin/employee/edit?id=${emp.id}' />">Edit</a></td>
							<td><a
								href="<c:url value='/admin/employee/remove?id=${emp.id}' />">Delete</a></td>
							<td><a
								href="<c:url value='/admin/employee/projects?id=${emp.id}' />">View</a></td>
						</c:when>
						<c:otherwise>
							<td><a
								href="<c:url value='/admin/department/editEmployee?id=${emp.id}' />">Edit</a></td>
							<td><a
								href="<c:url value='/admin/department/removeEmployee?id=${emp.id}' />">Delete</a></td>
							<td><a
								href="<c:url value='/admin/employee/projects?id=${emp.id}' />">View</a></td>
						</c:otherwise>
					</c:choose>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<ul class="pager">
		<li><a href="<c:url value='/admin/project'/>">Previous</a></li>
		<li><a href="<c:url value='/admin/department'/>">Next</a></li>
	</ul>
</div>