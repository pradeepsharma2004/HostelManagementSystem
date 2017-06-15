<%@page import="java.sql.ResultSet"%>
<%@page import="dao.WardenDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Warden Profile</title>
</head>
<body>
	<section id="secondary_bar">
		<div class="user">
		<%
		String mail=request.getParameter("id");
		%>
						<!-- <a class="logout_user" href="#" title="Logout">Logout</a> -->
		</div>
	</section><!-- end of secondary bar -->
	
	
		
	
<section id="main" class="column">
		
	  <h4 style="text-align: center;"><img src="images/igit_Head.png"></h4>
		
  <article class="module width_full">
		<div class="module_content" id="mainContent">
		<h2>MY PROFILE</h2>
		<hr>
		<%
		WardenDAO dao=new WardenDAO();
		ResultSet rs=dao.viewWardenDataPersonal(mail);
		if(rs.next())
		{
			%>
			<table width="700">
			<tr>
			<th align="left">Name :</th><td><%=rs.getString(1)%></td>
			</tr>
			<tr>
			<th align="left">Mail-id :</th><td><%=rs.getString(2)%></td>
			</tr>
			<tr>
			<th align="left">Mobile-No. :</th><td><%=rs.getString(3)%></td>
			</tr>
			<tr>
			<th align="left">Department :</th><td><%=rs.getString(5)%></td>
			</tr>
			</table>
			<%
		}
		%>		
		</div>
	  </article><!-- end of stats article -->
		<!-- end of content manager article -->
		<!-- end of messages article -->
		
	 
<!-- end of post new article -->
		
  <!-- end of styles article -->
	</section>

<br>
<div style="margin: 0px auto">
<input type="button" value="Click Here To Go Back" onclick="history.back();" />
</div>

</body>
</html>