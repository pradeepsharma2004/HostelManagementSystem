<%@page import="dao.AdminDAO"%>
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
<form method="post" action="postNoticeAdmin.jsp">
<table>
<tr>
<td colspan="2" class="headingBar" align="left">
Post Notice :
</td>
</tr>
<tr>
<td class="label">Notice Heading :</td>
<td align="left">
<input type="text" class="shadow" name="noticeHead" size="45"/>
</td>
</tr>
<tr>
<td class="label">Notice Description :</td>
<td align="left">
<textarea rows="3" cols="45" class="shadow" name="noticeDesc"></textarea>
</td>
</tr>
<tr>
<td class="label"></td>
<td align="left">
<input type="submit" value="Register" class="gobutton">&nbsp;<input type="submit" value="Reset" class="gobutton">
</td>
</tr>
</table>
</form>
</body>
</html>