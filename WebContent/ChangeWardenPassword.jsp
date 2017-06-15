<%@page import="java.sql.ResultSet"%>
<%@page import="dao.WardenDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Change Warden Password</title>
</head>
<body>
	<form action="ResetAdminPassword.jsp">
		Enter current password:<input type="text" placeholder="enter here" name="wardenPassword"><br>
		Enter new password:<input type="text" placeholder="enter here" name="wardenNewPassword"><br>
		<input type="submit" name="submit">
	</form>
	<%
		String new_password=request.getParameter("wardenNewPassword");
	    String old_password=request.getParameter("wardenPassword");
		WardenDAO dao=new WardenDAO();
		String result;
		result=dao.updatePassword(new_password,old_password);
		out.print(result);
	%>
</body>
</html>