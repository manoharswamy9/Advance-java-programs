<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration</title>
</head>
<body>
	<s:form action="register" method="post">
		<s:textfield label="First Name" name="users.firstname" />
		<s:textfield label="Last Name" name="users.lastname" />
		<s:textfield label="Company Name" name="users.companyname" />
		<s:textfield label="City" name="users.city" />
		<s:textfield label="Country" name="users.country" />
		<s:textfield label="User Name" name="users.username" />
		<s:password label="Password" name="users.password" />
		<s:submit value="Register" />
	</s:form>
</body>
</html>