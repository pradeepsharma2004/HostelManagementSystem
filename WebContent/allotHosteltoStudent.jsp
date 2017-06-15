<%@page import="java.sql.ResultSet"%>
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
<%
String hostelName=request.getParameter("hostelName");
int id=Integer.parseInt(request.getParameter("id"));
%>
<form method="post" action="hostelConform.jsp">
<input type="hidden" value="<%=hostelName%>" name="hName">
<input type="hidden" value="<%=id%>" name="hId">
<table align="center">
<tr>
<td colspan="3" class="headingBar" align="left">
Hostel allotment Page :
</td>
</tr>
<tr height="10"><td colspan="2"></td></tr>
<tr>
<td class="label">Hostel Name :</td>
<td align="left">
<input type="text" class="shadow" name="sreg" size="45" disabled="disabled" value="<%=hostelName%>"/>
</td>
</tr>
<tr>
<td class="label">Registration Number :</td>
<td align="left">
<select class="shadow" style="width:200px" name="sreg">
<option value="">-Select Registration Number-</option>
<%
StudentDAO dao=new StudentDAO();
ResultSet rs=dao.viewStudentData();
while(rs.next())
{
	%>
	<option><%=rs.getInt(1) %></option>
	<%
}
%>
</select>
</td>
<td>
<input type="submit" value="Conform" class="gobutton">
</td>
</tr>
</table>
</form>
</body>
</html>