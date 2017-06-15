<%@page import="dao.AdminDAO"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Reset Admin Password</title>
</head>
<body>
	<form action="ResetAdminPassword.jsp">
		Enter Mail-id:<input type="text" placeholder="enter here" name="adminMail"><br>
		Enter current password:<input type="text" placeholder="enter here" name="adminPassword"><br>
		Enter new password:<input type="text" placeholder="enter here" name="adminNewPassword"><br>
		<input type="submit" name="submit">
	</form>
	<%
		String new_password=request.getParameter("adminNewPassword");
	    String old_password=request.getParameter("adminPassword");
	    String mail=request.getParameter("adminMail");
		AdminDAO dao=new AdminDAO();
		ResultSet rs=dao.Username();//multiple user name should not be there
		String result;
		result=dao.updatePassword(mail,new_password,old_password);
		out.print(result);
	%>
</body>
</html>