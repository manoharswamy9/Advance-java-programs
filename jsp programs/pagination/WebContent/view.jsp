<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.*, pagination.Emp, pagination.EmpDao " %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
String spageid=request.getParameter("page");  
int pageid=Integer.parseInt(spageid);  
int total=5;  
if(pageid==1){}  
else{  
    pageid=pageid-1;  
    pageid=pageid*total+1;  
}  
List<Emp> list = EmpDao.getRecords(pageid,total);  
  
out.print("<h1>Page No: "+spageid+"</h1>");  
out.print("<table border='1' cellpadding='4' width='60%'>");  
out.print("<tr><th>Id</th><th>Name</th><th>Salary</th>");  
for(Emp e:list){  
    out.print("<tr><td>"+e.getid()+"</td><td>"+e.getname()+"</td> <td>"+e.getsalary()+"</td></tr>");  
}  
out.print("</table>");  
%>  
<a href="view.jsp?page=1">1</a>  
<a href="view.jsp?page=2">2</a>  
<a href="view.jsp?page=3">3</a>  
</body>
</html>