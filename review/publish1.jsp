<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>


<!DOCTYPE html>
<html>
  <head>
  <link rel="stylesheet" href="butt.css">
</head>
<style>
   input[type=text], select {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}
input[type=submit] {
  width: 100%;
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type=submit]:hover {
  background-color: #45a049;
}

div {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
}
body{
    background-color: violet;
}
</style>
  <body>
      
      <%
            String uname,pass;
            Connection connect;
            Class.forName("org.apache.derby.jdbc.ClientDriver");
            connect=DriverManager.getConnection("jdbc:derby://localhost:1527/e-book","sanjay","Sanjay@12");
            uname=request.getParameter("uname");
            pass=request.getParameter("psw");
            PreparedStatement st=connect.prepareStatement("INSERT INTO SANJAY.LOGIN_DETAILS(USERNAME,PASSWORD)VALUES('"+uname+"','"+pass+"')");
            st.executeUpdate();
            if(st!=null){
                st.close();
            }
            if(connect!=null){
                connect.close();
            }
            


%>




<div><center>
        <h1>Publish your Book</h1></center>
<form action="FileServlet" method="post" enctype="multipart/form-data">
<!--<input type="hidden" name="uname" value="<%=uname%>" />-->
<label for="fname">First Name</label>
    <input type="text" id="uname" name="uname" placeholder="Your name..">
<br><br>
    <input type="file" name="file1"><br><br>
 <input type="submit" value="Submit">
  </form>
</div>
 
  </body>
</html>
