<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
String email=request.getParameter("email");
String password=request.getParameter("password");
if("admin@gmail.com".equals(email) && "admin".equals(password))
{
	session.setAttribute("email",email);
	response.sendRedirect("adminHome.jsp");
}
else
{
	int z=0;
	try
	{
		Connection con=ConnectionProvider.getCon();
		Statement st=con.createStatement();
		ResultSet rs=st.executeQuery("select * from userdb.member where email='"+email+"' and password='"+password+"'");
		while(rs.next())
		{
			z=1;
			session.setAttribute("email", email);
			response.sendRedirect("Homepage.jsp");
		}
		if(z==0)
			response.sendRedirect("Login.jsp?msg=notexist");
	}
	catch(Exception e)
	{
		System.out.println(e);
		response.sendRedirect("Login.jsp?msginvalid");
	}
}
%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="/StudyPoint/Styles.css">
<title>Study point Login</title>
</head>
<body>

</body>
</html>