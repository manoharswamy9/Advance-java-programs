<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register</title>
<style type="text/css">
.button-register {background-color: green;color: white;}
.button-report {background-color: #000000;color: white;}
</style>

</head>
<body>
<h2>Struts 2 Create, Read, Update and Delete (CRUD) Example using
JDBC</h2>
<a href="report"><button class="button-report" type="button">Report</button></a>
<s:form action="registeruser" method="post" >
<s:textfield label="Full Name" name="uname" />
<s:textfield label="Email" name="uemail" />
<s:password label="Password" name="upass" />
<s:textfield label="Designation" name="udeg" />
<s:submit cssClass="button-register" value="Register" />
</s:form>
<s:if test="ctr>0">
<span style="color: green;"><s:property value="msg" /></span>
</s:if>
<s:else>
<span style="color: red;"><s:property value="msg" /></span>
</s:else>

</body>
</html>