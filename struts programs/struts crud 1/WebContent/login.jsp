<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>Login page</title>
<style type="text/css">
.button-register {background-color: #24871b;color: white;text-align: center;font-size: 15px;border-radius: 2px;}

div {
  border-radius: 15px;
  background-color: #f2f2f2;
  padding: 20px;
}
h3{
font-size:40px;
background-color: #5474a8;
width: 50%;
text-align: center;
}
form {
  width: 40%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
  font-size: 25px;
  background-color: #f2f2f2;
  text-align: center;
}
.content {
width:15%;
font-size: 20px;

}
</style>
</head>
<body>
<div align="center">
<br>
<br>
<br>
<h3>Login Page</h3>
<br>
<s:form action="login">
<s:textfield name="users.username" label="UserName" placeholder="Enter username"></s:textfield>
<s:password name="users.password" label="Password" placeholder="Enter password"></s:password>

<s:submit cssClass="button-register" value="login"></s:submit>

</s:form>
<div class="content">
<a href="forgotpassword">Forgot Password</a>
</div>
</div>
</body>
</html>