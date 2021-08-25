<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="/StudyPoint/Styles.css">
<title>Login</title>
</head>
<body>
<div2>
	<h1 id="name">STUDY POINT</h1>
	<h1>Login</h1>
	<form method="post" action="/StudyPoint/LoginAction.jsp">
		<table>
			<tr>
				<td>Email :</td>
				<td><input type="email" name="email" required></td>
			</tr>
			<tr>
				<td>Password :</td>
				<td><input type="password" name="password" required></td>
			</tr>
			<tr>
				<td></td>
				<td><input type="submit" value="Login" id="pmnt"></td>
			</tr>
		</table>
	</form>
	<p>
		Don't have an account? <a href="/StudyPoint/Register.jsp">Register
			Now</a>
	</p>
	</div2>
	<%
	String msg=request.getParameter("msg");
	if("notexist".equals(msg))
{
	%>
	<h1>incorrect username or password</h1>
	<%} %>
	<%if("invalid".equals(msg))
		{%>
		<h1>Something Went Wrong! Try Again!</h1>
		<%} %>
	
</body>
</html>