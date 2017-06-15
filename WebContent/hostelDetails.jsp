<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="dao.AdminDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
		<meta charset="utf-8" />
		<title>Hello</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />

		<!-- bootstrap & fontawesome -->
<style type="text/css">
.main
{
 width: 200px; 
 height: 50px; 
 border: 2px solid red;
 float: right;
 padding: 5px;
 margin: 2px;
 text-align: center;
 box-shadow: 1px 1px 2px cyan;
 font-weight: bold;
 font-size: 12px;
}
.head1
{
}
.head2
{
width: 150px; 
height: 20px;
border: 1px solid red; 
margin: 0px auto;
margin-top: 5px;
box-shadow: 1px 1px 2px gray;
font-size: 10px;
}
</style>
	</head>
<body>
<%
String hostelName=request.getParameter("hName");
AdminDAO dao=new AdminDAO();
ResultSet rs=dao.viewHostelData(hostelName);
while(rs.next())
{
	int s=rs.getInt(5);
	String status="";
	if(s==0)
	status="Not Allorted";
	else
		status=Integer.toString(s);
	%>
	<div class="main">						
	<div>
	<div>Floor-<%=rs.getString(2) %>, Room: <%=rs.getString(3) %>, Bed : <%=rs.getString(4) %></div>
	<div class="head2"><a href="allotHosteltoStudent.jsp?hostelName=<%=hostelName%>&id=<%=rs.getInt(1)%>"><%=status%></a></div>
</div>
</div>
<%
}
%>


									
</body>
</html>