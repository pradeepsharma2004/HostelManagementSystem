<%@page import="dao.AdminDAO"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Hostel Generate Page..</title>
</head>
<body>
<form action="createHostel" method="post">
<table>
<tr>
<th align="left">Enter Hostel Name :</th>
<td><input type="text" name="hostel" size="30"></td>
</tr>
<tr>
<th align="left">Enter Hostel Type :</th>
<td>
<select name="hostelType">
<option>Boys</option>
<option>Girls</option>
</select>
</td>
</tr>
<tr>
<th align="left">Student Year :</th>
<td>
<select name="year">
<option>1st</option>
<option>2nd</option>
<option>3rd</option>
<option>4th</option>
</select>
</td>
</tr>
<tr>
<td></td> 
<td><input type="submit" value="Genetrate Hostel"></td>
</tr>
</table>
</form>

</body>
</html>