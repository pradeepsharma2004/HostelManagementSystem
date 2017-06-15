<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/form-styles.css">
</head>
<body>
<form action="staffRegistration" method="post">
<table style="border: 1px solid #C1D0C8;" bgcolor="#f4f7f5" cellpadding="20" cellspacing="0" height="320" width="800" align="center">
    <tr>
        <td align="center" align="top">
<table border="0" width="100%" align="left">
    <tr>
        <td colspan="2" class="headingBar" align="left">
            Staff Details :
        </td>
    </tr>
    <tr height="10"><td colspan="2"></td></tr>
 
    <tr>
        <td class="label">Employee Name :</td>
        <td align="left">
            <input type="text" class="shadow" name="empname" size="45"/>
        </td>
    </tr>
        <tr>
        <td class="label">Employee Mail :</td>
        <td align="left">
            <input type="text" class="shadow" name="empmail" size="45"/>
        </td>
    </tr>
        <tr>
        <td class="label">Password :</td>
        <td align="left">
            <input type="password" class="shadow" name="emppwd" size="45"/>
        </td>
    </tr>
    <tr>
        <td class="label">Employee Mobile :</td>
        <td align="left">
            <input type="text" class="shadow" name="empmobile" size="45"/>
        </td>
    </tr>

        
    <tr>
        <td class="label">Department :</td>
        <td align="left">
            <select name="empdept" class="shadow">
            <option>CSE & IT</option>
            <option>Electrical</option>
            <option>Mechanical</option>
            <option>Civil</option>
            <option>T & P</option>
            <option>Office</option>
            </select>
        </td>
    </tr>
        <tr>
        <td class="label">Role :</td>
        <td align="left">
            <select name="emprole" class="shadow">
            <option>Administrator</option>
            <option>Warden</option>
            </select>
        </td>
    </tr>
    <tr>
    
        <td></td>
        <td><input type="submit" id="gobutton" value="Submit" /></td>
    </tr>
    </table>
</table>
</form>
</body>
</html>