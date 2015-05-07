<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%@taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<div class="container">
	<div class="row">
		<div class="col-sm-6 animated bounceInLeft">
			<spring:url var="addAction" value="/admin/project/add"></spring:url>
			<h4 class="form-signin-heading">Project information</h4>
			<sf:form action="${addAction}" 
				commandName="project" method="GET">
				<div class="form-group">
					<sf:label path="id" class="sr-only">
						<spring:message text="ID" />
					</sf:label>
					<sf:input path="id" type="text" class="form-control"
						placeholder="Enter ID" required="true"
						readonly="${empty project.name?false:true}" />
				</div>
				<div class="form-group">
					<sf:label path="name" class="sr-only">
						<spring:message text="Name" />
					</sf:label>
					<sf:input path="name" type="text" class="form-control"
						placeholder="Enter Name" required="true" />
				</div>
				<button type="submit" class="btn btn-default">
					<spring:message
						text="${empty project.name?'Add Project':'Edit Project'}" />
				</button>
			</sf:form>
		</div>
	</div>
</div>
<div class="container animated tada">
	<h4>Projects List</h4>
	<table class="table table-hover table-bordered">
		<thead>
			<tr>
				<th>ID</th>
				<th>Name</th>
				<th>Edit</th>
				<th>Delete</th>
				<th>Stuff</th>
			</tr>
		</thead>
		<tbody>
			<%-- replaced with AJAX
			<c:forEach var="project" items="${listProjects}">
				<tr>
					<td>${project.id}</td>
					<td>${project.name}</td>
					<td><a
						href="<c:url value='/admin/project/edit?id=${project.id}' />">Edit</a></td>
					<td><a
						href="/SB2WebApp/admin/project/edit?id=${project.id}">Edit</a></td>
					<td><a
						href="<c:url value='/admin/project/remove?id=${project.id}' />">Delete</a></td>
					<td><a
						href="<c:url value='/admin/project/employees?id=${project.id}' />">View</a></td>
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
		<li><a href="<c:url value='/admin/department'/>">Previous</a></li>
		<li><a href="<c:url value='/admin/employee'/>">Next</a></li>
	</ul>
</div>

<script>$(document).ready(function(){
	$(document).ajaxStart(function(){
        $("#wait").show();
    });
    $(document).ajaxComplete(function(){
        $("#wait").hide();
    });
	
	$.getJSON("/SB2WebApp/Restful/project", function(result){
		var tbody=$("tbody");
	    $.each(result, function(index, json){
	    	var tr=$("<tr></tr>").appendTo(tbody);
	    	tr.append("<td>"+json.id+"</td>");
	    	tr.append("<td>"+json.name+"</td>");
	    	tr.append("<td><a href='/SB2WebApp/admin/project/edit?id="+json.id+"'>Edit</a></td>");
	    	tr.append("<td><a href='/SB2WebApp/admin/project/remove?id="+json.id+"'>Delete</a></td>");
	    	tr.append("<td><a href='/SB2WebApp/admin/project/employees?id="+json.id+"'>View</a></td>");
        }); 
    });
})
</script>