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
			<p><%=request.getAttribute("name") %></p>
			<!-- <a class="logout_user" href="#" title="Logout">Logout</a> -->
		</div>
		<div class="breadcrumbs_container">
			<article class="breadcrumbs"><a href="index.html">Student</a> <div class="breadcrumb_divider"></div> <a class="current">Home Page</a></article>
		</div>
	</section><!-- end of secondary bar -->
	
	<aside id="sidebar" class="column">
		<div class="photo">
		<img alt="" src="images/adminPhoto.png">
		</div>
		<hr/>
		<h3>My Profile</h3>
		<ul class="toggle">
			<li class="icn_add_user"><a href="viewStudentProfile.jsp">View Profile</a></li>
			<li class="icn_profile"><a href="#">View Guardian/Visitor Details</a></li>
			<li class="icn_settings"><a href="#">View Attendance and Leave</a></li>
			<li class="icn_folder"><a href="viewNoticeStudent.jsp">View Notice</a></li>
			<li class="icn_photo"><a href="postGrievances.jsp">Send Grievance</a></li>
		</ul>
		<h3>Hostel Payment</h3>
		<ul class="toggle">
			<li class="icn_pay"><a href="#">Payment Details</a></li>
			<li class="icn_payOnline"><a href="#">Pay Online</a></li>
		</ul>
		<h3>Settings</h3>
		<ul class="toggle">
			<li class="icn_security"><a href="studentSecurity.jsp">Security</a></li>
			<li class="icn_jump_back"><a href="logout.jsp">Logout</a></li>
		</ul>
		
		<footer>
			<hr />
			<p><strong>Copyright &copy;Biswaranjan Mohapatra</strong></p>
			<p>Theme by <a href="http://www.biswaranjan.in">Biswaranjan</a></p>
		</footer>
	</aside><!-- end of sidebar -->
	
<section id="main" class="column">
		
	<!--   <h4 style="text-align: center;"><img src="images/igit_Head.png"></h4> -->
		
  <article class="module width_full">
		<div class="module_content" id="mainContent">	
		<jsp:include page="home.jsp"/>	
		</div>
	  </article><!-- end of stats article -->
		<!-- end of content manager article -->
		<!-- end of messages article -->
		
	 
<!-- end of post new article -->
		
  <!-- end of styles article -->
	</section>


</body>
<script type="text/javascript" src="js/main_script.js"></script> 
</html>