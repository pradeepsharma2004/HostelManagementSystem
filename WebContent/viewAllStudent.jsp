<%@page import="dao.StudentDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/form-styles.css">
</head>
<body>
<%@page import="java.util.*" %>
<%@page import="java.sql.*" %>
<%
Calendar c=Calendar.getInstance();
int year=c.get(Calendar.YEAR);
StudentDAO dao=new StudentDAO();
%>
<form method="post" action="viewStudent.jsp">
<table>
<tr>
<td colspan="2" class="headingBar" align="left">
View Student Data :
</td>
</tr>
<tr height="10"><td colspan="2"></td></tr>
<tr>
<td class="label">Course :</td>
<td align="left">
<select class="shadow" style="width:300px" name="course">
<option>BTech</option>
<option>MCA</option>
<option>MTech</option>
</select>
</td>
</tr>

<tr>
<td class="label">Branch :</td>
<td align="left">
<select class="shadow" style="width:300px" name="branch">
<option>CSE</option>
<option>IT</option>
<option>Mechanical</option>
<option>Civil</option>
<option>Electrical</option>
</select>
</td>
</tr>
<tr>
<td class="label">Year Of Admission :</td>
<td align="left">
<select class="shadow" style="width:200px" name="addYear">
<%
int i;
for(i=year-4;i<=year;i++)
{
	%>
	<option><%=i %></option>
	<%
}
%>
</select>
</td>
</tr>
<tr>
<td class="label"></td>
<td align="left">
<input type="submit" value="Search Student" class="gobutton">
</td>
</tr>
</table>
</form>
<table>
<tr height="50"><td colspan="2"></td></tr>
<tr>
<td colspan="2"  align="left" width="300">
<a href="viewAllStudentData.jsp" target="_blank">Click Here to View All Students</a>
</td>
</tr>
<tr height="10"><td colspan="2"></td></tr>
<tr>
</tr>
</table>
</body>
</html>