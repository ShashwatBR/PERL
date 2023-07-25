
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Get Password from database</title>
</head>
<body>
<%@ page import="java.sql.*"%>
<form method="post">
Enter the username : <input type="text" name="txtUser"/>
<input type="submit" value="Submit"/>
</form>
<%
String username=request.getParameter("txtUser");
if(username!=null && username.length()>0){
try{
Class.forName("org.apache.derby.jdbc.ClientDriver");
Connection conn=DriverManager.getConnection("jdbc:derby://localhost:1527/e-book","sanjay","Sanjay@12");
Statement st=conn.createStatement();
ResultSet rs=st.executeQuery("select * from Publish where uname='"+username+"'");
%>

   
<table border="1">
<tr>
<th>Username</th>
<th>Password</th>
</tr>
<%
while(rs.next()){
%>
<tr>
<td><%=rs.getString("uname")%></td>
<td><%=rs.getString("book")%></td>
</tr>
<%
}
%>
</table>
<%
}catch(Exception e){
out.println(e);
}
}

%>

</body>
</html>