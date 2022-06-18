a<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.acc.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="employee" class="com.acc.Employee" />
	<jsp:setProperty property="*" name="employee" />
	<%
	EmployeeDao emp = new EmployeeDao();
	int status = emp.registerEmployee(employee);

	if (status > 0) {
		out.print("You are successfully registered");
	}
	else{
		out.print("something went wrong");
	}
	%>
	
	<br>
	<br>
	<br>

</body>
</html>