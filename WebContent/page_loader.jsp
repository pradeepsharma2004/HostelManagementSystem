<%
String page1;
switch(request.getParameter("page"))
{
case "#addNewStudent":
	%>
	<jsp:include page="addNewStudent.jsp"/>
	<%
    break;
	
case "#editStudent":
	%>
	<jsp:include page="editStudent.jsp"/>
	<%
    break;

case "#viewAllStudent":
	%>
	<jsp:include page="viewAllStudent.jsp"/>
	<%
    break;
	
case "#createAdministrator":
	%>
	<jsp:include page="createAdministrator.jsp"/>
	<%
    break;
case "#allotHostel":
	%>
	<jsp:include page="allotHostel.jsp"/>
	<%
    break;
case "#hostelFeeDiposit":
	%>
	<jsp:include page="hostelFeeDiposit.jsp"/>
	<%
    break;
case "#addHostel":
	%>
	<jsp:include page="addHostel.jsp"/>
	<%
    break;
case "#viewHostel":
	%>
	<jsp:include page="viewHostel.jsp"/>
	<%
    break;
	
case "#postNotice":
	%>
	<jsp:include page="postNotice.jsp"/>
	<%
    break;
	
case "#viewNotice":
	%>
	<jsp:include page="viewNotice.jsp"/>
	<%
    break;
	
case "#viewGrievance":
	%>
	<jsp:include page="viewGrievance.jsp"/>
	<%
    break;
case "#logout":
	%>
	<jsp:include page="logout.jsp"/>
	<%
    break;
case "#settingAdmin":
	%>
	<jsp:include page="settingAdmin.jsp"/>
	<%
    break;
	
default:
	%>
	<jsp:include page="home.jsp"/>
	<%
}
%>

