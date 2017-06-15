<%@page import="java.sql.ResultSet"%>
<%@page import="dao.AdminDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Reset Warden's password</title>
</head>
<body>
	<form action="ResetWardenPassword.jsp">
		Enter current Warden's username:<input type="text" placeholder="enter here" name="wardenMail"><br>
		<input type="submit" name="submit">
	</form>
	<%
		String mail=request.getParameter("wardenMail");
		AdminDAO dao=new AdminDAO(); 
		String result;
		result=dao.resetWardenPassword(mail);
		out.print(result);
	%>

</body>
</html>