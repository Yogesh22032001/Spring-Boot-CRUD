<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<header><h1>Springboot CRUD Project</h1></header>
<style>

header {
            background-color: #B3CBE4;
            color: white;
            text-align: center;
            padding: 4px 16px;
        }

body {
	font-family: Arial, sans-serif;
	background-color: #f4f4f4;
	margin: 0;
	padding: 0;
}

form {
	width: 50%;
	margin: 50px auto;
	background-color: #fff;
	padding: 20px;
	border-radius: 10px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

label {
	display: block;
	margin-bottom: 10px;
}

input[type="text"], input[type="number"], input[type="radio"], button {
	width: 100%;
	padding: 10px;
	margin-bottom: 20px;
	border: 1px solid #ccc;
	border-radius: 5px;
	box-sizing: border-box;
}

button {
	background-color: #4caf50;
	color: #fff;
	border: none;
	cursor: pointer;
}

button:hover {
	background-color: #45a049;
}
</style>
</head>
<body>
<h2 align ="center">Update Employee '${id }'</h2> 
	<div>
		<form action="editSave">

			<input id="id" name="id" type="hidden" value="${id }">  
			
			<label id="Name"><b>Name:</b></label> 
			<input type="text" id="Name" name="Name" pattern="[A-Za-z ]+" placeholder="Enter the name" required><br>  
			
			<label><b>Gender:</b></label>
			<label>Male</label> <input type="radio" id="male" name="gender" value="male" required>
			 <label>Female</label> <input type="radio" id="female" name="gender" value="female" required>  <br>
				
			<label for="Email"><b>Email:</b></label>
			<input type="text" id="email" name="email" placeholder="Enter Email" required><br> 
			
			<label for="phone"><b>phone:</b></label>
			<input type="text" id="phone" name="phone" pattern="[0-9]+"	placeholder="Enter phone" required><br> 
			
			<label for="adhar"><b>adhar:</b></label> 
			<input type="text" id="adhar" name="adhar" pattern="[0-9]+" placeholder="Enter adhar" required><br>

			<label for="address"><b>address:</b></label> 
			<input type="text" id="address" name="address" placeholder="Enter address" required><br>

			<label><b>Date of Birth:</b></label> 
			<input type="text" id="DOB" name="DOB" placeholder="YYYY/MM/DD" required><br> 
			
			<label><b>Position:</b></label>
			<input type="text" id="position" name="position" pattern ="[A-Za-z ]+" required><br>

			<label><b>Salary</b></label> 
			<input type="number" id="salary" name="salary" pattern ="[0-9]+" required><br>


			<button type="submit">Submit</button>

		</form>
	</div>
</body>
</html>