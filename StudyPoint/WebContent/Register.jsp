<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="/StudyPoint/Styles.css">
<title>Register</title>
</head>
<body>
	<div2>
	<h1 id="name">STUDY POINT</h1>
	<H1>Register :</H1>
	<form action="Register" method="post">
		<table>
			<tr>
				<td>User Name</td>
				<td><input type="text" name="uname" required></td>
			</tr>
			<tr>
				<td>Password</td>
				<td><input type="password" name="password" required></td>
			</tr>
			<tr>
				<td>Email</td>
				<td><input type="text" name="email" required></td>
			</tr>
			<tr>
				<td>Phone</td>
				<td><input type="text" name="phone" required></td>
			</tr>
			<tr>
				<td></td>
				<td><input type="submit" value="Register" id="pmnt"></td>
			</tr>
		</table>
	</form>
	<p>
		Already have an account? <a href="/StudyPoint/Login.jsp">Login</a>
	</p>
	</div2>
</body>
</html>