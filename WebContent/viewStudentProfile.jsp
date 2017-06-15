<%@page import="java.sql.ResultSet"%>
<%@page import="dao.StudentDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">
.photo
{
width: 100px;
height: 100px;
margin: 0px auto;
border: 1px solid;
box-shadow: 2px 2px 5px yellow;
}
</style>
	<meta charset="utf-8"/>
	<title>Student Panel</title>
	
	<link rel="stylesheet" href="css/layout.css" type="text/css" media="screen" />
	<!--[if lt IE 9]>
	<link rel="stylesheet" href="css/ie.css" type="text/css" media="screen" />
	<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->
	<script src="js/jquery-1.5.2.min.js" type="text/javascript"></script>
	<script src="js/hideshow.js" type="text/javascript"></script>
	<script src="js/jquery.tablesorter.min.js" type="text/javascript"></script>
	<script type="text/javascript" src="js/jquery.equalHeight.js"></script>
	<script type="text/javascript">
	$(document).ready(function() 
    	{ 
      	  $(".tablesorter").tablesorter(); 
   	 } 
	);
	$(document).ready(function() {

	//When page loads...
	$(".tab_content").hide(); //Hide all content
	$("ul.tabs li:first").addClass("active").show(); //Activate first tab
	$(".tab_content:first").show(); //Show first tab content

	//On Click Event
	$("ul.tabs li").click(function() {

		$("ul.tabs li").removeClass("active"); //Remove any "active" class
		$(this).addClass("active"); //Add "active" class to selected tab
		$(".tab_content").hide(); //Hide all tab content

		var activeTab = $(this).find("a").attr("href"); //Find the href attribute value to identify the active tab + content
		$(activeTab).fadeIn(); //Fade in the active ID content
		return false;
	});

});
    </script>
    <script type="text/javascript">
    $(function(){
        $('.column').equalHeight();
    });
</script>

</head>

<body>
		<section id="secondary_bar">
		<div class="user">
		<%
		String mail=request.getParameter("id");
		%>
						<!-- <a class="logout_user" href="#" title="Logout">Logout</a> -->
		</div>
		<div class="breadcrumbs_container">
			<article class="breadcrumbs"><a href="index.html">Student</a> <div class="breadcrumb_divider"></div> <a class="current">Home Page</a></article>
		</div>
	</section><!-- end of secondary bar -->
	
	
		
	
<section id="main" class="column">
		
	  <h4 style="text-align: center;"><img src="images/igit_Head.png"></h4>
		
  <article class="module width_full">
		<div class="module_content" id="mainContent">
		<h2>MY PROFILE</h2>
		<hr>
		<%
		StudentDAO dao=new StudentDAO();
		ResultSet rs=dao.viewStudentDataPersonal(mail);
		if(rs.next())
		{
			%>
			<table width="700">
			<tr>
			<th align="left">Registration Number :</th><td><%=rs.getInt(1)%></td>
			</tr>
			<tr>
			<th align="left">Name :</th><td><%=rs.getString(2)%></td>
			</tr>
			<tr>
			<th align="left">Father's Name :</th><td><%=rs.getString(3)%></td>
			</tr>
			<tr>
			<th align="left">Date Of Birth :</th><td><%=rs.getString(4)%></td>
			</tr>
			<tr>
			<th align="left">Mail :</th><td><%=rs.getString(5)%></td>
			</tr>
			<tr>
			<th align="left">Mobile :</th><td><%=rs.getString(6)%></td>
			</tr>
			<tr>
			<th align="left">Course :</th><td><%=rs.getString(8)%></td>
			</tr>
			<tr>
			<th align="left">Branch :</th><td><%=rs.getString(9)%></td>
			</tr>
			<tr>
			<th align="left">Admission Year :</th><td><%=rs.getString(10)%></td>
			</tr>
			<tr>
			<th align="left">Address :</th>
			<td>
			<div style="border: 1px solid rgba(0, 0, 255, 0.1);line-height: 5px;">
			<p><%=rs.getString(11)%></p>
			<p><%=rs.getString(12)%></p>
			<p><%=rs.getString(13)%></p>
			<p><%=rs.getString(14)%></p>
			</div>
			</td>
			</tr>
			<tr>
			<th align="left">Father Name :</th><td><%=rs.getString(3)%></td>
			</tr>
			<tr>
			<th align="left">Father's Contact :</th><td><%=rs.getString(15)%></td>
			</tr>
			<tr>
			<th align="left">Local Gudian's Name :</th><td><%=rs.getString(16)%></td>
			</tr>
			<tr>
			<th align="left">Local Gudian's Contact :</th><td><%=rs.getString(17)%></td>
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
<script type="text/javascript" src="js/main_script.js"></script> 
</html>