<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="/StudyPoint/Styles.css">
<title>User Homepage</title>
</head>
<body>
	<div2>
	<h1 id="name">STUDY POINT</h1>
	</div2>

	<%
		String email = session.getAttribute("email").toString();
	%>
	<p>
		Hello,
		<%
		out.println(email);
	%>
		!!
	</p>
	
	
	<table border="2" id="crs">
		<%
			Connection con = ConnectionProvider.getCon();
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery("select * from userdb.courses");
		%><tr>
			<th>Course Id</th>
			<th>Course Name</th>
			<th>Fees</th>
		</tr>
		<%
			while (rs.next()) {
		%>

		<tr>
			<td>
				<%
					out.println(rs.getInt(1));
				%>
			</td>

			<td>
				<%
					out.println(rs.getString(2));
				%>
			</td>

			<td>
				<%
					out.println(rs.getString(3));
					}
				%>
			</td>
		</tr>
	</table>
	<p>Fill the form below and get started with your learning journey..</p>
	<form action="" method="">
		<table>
			<tr>
				<td>Name</td>
				<td><input type="text" name="uname" required></td>
			</tr>
			<tr>
				<td>Course Id</td>
				<td><input type="text" name="c_name" required></td>
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
				<td><input type="submit" value="Proceed To Payment" id="pmnt"></td>
			</tr>
		</table>
	</form>
<a href="/StudyPoint/Login.jsp"><button type="button" id="usrlog">Logout</button></a>
</body>
</html>