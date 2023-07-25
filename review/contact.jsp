<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title> Contact US Form with Database and Validation</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
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




body {
  background-image: url('https://i.postimg.cc/FzhD3Kyc/contact.jpg');
  background-repeat: no-repeat;
 background-attachment: fixed;
  background-size: cover;
}


</style>
<body>
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
       
        <li><a href="ebook.jsp" class="under">E-BOOKS</a></li>
        <li><a href="audio_books.jsp" class="under">AUDIO-BOOKS</a></li>
        <li><a href="contact.jsp" class="under">CONTACT-US</a></li>
        <li><a href="publish.jsp" class="under">PUBLISH</a></li>
      </ul>
    </div>
    <div class="heading1">
      <ion-icon name="menu" class="ham"></ion-icon>
    </div>
  </header>
<div class="container mt-2">
    <div class="row">
        <div class="col-md-12">
            <div class="page-header">
                <h2>ENTER UR QUERIES</h2>
            </div>
           
            <form action="response.jsp" method="post">

                <div class="form-group">
                    <label>Name</label>
                    <input type="text" name="name" class="form-control" required="">
                </div>                        


                <div class="form-group">
                    <label>Email</label>
                    <input type="email" name="email" class="form-control" required="">
                </div>

                <div class="form-group">
                    <label>Message</label>
                    <input type="text" name="message" class="form-control" required="">
                </div>

                <input type="submit" class="btn btn-primary" name="submit" value="submit">
            </form>
        </div>
    </div>        
</div>

</body>
</html>