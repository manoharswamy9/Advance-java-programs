<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>HOME PAGE</title>
<style type="text/css">
.button-register {background-color: green;color: white;text-align: center;font-size: 25px;border-radius: 8px;}
.button-login {background-color: red;color: white;text-align: center;font-size: 25px;border-radius: 8px;}
div {
  border-radius: 15px;
  background-color: #f2f2f2;
  padding: 20px;
}
</style>
</head>
<body>
<div align="center">
<br>
<h2>Welcome to ABC Portal</h2>
<br>

<a href="regiterfrm"><button class="button-register" type="button">Register</button></a>|
	<a href="loginfrm"><button class="button-login" type="button">Login</button></a>
	<span style="color: red;"><s:property value="msg" /></span>
	</div>
</body>
</html>