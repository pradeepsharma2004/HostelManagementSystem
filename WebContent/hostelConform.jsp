<%@page import="dao.StudentDAO"%>
<%
int hid=Integer.parseInt(request.getParameter("hId"));
String hName=request.getParameter("hName");
int sreg=Integer.parseInt(request.getParameter("sreg"));
StudentDAO dao=new StudentDAO();
if(dao.hostelAllot(hName, hid, sreg))
{
	out.println("Alloted...");
}
%>