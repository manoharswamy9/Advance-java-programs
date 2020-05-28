<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>
</head>
<body>
	<jsp:include page="afterlogin.jsp"></jsp:include>
	<span style="color: green;"><s:property value="msg" /></span>
	<h2>Welcome,<s:property value="#session.name" /></h2>
	
	<h2>****Profile Information****</h2>
	<table>
		<tr>
			<th>First Name:</th>
			<td><s:property value="#session.fn"/></td>
		</tr>
		<tr>
			<th>Last Name:</th>
			<td><s:property value="#session.ln"/></td>
		</tr>
		<tr>
			<th>Company Name:</th>
			<td><s:property value="#session.cn"/></td>
		</tr>
		<tr>
			<th>City:</th>
			<td><s:property value="#session.c"/></td>
		</tr>
		<tr>
			<th>Country:</th>
			<td><s:property value="#session.co"/></td>
		</tr>
	</table>
	
</body>
</html>
