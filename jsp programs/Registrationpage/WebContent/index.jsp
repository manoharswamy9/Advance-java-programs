<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
<meta charset="ISO-8859-1">
<title>Register here</title>
</head>
<body>
<form name="frm" action="usercontroller" method="post" onsubmit="return validate()">
            <table style="with: 50%">
                <tr>
                    <td>First Name</td>
                    <td><input type="text" name="firstname" required/></td>
                </tr>
                <tr>
                    <td>Last Name</td>
                    <td><input type="text" name="lastname" required/></td>
                </tr>
                <tr>
                    <td>Company Name</td>
                    <td><input type="text" name="companyname" required/></td>
                </tr>
                <tr>
                    <td>City</td>
                    <td><input type="text" name="city" required/></td>
                </tr>
                <tr>
                    <td>Country</td>
                    <td><input type="text" name="country" required/></td>
                </tr>
                <tr>
                    <td colspan="2"><input type="submit" value="Submit" /></td>
            </table>
        </form>
</body>
</html>