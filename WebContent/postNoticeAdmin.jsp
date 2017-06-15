<%@page import="dao.AdminDAO"%>
<%
String noticeHead=request.getParameter("noticeHead");
String noticeDesc=request.getParameter("noticeDesc");
//out.println(noticeHead);
//out.println(noticeDesc);
AdminDAO dao=new AdminDAO();
if(dao.postNotice(noticeHead, noticeDesc))
{
%>
	<div style="margin: 0px auto">
	<h2>Notice Post Successfully....</h2>
	<input type="button" value="Click Here To Go Back" onclick="history.back();" />
	</div>
<%
}
%>