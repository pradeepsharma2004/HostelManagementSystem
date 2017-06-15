<%@page import="java.sql.ResultSet"%>
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
<%
int regNumber=Integer.parseInt(request.getParameter("regNum"));
StudentDAO dao=new StudentDAO();
ResultSet rs=dao.viewStudentData(regNumber);
if(rs.next())
{
	%>
	<input type="text" name="sName" value="<%=rs.getString(2)%>"><br>
	<input type="text" name="fName" value="<%=rs.getString(3)%>"><br>
	<input type="text" name="dob" value="<%=rs.getString(4)%>"><br>
	<input type="text" name="mail" value="<%=rs.getString(5)%>"><br>
	<input type="text" name="mNumber" value="<%=rs.getString(6)%>"><br>
	<input type="text" name="course" value="<%=rs.getString(8)%>"><br>
	<input type="text" name="branch" value="<%=rs.getString(9)%>"><br>
	<input type="text" name="yearofadd" value="<%=rs.getString(10)%>"><br>
	<input type="text" name="address" value="<%=rs.getString(11)%>"><br>
	<input type="text" name="state" value="<%=rs.getString(12)%>"><br>
	<input type="text" name="dist" value="<%=rs.getString(13)%>"><br>
	<input type="text" name="pin" value="<%=rs.getString(14)%>"><br>
	<input type="text" name="fcNumber" value="<%=rs.getString(15)%>"><br>
	<input type="text" name="lGudian" value="<%=rs.getString(16)%>"><br>
	<input type="text" name="lGudianNumber" value="<%=rs.getString(17)%>"><br>
	<input type="text" name="photo" value="<%=rs.getBlob(18)%>"><br>
	<input type="text" name="status" value="<%=rs.getInt(19)%>"><br> 
	<%
}
%>
</body>
</html>