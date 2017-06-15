<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Page</title>
<link rel="stylesheet" type="text/css" href="css/styles.css">
</head>
<body>
<form action="login" method="post">
<img src="images/igitBanner.png">
<br><br><br>
	<fieldset>
	<legend>Login Screen</legend>
	<div class="loginMain">
	    <div class="photo">
        <img src="images/nastech-admin-icon.png">
        </div>
        <div class="divright_content">
        <table border="0">
        <tr>
        <th class="label">User Id : </th>
        <td><input type="text" name="uid" size="30" class="shadow"></td>
        </tr>
        <tr>
        <th class="label">Password : </th>
        <td><input type="password" name="pwd" size="30" class="shadow"></td>
        </tr>
        <tr>
        <th class="label">Login As : </th>
        <td>
        <select class="shadow" name="loginAs">
        <option>Administrator</option>
        <option>Student</option>
        <option>Warden</option>
        </select> 
        </td>
        </tr>
        <tr>
        <td></td>
        <td><input type="submit" value="Submit" id="gobutton"></td>
        </tr>
        </table>
        </div>
		</div>
	</fieldset>   
	</form> 
</body>
</html>