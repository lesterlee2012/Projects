<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<title>Home Page</title>
<style>
.center{margin:0px auto; width:600px;}
</style>
</head>
<body>

<c:choose>
	<c:when test="${operation=='Employee'}">
		<div class=center>
			<h3>Insert Record in Employee</h3>
				<form action="EmpController" method="post">
					<input type="hidden" name="type" value="save">
					<p>Id: <input type="text" name="id" placeholder="enter id"></p>
					<p>Name: <input type="text" name="name" placeholder="enter name"></p>
					<p>Job: <input type="text" name="job" placeholder="enter job"></p>
					<p>Manager: <input type="text" name="mgr" placeholder="enter mgr id"></p>
					<p>Hire Date: <input type="text" name="hiredate" placeholder="yyyy-mm-dd"></p>
					<p>Salary: <input type="text" name="sal" placeholder="enter salary"></p>
					<p>Commission: <input type="text" name="comm" placeholder="enter commission"></p>
					<p>DEPT Id: <input type="text" name="deptid" placeholder="enter dept id"></p>
					<p><input type="submit" value="Submit changes"></p>
				</form>
		</div>
	</c:when>
	
	<c:when test="${operation=='Department'}">
		<div class=center>
			<h3>Insert Record in Department</h3>
			<form action="DeptController" method="post">
				<input type="hidden" name="type" value="save">
				<p>Id: <input type="text" name="id" placeholder="enter id"></p>
				<p>Name: <input type="text" name="name" placeholder="enter name"></p>
				<p>Location: <input type="text" name="loc" placeholder="enter location"></p>
				<p><input type="submit" value="Submit changes"></p>
			</form>
		</div>
	</c:when>
	
	<c:when test="${operation=='Project'}">
		<div class=center>
			<h3>Insert Record in Project</h3>
				<form action="ProjController" method="post">
					<input type="hidden" name="type" value="save">
					<p>Id: <input type="text" name="id" placeholder="enter id"></p>
					<p>Description: <input type="text" name="name" placeholder="enter description"></p>
					<p><input type="submit" value="Submit changes"></p>
				</form>
		</div>
	</c:when>
	
	<c:otherwise>
		<form action="TableSelecter" method="post">
		  <select name="table">
		    <option value="Employee">Employee</option>
		    <option value="Department">Department</option>
		    <option value="Project">Project</option>
		  </select>
		  <input type="submit" value="Confirm">
		</form>
		
		<div class=center>
			<c:if test="${Table=='Employee'}"> 
				<h1>Employee Table</h1>
				<b>Employee info will be listed here, click the link to insert/remove record</b>
				<table border='1'>
				<tr>
					<th>Id</th>
					<th>Name</th>
					<th>Job</th>
					<th>Manager</th>
					<th>Hire date</th>
					<th>Salary</th>
					<th>Commission</th>
					<th>Dept Id</th>
					<th><a href="InsertSelecter?op=Employee">Add</a></th>
				</tr>
					<c:forEach var="emp" items="${EmpList}">
						<tr>
							<td>${emp.id}</td>
							<td>${emp.name}</td>
							<td>${emp.job}</td>
							<td>${emp.manager}</td>
							<td>${emp.hiredate}</td>
							<td>${emp.salary}</td>
							<td>${emp.commission}</td>
							<td>${emp.deptid}</td>
							<td><a href=EmpController?type=delete&id=${emp.id}>Delete</a></td>
						</tr>
					</c:forEach>
				</table>
				
				<br>
				
				<h2>Edit Employee</h2>
				<form action="EmpController" method="post">
					<input type="hidden" name="type" value="save">
						<p>Id 
						<select
							class="form-control" name="id">
							<c:forEach var="emp" items="${EmpList}">
								<option value="${emp.id}">${emp.id}</option>
							</c:forEach>
						</select>
						</p>
						<p>Name: <input type="text" name="name" placeholder="enter name"></p>
						<p>Job: <input type="text" name="job" placeholder="enter job"></p>
						<p>Manager: <input type="text" name="mgr" placeholder="enter mgr id"></p>
						<p>Hire Date: <input type="text" name="hiredate" placeholder="yyyy-mm-dd"></p>
						<p>Salary: <input type="text" name="sal" placeholder="enter salary"></p>
						<p>Commission: <input type="text" name="comm" placeholder="enter commission"></p>
						<p>DEPT Id: <input type="text" name="deptid" placeholder="enter dept id"></p>
					<button type="submit" class="btn btn-default">Submit</button>
				</form>
			</c:if>
			
			<c:if test="${Table=='Department'}"> 
				<h1>Department Table</h1>
				<b>Dept info will be listed here, click the link to insert/remove record</b>
				
			<table border='1'>
			<tr>
				<th>Id</th>
				<th>Name</th>
				<th>Location</th>
				<th><a href="InsertSelecter?op=Department">Add</a></th>
			</tr>
				<c:forEach var="dept" items="${DeptList}">
					<tr>
					<td>${dept.id}</td>
					<td>${dept.name}</td>
					<td>${dept.loc}</td>
					<td><a href=DeptController?type=delete&id=${dept.id}>Delete</a></td>
					</tr>
				</c:forEach>
			</table>
			
			<br>
			
			<h2>Edit Department</h2>
			<form action="DeptController" method="post">
				<input type="hidden" name="type" value="save">
					<p>Id
					<select
						class="form-control" name="id">
						<c:forEach var="dept" items="${DeptList}">
							<option value="${dept.id}">${dept.id}</option>
						</c:forEach>
					</select>
					</p>
					<p>Name: <input type="text" name="name" placeholder="enter name"></p>
					<p>Location: <input type="text" name="loc" placeholder="enter location"></p>
				<button type="submit" class="btn btn-default">Submit</button>
			</form>
			</c:if>
			
			<c:if test="${Table=='Project'}"> 
			<h1>Project Table</h1>
				<b>Project info will be listed here, click the link to insert/remove record</b>
				
			<table border='1'>
			<tr>
				<th>Id</th>
				<th>Description</th>
				<th><a href="InsertSelecter?op=Project">Add</a></th>
			</tr>
				<c:forEach var="proj" items="${ProjList}">
					<tr>
					<td>${proj.id}</td>
					<td>${proj.name}</td>
					<td><a href=ProjController?type=delete&id=${proj.id}>Delete</a></td>
					</tr>
				</c:forEach>
			</table>
			
			<br>
			
			<h2>Edit Project</h2>
			<form action="ProjController" method="post">
				<input type="hidden" name="type" value="save">
					<p>Id 
					<select
						class="form-control" name="id">
						<c:forEach var="proj" items="${ProjList}">
							<option value="${proj.id}">${proj.id}</option>
						</c:forEach>
					</select>
					</p>
					<p>Description: <input type="text" name="name" placeholder="enter description"></p>
				<button type="submit" class="btn btn-default">Submit</button>
			</form>
			</c:if>
		</div>
	</c:otherwise>
</c:choose>

</body>
</html>