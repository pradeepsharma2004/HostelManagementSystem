<%@page import="dao.AdminDAO"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
table
{
text-align:center;
}

</style>
</head>
<body>
<form action="roomcreate" method="post">
<fieldset>
<legend>Generate Room For Hostel : </legend>
<table><tr><th align="left">Select Hostel : </th>
<td align="left">
<select name="hostelName">
<%
AdminDAO dao=new AdminDAO();
ResultSet rs=dao.showTables();
while(rs.next())
{
	%>
	<option><%=rs.getString(3) %></option>
	<%
}
%>
</select>
</td>
</tr>
<tr><th align="left">Number of floor in Hostel :</th><td><input type="text" name="floor"></td></tr>
<tr><th align="left">Number of Room in each Floor :</th> <td><input type="text" name="room"></td></tr>
<tr><th align="left">Number of bed in each room :</th><td><input type="text" name="bed"></td></tr>
<tr><th></th><td><input type="submit" value="Submit" ></td></tr>
</table>
</fieldset>
</form>
</body>
</html>