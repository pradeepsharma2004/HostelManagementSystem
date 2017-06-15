<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page import="java.util.*" %>
<%@page import="java.sql.*" %>
<%
Calendar c=Calendar.getInstance();
int year=c.get(Calendar.YEAR);
%>
<form method="post" action="studentRegistration">
<table>
<tr>
<td colspan="2" class="headingBar" align="left">
Student Registration Form :
</td>
</tr>
<tr height="10"><td colspan="2"></td></tr>
<tr>
<td class="label">Registration Number :</td>
<td align="left">
<input type="text" class="shadow" name="sreg" size="45"/>
</td>
</tr>

<tr>
<td class="label">Name Of Student :</td>
<td align="left">
<input type="text" class="shadow" name="sname" size="45"/>
</td>
</tr>

<tr>
<td class="label">Father's Name :</td>
<td align="left">
<input type="text" class="shadow" name="sfname" size="45"/>
</td>
</tr>

<tr>
<td class="label">Date of Birth :</td>
<td align="left">
<select class="shadow" name="day">
<option value="">DAY</option>
<% 
int j;
for(j=1;j<=31;j++)
{
	%>
	<option value="<%=j %>"><%=j %></option>
	<%
}
%>
</select>

<select class="shadow" name="month">
<option value="">Month</option>
<% 
String month[]={"Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sept","Oct","Nov","Dec"};
for(int m=0;m<month.length;m++)
{
	%>
	<option value="<%=month[m] %>"><%=month[m] %></option>
	<%
}
%>
</select>

<select class="shadow" name="year">
<option value="">Year</option>
<% 
for(int y=1980;y<=year;y++)
{
	%>
	<option value="<%=y %>"><%=y %></option>
	<%
}
%>
</select>
</td>
</tr>

<tr>
<td class="label">Mail :</td>
<td align="left">
<input type="text" class="shadow" name="smail" size="45"/>
</td>
</tr>

<tr>
<td class="label">Mobile :</td>
<td align="left">
<input type="text" class="shadow" name="smobile" size="45"/>
</td>
</tr>

<tr>
<td class="label">Password :</td>
<td align="left">
<input type="password" class="shadow" name="spassword" size="45"/>
</td>
</tr>

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
<td class="label">Address :</td>
<td align="left">
<textarea rows="2" cols="40" class="shadow" name="address"></textarea>
</td>
</tr>

<tr>
<td class="label">State :</td>
<td align="left">
<select class="shadow" style="width:200px" name="state">

</select>
</td>
</tr>

<tr>
<td class="label">District :</td>
<td align="left">
<select class="shadow" style="width:200px" name="district">

</select>
</td>
</tr>

<tr>
<td class="label">Pin :</td>
<td align="left">
<input type="text" class="shadow" name="spin" size="45"/>
</td>
</tr>

<tr>
<td class="label">Father's Contact Number :</td>
<td align="left">
<input type="text" class="shadow" name="sfather" size="45"/>
</td>
</tr>

<tr>
<td class="label">Local Guardian Name :</td>
<td align="left">
<input type="text" class="shadow" name="sGuardian" size="45"/>
</td>
</tr>
<tr>
<td class="label">Local Guardian Contact Number :</td>
<td align="left">
<input type="text" class="shadow" name="sGuardianContact" size="45"/>
</td>
</tr>
<tr>
<tr>
<td class="label">Upload Photo :</td>
<td align="left">
<input type="file" class="shadow" size="45"/>
</td>
</tr>
<tr>
<tr>
<td class="label"></td>
<td align="left">
<input type="submit" value="Register" class="gobutton">&nbsp;<input type="submit" value="Reset" class="gobutton">
</td>
</tr>
<tr>
</table>
</form>
</body>
</html>