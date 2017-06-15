<%@page import="dao.StudentDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Post Grievance</title>
<style type="text/css">
</style>
</head>
<body>
<form action="postGrievance.jsp">
<div style="background-color:#2E0103;color:white;padding:200px;">
<table>
<tr>
<td colspan="2" class="headingBar" align="left">
<h3><b>POST GRIEVANCES :</b></h3>
</td>
</tr>
<tr>
<td class="label">Registration Number :</td>
<td align="left">
<input type="text" class="shadow" placeholder="Enter Regd.no" size="45" name="regno"/>
</td>
</tr>
<tr>
<td class="label">Your Name :</td>
<td align="left">
<input type="text" class="shadow" placeholder="Enter your here" size="45" name="name"/>
</td>
</tr>
<tr>
<td class="label"> Description :</td>
<td align="left">
<textarea rows="3" cols="46" class="shadow" name="grievanceDesc"></textarea>
</td>
</tr>
<tr>
<td class="label"></td>
<td align="left">
<input type="submit" value="Register" class="gobutton">&nbsp;<input type="submit" value="Reset" class="gobutton">
</td>
</tr>
</table>
</div>
</form>
<%
	String reg_no=request.getParameter("regno");
    String name=request.getParameter("name");
    String description=request.getParameter("grievanceDesc");
    String result;
    StudentDAO dao=new StudentDAO();
    result=dao.postGrievance(reg_no, name, description);
   	out.println(result);
%>
</body>
</html>