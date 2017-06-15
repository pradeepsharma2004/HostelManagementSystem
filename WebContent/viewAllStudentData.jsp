<%@page import="java.sql.ResultSet"%>
<%@page import="dao.StudentDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/table.css">
<script>
  function Exit() {
     var x=confirm('Are You sure want to exit:');
     if(x) window.close();
   }
</script>
</head>
<body>
<body>
<table>
<tr>
<th>SN</th>
<th>Reg No.</th>
<th>Name</th>
<th>Father Name</th>
<th>Date Of Birth</th>
<th>Mail</th>
<th>Mobile</th>
<th>Course</th>
<th>Branch</th>
<th>Status</th>
<th></th>
</tr>
<%
String course=request.getParameter("course");
String branch=request.getParameter("branch");
String addYear=request.getParameter("addYear");
StudentDAO dao=new StudentDAO();
ResultSet rs=dao.viewStudentData();
if(rs!=null)
{
int i=1;
while(rs.next())
{
	String status="";
	int st=rs.getInt(19);
	if(st==0)
		status="Pending..";
	else
		status="Active";
		
	%>
	<tr>
	<td><%=i%></td>
	<td><%=rs.getInt(1) %></td>
	<td><%=rs.getString(2) %></td>
	<td><%=rs.getString(3) %></td>
	<td><%=rs.getString(4) %></td>
	<td><%=rs.getString(5) %></td>
	<td><%=rs.getString(6) %></td>
	<td><%=rs.getString(8) %></td>
	<td><%=rs.getString(9) %></td>
	<td><%=status%></td>
	<th><a href="#">View Hostel Details</a></th>
	</tr>
	<%
i++;
}
}
else
{
	out.println("No Data Found..");
}
%>
</table>
<br>
<div style="margin: 0px auto">
<button name='closeIt' onClick="Exit()" >Click to exit </button>
</div>
</body>
</body>
</html>