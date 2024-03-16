<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ page import="com.springboot.springbootCRUD.entities.Employee"%>
<%@ page import="java.util.List"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="home.css">

<header><h1>Springboot CRUD Project</h1></header>
</head>

<body>
	<form action="employeeRegistration">
		<button type="submit">Employee Registration</button>
	</form>

	<form action="searchAll">
		<button type="submit">Get All Employee</button>
	</form>
	
	<form action="searchById">
		<input id="id" name="id" type="text" pattern ="[0-9]+" placeHolder ="Please Enter Employee Id" required>
		<button type="submit">Search</button>
	</form>

	<%
	if (request.getAttribute("employeeList") != null) {
	%>
	<table align ="center">
		<thead>
			<tr>
				<th>ID</th>
				<th>Name</th>
				<th>Gender</th>
				<th>Date of Birth</th>
				<th>Email</th>
				<th>Phone</th>
				<th>Address</th>
				<th>Position</th>
				<th>salary</th>
				<th>Action</th>
				<th>Action</th>
			</tr>
		</thead>
		<tbody>
			<%
			List<Employee> employees = (List<Employee>) request.getAttribute("employeeList");
			for (Employee employee : employees) {
			%>
			<tr>
				<td><%=employee.getId()%></td>
				<td><%=employee.getName()%></td>
				<td><%=employee.getGender()%></td>
				<td><%=employee.getDOB()%></td>
				<td><%=employee.getEmail()%></td>
				<td><%=employee.getPhone()%></td>
				<td><%=employee.getAddress()%></td>
				<td><%=employee.getPosition()%></td>
				<td><%=employee.getSalary()%></td>
				<td>
					<form action="edit" method="post">
						<input type="hidden" name="id" value="<%=employee.getId()%>">
						<button class="edit-button" type="submit">Edit</button>
					</form>
				</td>
				<td>
					<form action="delete" method="post">
						<input type="hidden" name="id" value="<%=employee.getId()%>">
						<button class="delete-button" type="submit">Delete</button>
					</form>
				</td>
			</tr>
			<%
			}
			%>
		</tbody>
	</table>
	<%
	}
	%>


	<%
	if (request.getAttribute("singleEmpl") != null) {
	%>
	<table>
		<thead>
			<tr>
				<th>ID</th>
				<th>Name</th>
				<th>Gender</th>
				<th>Date of Birth</th>
				<th>Email</th>
				<th>Phone</th>
				<th>Address</th>
				<th>Position</th>
				<th>salary</th>
				<th>Action</th>
				<th>Action</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>${singleEmpl.getId()}</td>
				<td>${singleEmpl.getName()}</td>
				<td>${singleEmpl.getGender()}</td>
				<td>${singleEmpl.getDOB()}</td>
				<td>${singleEmpl.getEmail()}</td>
				<td>${singleEmpl.getPhone()}</td>
				<td>${singleEmpl.getAddress()}</td>
				<td>${singleEmpl.getPosition()}</td>
				<td>${singleEmpl.getSalary()}</td>
				<td>
					<form action="edit" method="post">
						<input type="hidden" name="id" value="${singleEmpl.getId()}">
						<button class="edit-button" type="submit">Edit</button>
					</form>
				</td>
				<td>
					<form action="delete" method="post">
						<input type="hidden" name="id" value="${singleEmpl.getId()}">
						<button class="delete-button" type="submit">Delete</button>
					</form>
				</td>
			</tr>
		</tbody>
	</table>
	<%
	}
	%>
	${message}
</body>
</html>
