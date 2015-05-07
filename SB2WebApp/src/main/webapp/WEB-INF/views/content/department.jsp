<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%@taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>


<div class="container">
	<div class="row">
		<div class="col-sm-6 animated bounceInLeft">
			<spring:url var="addAction" value="/admin/department/add"></spring:url>
			<h4 class="form-signin-heading">Department information</h4>
			<sf:form role="form" action="${addAction}" commandName="department"
				method="GET">
				<div class="form-group">
					<sf:label path="id" class="sr-only">
						<spring:message text="ID" />
					</sf:label>
					<sf:input path="id" type="text" class="form-control"
						placeholder="Enter ID" required="true"
						readonly="${empty department.name?false:true}" />
				</div>

				<div class="form-group">
					<sf:label path="name" class="sr-only">
						<spring:message text="Name" />
					</sf:label>
					<sf:input path="name" type="text" class="form-control"
						placeholder="Enter Name" required="true" />
				</div>

				<div class="form-group">
					<sf:label path="loc" class="sr-only">
						<spring:message text="Location" />
					</sf:label>
					<sf:input path="loc" type="text" class="form-control"
						placeholder="Enter Location" required="true" />
				</div>
				<button type="submit" class="btn btn-default">
					<spring:message
						text="${empty department.name?'Add Department':'Edit Department'}" />
				</button>
			</sf:form>
		</div>
	</div>
</div>

<div class="container animated tada">
	<h4>Departments List</h4>
	<table class="table table-hover table-bordered">
		<thead>
			<tr>
				<th>ID</th>
				<th>Name</th>
				<th>Location</th>
				<th>Edit</th>
				<th>Delete</th>
				<th>Stuff</th>
			</tr>
		</thead>
		<tbody>
			<%-- <c:forEach items="${listDepartments}" var="department">
				<tr>
					<td>${department.id}</td>
					<td>${department.name}</td>
					<td>${department.loc}</td>
					<td><a
						href="<c:url value='/admin/department/edit?id=${department.id}' />">Edit</a></td>
					<td><a
						href="<c:url value='/admin/department/remove?id=${department.id}' />">Delete</a></td>
					<td><a
						href="<c:url value='/admin/department/employees?id=${department.id}' />">View</a></td>
				</tr>
			</c:forEach> --%>
		</tbody>
	</table>
	<div id=wait class="row">
    	<div class="col-md-2 col-md-offset-5">
    		<img src="/SB2WebApp/resources/images/loading.gif" class="img-responsive"/>
    	</div>
	</div>
	<ul class="pager">
		<li><a href="<c:url value='/admin/employee'/>">Previous</a></li>
		<li><a href="<c:url value='/admin/project'/>">Next</a></li>
	</ul>
</div>

<script>$(document).ready(function(){
	$(document).ajaxStart(function(){
        $("#wait").show();
    });
    $(document).ajaxComplete(function(){
        $("#wait").hide();
    });
	
	$.getJSON("/SB2WebApp/Restful/department", function(result){
		var tbody=$("tbody");
	    $.each(result, function(index, json){
	    	var tr=$("<tr></tr>").appendTo(tbody);
	    	tr.append("<td>"+json.id+"</td>");
	    	tr.append("<td>"+json.name+"</td>");
	    	tr.append("<td>"+json.loc+"</td>");
	    	tr.append("<td><a href='/SB2WebApp/admin/department/edit?id="+json.id+"'>Edit</a></td>");
	    	tr.append("<td><a href='/SB2WebApp/admin/department/remove?id="+json.id+"'>Delete</a></td>");
	    	tr.append("<td><a href='/SB2WebApp/admin/department/employees?id="+json.id+"'>View</a></td>");
        }); 
    });
})
</script>