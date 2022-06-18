<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration Page</title>
</head>
<body>
	<h1>Employee Register Form</h1>
	<form action="empoloyeedetails.jsp" method="post">
		<table style="">
			<tr>
				<td>Id</td>
				<td><input type="text" name="id"></td>
			</tr>
			<tr>
				<td>First Name</td>
				<td><input type="text" name="firstName"></td>
			</tr>
			<tr>
				<td>Last Name</td>
				<td><input type="text" name="lastName"></td>
			</tr>
			<tr>
				<td>User Name</td>
				<td><input type="text" name="userName"></td>
			</tr>
			<tr>
				<td>Password</td>
				<td><input type="password" name="password"></td>
			</tr>
			<tr>
				<td>Address</td>
				<td><input type="text" name="address"></td>
			</tr>
			<tr>
				<td>Contact</td>
				<td><input type="text" name="contact"></td>
			</tr>

		</table>
		<input type="submit" value="Submit">
	</form>

</body>
</html>