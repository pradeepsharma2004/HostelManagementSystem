<%@page import="dao.AdminDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link type="text/css" rel="stylesheet" href="css/table.css">
</head>
<body>
<h1 style="text-align: center;">Hostel Details</h1>
<hr>
<%@page import="java.sql.*" %>
<table align="center">
<tr>
<th>Sl. No.</th><th>Name Of Hostel</th><th>Hostel Type</th><th>Hostel For</th><th></th>
</tr>
<%
AdminDAO dao=new AdminDAO();
ResultSet rs=dao.showTables();
int i=1;
while(rs.next())
{
	%>
	<tr>
	<td><%=i%></td>
	<td><%=rs.getString(2)%></td>
	<td><%=rs.getString(4)%></td>
	<td><%=rs.getString(5)%></td>
	<td><a href="hostelDetails.jsp?hName=<%=rs.getString(3)%>" target="_blank">Hostel Details</a></td>
	</tr>
	<%
	i++;
}
%>
</table>
</body>
</html>