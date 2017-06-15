<%@page import="java.sql.ResultSet"%>
<%@page import="dao.AdminDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/table.css">
<link rel="stylesheet" type="text/css" href="css/form-styles.css">
</head>
<body>
<table>
<tr>
<td colspan="2" class="headingBar" align="left">
View Student Grievance :
</td>
</tr>

<tr>
<th>Sl. No.</th>
<th>Date</th>
<th>Time</th>
<th>Heading</th>
<th>Description</th>
<th>Registration Number</th>
</tr>
<%
int i=1;
AdminDAO dao=new AdminDAO();
ResultSet rs=dao.viewGrievance();
while(rs.next())
{
%>
	<tr>
	<td><%=i%></td>
	<td><%=rs.getString(2) %></td>
	<td><%=rs.getString(3) %></td>
	<td><%=rs.getString(4) %></td>
	<td><%=rs.getString(5) %></td>
	<td><%=rs.getString(6) %></td>
<%
i++;
}
%>
</table>
</body>
</html>