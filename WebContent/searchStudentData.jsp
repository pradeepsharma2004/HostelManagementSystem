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
<%@page import="java.sql.*" %>
<%
int regNumber=Integer.parseInt(request.getParameter("data"));
StudentDAO dao=new StudentDAO();
ResultSet rs=dao.viewStudentData(regNumber);
if(rs.next())
{
	%>
	<table>
<tr>
<td colspan="2" class="headingBar" align="left">
Student Details :
</td>
</tr>
<tr height="10"><td colspan="2"></td></tr>
<tr>
<td class="label">Registration Number :</td>
<td align="left">
<input type="text" class="shadow" name="sreg" size="45" disabled="disabled" value="<%=rs.getInt(1)%>"/>
</td>
</tr>

<tr>
<td class="label">Name Of Student :</td>
<td align="left">
<input type="text" class="shadow" name="sname" size="45" disabled="disabled" value="<%=rs.getString(2)%>"/>
</td>
</tr>

<tr>
<td class="label">Father's Name :</td>
<td align="left">
<input type="text" class="shadow" name="sfname" size="45" disabled="disabled" value="<%=rs.getString(3)%>"/>
</td>
</tr>

<tr>
<td class="label">Mobile no :</td>
<td align="left">
<input type="text" class="shadow" name="sfname" size="45" disabled="disabled" value="<%=rs.getString(6)%>"/>
</td>
</tr>

<tr>
<td class="label">Course :</td>
<td align="left">
<input type="text" class="shadow" name="sfname" size="45" disabled="disabled" value="<%=rs.getString(8)%>"/>
</td>
</tr>

<tr>
<td class="label">Branch :</td>
<td align="left">
<input type="text" class="shadow" name="sfname" size="45" disabled="disabled" value="<%=rs.getString(9)%>"/>
</td>
</tr>

<tr>
<td class="label">Address :</td>
<td align="left">
<textarea rows="4" cols="42" disabled="disabled" class="shadow">
Address : <%=rs.getString(11)%>
State : <%=rs.getString(12)%>
District : <%=rs.getString(13)%>
Pin: <%=rs.getString(14)%>
</textarea>
</td>
</tr>

<tr>
<td class="label">Father's contact :</td>
<td align="left">
<input type="text" class="shadow" name="sfname" size="45" disabled="disabled" value="<%=rs.getString(15)%>"/>
</td>
</tr>

<tr>
<td class="label">Local guardian :</td>
<td align="left">
<input type="text" class="shadow" name="sfname" size="45" disabled="disabled" value="<%=rs.getString(16)%>"/>
</td>
</tr>

<tr>
<td class="label">Local guardian contact :</td>
<td align="left">
<input type="text" class="shadow" name="sfname" size="45" disabled="disabled" value="<%=rs.getString(17)%>"/>
</td>
</tr>
</table>
	<%
}
%>
<br>
<div style="margin: 0px auto">
<input type="button" value="Click Here To Go Back" onclick="history.back();" />
</div>
</body>
</html>