<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="/StudyPoint/Styles.css">
<script>function myFunction() {
	  var x = document.getElementById('mem');
	  if (x.style.visibility === 'hidden') {
	    x.style.visibility = 'visible';
	  } else {
	    x.style.visibility = 'hidden';
	  }
	}</script>
<title>admin Home</title>
</head>
<body>
	<div2>
	<h1 id="name">STUDY POINT</h1>
	</div2>
	<p>Hello, Admin</p>
	<table border="2" id="crs">
		<%
			Connection cn = ConnectionProvider.getCon();
			Statement stm = cn.createStatement();
			ResultSet res = stm.executeQuery("select * from userdb.courses");
		%><tr>
			<th>Course Id</th>
			<th>Course Name</th>
			<th>Fees</th>
		</tr>
		<%
			while (res.next()) {
		%>

		<tr>
			<td>
				<%
					out.println(res.getInt(1));
				%>
			</td>

			<td>
				<%
					out.println(res.getString(2));
				%>
			</td>

			<td>
				<%
					out.println(res.getString(3));
					}
				%>
			</td>
		</tr>
	</table>
	
	<button id="admn" onclick="myFunction()">Click to view registered users .</button>
	<table border="2" id="mem">
		<%
			Connection con = ConnectionProvider.getCon();
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery("select * from userdb.member");
		%><tr>
			<th>Username</th>
			<th>Passsword</th>
			<th>Email</th>
			<th>Phone</th>
		</tr>
		<%
			while (rs.next()) {
		%>

		<tr>
			<td>
				<%
					out.println(rs.getString(1));
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
					
				%>
			</td>
			<td>
				<%
					out.println(rs.getInt(4));
					}
				%>
			</td>
		</tr>
	</table>

	<a href="/StudyPoint/Login.jsp"><button type="button" id="usrlog">Logout</button></a>

</body>
</html>