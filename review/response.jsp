<%-- 
    Document   : response.jsp
    Created on : 24 Feb, 2023, 9:28:49 AM
    Author     : swetha
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
             * {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}
header {
  display: flex;
  justify-content: space-evenly;
  align-items: center;
  height: 60px;
  width: 100%;
  background: black;
}
.heading ul {
  display: flex;
  
}
.logo a {
  color: white;
  transition-duration: 1s;
  text-decoration: none;
  font-weight: 800;
  font-size:30px;
  margin-left:-50px;
}
.logo a:hover {
  color: rgb(240, 197, 6);
  transition-duration: 1s;
}
.heading ul li {
  list-style: none;
}
.heading ul li a {
  margin: 5px;
  text-decoration: none;
  color: black;
  font-weight: 500;
  position: relative;
  color: white;
  margin: 2px 14px;
  font-size: 18px;
  transition-duration: 1s;
}
.heading ul li a:active {
  color: red;
}
.heading ul li a:hover {
  color: rgb(243, 168, 7);
  transition-duration: 1s;
}

.heading ul li a::before {
  content: "";
  height: 2px;
  width: 0px;
  position: absolute;
  left: 0;
  bottom: 0;
  background-color: white;
  transition-duration: 1s;
  
}
.heading ul li a:hover::before {
  width: 100%;
  transition-duration: 1s;
  background-color: rgb(243, 168, 7);
}
        </style>
    </head>
    <body>
        <%
            String name,email,message;
            Connection connect;
            Class.forName("org.apache.derby.jdbc.ClientDriver");
            connect=DriverManager.getConnection("jdbc:derby://localhost:1527/e-book","sanjay","Sanjay@12");
            name=request.getParameter("name");
            email=request.getParameter("email");
            message=request.getParameter("message");
            PreparedStatement st=connect.prepareStatement("INSERT INTO SANJAY.CONTACT(NAME,EMAIL,MESSAGE)VALUES('"+name+"','"+email+"','"+message+"')");
            st.executeUpdate();
            if(st!=null){
                st.close();
            }
            if(connect!=null){
                connect.close();
            }
            %>
        

 <header>
    <div class="logo"><a href="#">Perl E-Book</a></div>
    <div class="menu">
      <a href="#">
        <ion-icon name="close" class="close"></ion-icon>
      </a>


    </div>
   
    <div class="heading">
      <ul>
        <li><a href="index.html" class="under">HOME</a></li>
        <li><a href="index.html" class="under">SHOP</a></li>
        <li><a href="ebook.jsp" class="under">E-BOOKS</a></li>
        <li><a href="#" class="under">AUDIO-BOOKS</a></li>
        <li><a href="contact.jsp" class="under">CONTACT-US</a></li>
      </ul>
    </div>
    <div class="heading1">
      <ion-icon name="menu" class="ham"></ion-icon>
    </div>
  </header>

    <center>
        <h1>Your Query has been sent successfully.</h1>
    </center>
    </body>
</html>
