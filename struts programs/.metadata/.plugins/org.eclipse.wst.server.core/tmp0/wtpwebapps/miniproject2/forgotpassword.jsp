<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Forgot Password</title>
<style type="text/css">
.button-submit {background-color: #24871b;color: white;text-align: center;font-size: 15px;border-radius: 2px;}

div {
  border-radius: 15px;
  background-color: #f2f2f2;
  padding: 20px;
}
h2{
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
</style>
</head>
<body>
<div align="center">
<br>
<h2>Recover Password</h2>
<br>
<s:form action="forgot">
<s:textfield label="Enter Email address" name=" " />
<s:submit cssClass="button-submit" value="submit" />
</s:form>
</div>
</body>
</html>