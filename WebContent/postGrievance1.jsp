<%@page import="dao.StudentDAO"%>
<%
	String reg_no=request.getParameter("regno");
    String name=request.getParameter("name");
    String description=request.getParameter("grievanceDesc");
    String result;
    StudentDAO dao=new StudentDAO();
    dao.postGrievance(reg_no,name,description);
%>