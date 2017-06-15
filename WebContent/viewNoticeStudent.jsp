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
</head>
<body>
<table>
<tr>
<th>Sl. No.</th>
<th>Notice date</th>
<th>Heading</th>
<th>Description</th>
<th></th>
</tr>
<%
int i=1;
AdminDAO dao=new AdminDAO();
ResultSet rs=dao.viewNotices();
while(rs.next())
{
%>
	<tr>
	<td><%=i%></td>
	<td><%=rs.getString(2) %></td>
	<td><%=rs.getString(3) %></td>
	<td><%=rs.getString(4) %></td>
<%
i++;
}
%>
</table>
</body>
</html>