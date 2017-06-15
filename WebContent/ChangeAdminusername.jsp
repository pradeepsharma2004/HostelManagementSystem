<%@page import="java.sql.ResultSet"%>
<%@page import="dao.AdminDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Change Admin username</title>
</head>
<body>

	<form action="ChangeAdminusername.jsp">
		Enter current mail id:<input type="text" placeholder="enter here" name="adminMail"><br>
		Enter new mail id:<input type="text" placeholder="enter here" name="adminNewMail"><br>
		<input type="submit" name="submit">
	</form>
	<%
		String new_mail=request.getParameter("adminNewMail");
	    String old_mail=request.getParameter("adminMail");
		AdminDAO dao=new AdminDAO();
		ResultSet rs=dao.Username();//multiple user name should not be there
		String result;
		result=dao.updateUsername(new_mail,old_mail);
		out.print(result);
	%>
</body>
</html>