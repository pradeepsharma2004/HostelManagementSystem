<%@page import="java.sql.ResultSet"%>
<%@page import="dao.StudentDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Change Username</title>
</head>
<body>
	<form action="ChangeStudentusername.jsp">
		Enter Registration Number:<input type="text" placeholder="enter here" name="studentReg_no"><br>
		Enter new Username:<input type="text" placeholder="enter here" name="studentNewUsername"><br>
		<input type="submit" name="submit">
	</form>
	<%
		String Regno=request.getParameter("studentReg_no");
	    String new_mail=request.getParameter("studentNewUsername");
		StudentDAO dao=new StudentDAO();
		String result;
		result=dao.updateUsername(Regno,new_mail);
		out.print(result);
	%>
</body>
</html>