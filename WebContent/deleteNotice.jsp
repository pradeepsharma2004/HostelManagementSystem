<%@page import="dao.AdminDAO"%>
<%
int id=Integer.parseInt(request.getParameter("id"));
AdminDAO dao=new AdminDAO();
String result=dao.deleteNotice(id);
out.println(result);
%>