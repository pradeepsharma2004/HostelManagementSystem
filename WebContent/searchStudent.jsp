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
<form method="post" action="searchStudentData.jsp">
<table>
<tr>
<td colspan="2" class="headingBar" align="left">
Search Student Details :
</td>
</tr>
<tr height="10"><td colspan="2"></td></tr>
<tr>
</tr>
<tr>
<th align="left">Enter Registration Number/ Mobile Number :</th>
<td><input type="text" name="data" class="shadow" size="40"></td>
</tr>

<tr>
<td class="label"></td>
<td align="left">
<input type="submit" value="Search Student" class="gobutton">
</td>
</tr>
</table>
</form>
</body>
</html>