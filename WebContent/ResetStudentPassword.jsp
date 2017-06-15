<%@page import="dao.WardenDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="ResetStudentPassword.jsp">
		Enter current Student's Registration Number:<input type="text" placeholder="enter here" name="rno"><br>
		<input type="submit" name="submit">
	</form>
	<%
		String reg_no=request.getParameter("rno");
		WardenDAO dao=new WardenDAO();
		String result;
		result=dao.resetStudentPassword(reg_no);//error
		out.print(result);
	%>

</body>
</html>