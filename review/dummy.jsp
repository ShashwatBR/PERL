<%-- 
    Document   : dummy
    Created on : 26 Feb, 2023, 6:38:36 PM
    Author     : swetha
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%

String username=request.getParameter("uname");
String password=request.getParameter("psw");
 
Class.forName("org.apache.derby.jdbc.ClientDriver");
Connection con = DriverManager.getConnection("jdbc:derby://localhost:1527/e-book","sanjay","Sanjay@12");
Statement st1 = con.createStatement();
ResultSet rs=st1.executeQuery("select * from LOGIN_DETAILS where USERNAME='"+username+"' and PASSWORD='"+password+"'");
if(rs.next())
{
	response.sendRedirect("publish1.jsp");
}
else
{
	response.sendRedirect("register.jsp");
}
%>
        <h1>Hello World!</h1>
    </body>
</html>
    
     