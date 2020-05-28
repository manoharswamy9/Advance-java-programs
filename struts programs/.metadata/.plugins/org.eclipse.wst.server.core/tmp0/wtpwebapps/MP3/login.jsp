<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
</head>
<body>
<jsp:include page="beforelogin.jsp"></jsp:include>
	<s:form action="login">
		<s:textfield name="users.username" label="Name"></s:textfield>
		<s:password name="users.password" label="Password"></s:password>
		<s:submit value="login"></s:submit>
	</s:form>
</body>
</html>