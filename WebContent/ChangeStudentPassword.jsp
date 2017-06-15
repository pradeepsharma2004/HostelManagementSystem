<%@page import="dao.StudentDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="ChangeStudentPassword.jsp">
		Enter Registration Number:<input type="text" placeholder="enter here" name="Reg_no"><br>
		Enter current password:<input type="text" placeholder="enter here" name="studentPassword"><br>
		Enter new password:<input type="text" placeholder="enter here" name="studentNewPassword"><br>
		<input type="submit" name="submit">
	</form>
	<%
		String new_password=request.getParameter("studentNewPassword");
	    String old_password=request.getParameter("studentPassword");
	    String regno=request.getParameter("Reg_no");
		StudentDAO dao=new StudentDAO();
		String result;
		result=dao.updatePassword(regno,new_password,old_password);
		out.print(result);
	%>

</body>
</html>