<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Page</title>
<style type="text/css">
.button-update {background-color: #89a7dd;color: white;text-align: center;font-size: 15px;border-radius: 2px;}

div {
  border-radius: 15px;
  background-color: #f2f2f2;
  padding: 20px;
}
h2{
font-size:40px;
 width: 50%;
}
form {
  width: 50%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
  font-size: 25px;
  background-color: #f2f2f2;
}
</style>

</head>
<body>
<jsp:include page="welcome.jsp"></jsp:include>
<div align="center">
<h2>Update Profile</h2>
<br>
<s:form action="update" method="post">
<s:textfield label="First Name" name="users.firstname"  />
		<s:textfield label="Last Name" name="users.lastname" />
		<s:textfield label="User Name" name="users.username"  />
		<s:password label="Password" name="users.password" />
		<s:textfield label="Company Name" name="users.companyname" />
		<s:textfield label="City" name="users.city" />
		<s:textfield label="Country" name="users.country" />
		
		<s:submit cssClass="button-update" value="Update" />
</s:form>

</div>

</body>
</html>