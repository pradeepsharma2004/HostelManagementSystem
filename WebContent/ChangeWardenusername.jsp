<%@page import="dao.WardenDAO"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Change Warden username</title>
</head>
<body>
	<form action="ChangeWardenusername.jsp">
		Enter current Warden's username:<input type="text" placeholder="enter here" name="wardenMail"><br>
		Enter new Warden,s username:<input type="text" placeholder="enter here" name="wardenNewMail"><br>
		<input type="submit" name="submit">
	</form>
	
	<%
		String new_username=request.getParameter("wardenNewMail");
	    String old_username=request.getParameter("wardenMail");
		WardenDAO dao=new WardenDAO();
		String result;
		result=dao.updateUsername(new_username,old_username);
		out.print(result);
	%>
</body>
</html>