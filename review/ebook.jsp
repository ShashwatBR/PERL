
<head>
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



.section2 .container {
  display: flex;
  width: 100%;
  height: max-content;
  flex-wrap: wrap;
  justify-content: center;
  margin: 10px auto;
}
.section2 .container .items {
  margin: 10px;
  width: 200px;
  height: 300px;
  background-color: white;
  border: 2.5px solid black;
  border-radius: 12px;
}
.section2 .container .items .name {
  text-align: center;
  background-color: rgb(240, 197, 6);
  height: 25px;
  padding-top: 4px;
  color: white;
  margin: 0;
}
.section2 .container .items .price {
  float: left;
  padding-left: 10px;
  display: block;
  width: 100%;
  color: rgb(255, 0, 0);
  font-weight: 650;
}
.section2 .container .items .info {
  padding-left: 10px;
  color: rgb(243, 168, 7);
}
.section2 .container .items .img img {
  width: 200px;
  height: 200px;
  margin: 0;
  padding: 0;
  border-radius: 12px;
  transition-duration: 0.8s;
}
.section2 .container .items .img {
  overflow: hidden;
  margin: 0;
}
.section2 .container .items:hover .img img {
  transform: scale(1.2);
  transition-duration: 0.8s;
  border-radius: 12px;
}
        body {
            font-family: Arial, Helvetica, sans-serif;
            margin: 0;
            background-color: violet;
        }
        .page {
            display: grid;
            grid-template-columns: [start] 5rem [main] 1fr [end];
            grid-template-rows: 50px;
            grid-auto-rows: 1fr;
            height: 100vh;
        }
        .header {
            position: relative;
            grid-column: start / end;
            
        }
        .navigation-bar {
            padding-top: 1rem;
            padding:10px;
            background: violet;
        }
        .content {
            padding: 1rem;
            display: grid;
            grid-template-columns: 1fr;
            grid-auto-rows: max-content;
            gap: 10px;
            overflow: auto;
        }
        .category {
            display: grid;
            grid-template-columns: [inicio] 1fr 1fr 1fr [fin];
            column-gap: 1rem;
            row-gap: 0.5rem;
            grid-template-rows: minmax(min-content,max-content) minmax(100px, min-content);
        }
        .category-title{
            grid-column: inicio / fin;
            margin: 0;
        }
        .movie-item {
            overflow: hidden;
            border: 1px solid rgba(0,0,0,.2);
            background-color: #000;
        }
        .movie-item img {
            max-width: 100%;
            display: block;
        }
        @media screen and (max-width: 780px) {
            .page {
                grid-template-rows: 50px 50px;
            }
            .navigation-bar {
                grid-column: start / end;
            }
            .content {
                grid-column: start / end;
            }
            .category {
                grid-template-columns: [inicio] 1fr 1fr 1fr 1fr [fin];
            }
            .movie-item {
                grid-column: span 2;
            }
            .movie-item:nth-last-child(1){
                background-color: green;
                grid-column: 2 / span 2;
            }
        }
        h2{
            color:white;
            font-size:30px;
        }
        h3{
            color:green;
            font-size: 20px;
        }
        button {
    --c:  gold; /* the color*/
    width: 50%;
    box-shadow: 0 0 0 .1em inset var(--c); 
    --_g: linear-gradient(var(--c) 0 0) no-repeat;
    background: 
      var(--_g) calc(var(--_p,0%) - 100%) 0%,
      var(--_g) calc(200% - var(--_p,0%)) 0%,
      var(--_g) calc(var(--_p,0%) - 100%) 100%,
      var(--_g) calc(200% - var(--_p,0%)) 100%;
    background-size: 50.5% calc(var(--_p,0%)/2 + .5%);
    outline-offset: .1em;
    transition: background-size .4s, background-position 0s .4s;
  }
  button:hover {
    --_p: 100%;
    transition: background-position .4s, background-size 0s;
  }
  button:active {
    box-shadow: 0 0 9e9q inset #0009; 
    background-color: var(--c);
    color: #fff;
  }
  
  button {
    font-family: system-ui, sans-serif;
    font-size: 3.5rem;
    cursor: pointer;
    padding: .1em .6em;
    font-weight: bold; 
    border: none;
    background-color: white;
  }
    </style>
</head>
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

        <li><a href="#" class="under">E-BOOKS</a></li>
        <li><a href="audio_books.jsp" class="under">AUDIO-BOOKS</a></li>
        <li><a href="contact.jsp" class="under">CONTACT-US</a></li>
        <li><a href="publish.jsp" class="under">PUBLISH</a></li>
      </ul>
    </div>
    <div class="heading1">
      <ion-icon name="menu" class="ham"></ion-icon>
    </div>
  </header>
    <br><br>
    
<!--    <div class="container">
        
        <h1>Check Response</h1>

        <label>Ask Anything.. </label>
        
        <input id="input" type="text" onkeypress="handleKeyEnter(event)" value="" required />

        <button id="button" type="submit">
            Get Answer
        </button>

        <p id="error"></p>
    
        <div id="answer"></div>

    </div>
    -->
    <center>
        <h1>Read Now</h1>
        </center>
      <div class="section2">
        <div class="container">
          <div class="items">
              <a href="https://drive.google.com/file/d/1EFZN_b0FpPfLxA9pg8UJjrdrQsYVFzc7/view?usp=sharing" target="_blank">
            <div class="img img1"><img src="https://m.media-amazon.com/images/I/71t4GuxLCuL.jpg" alt=""></div>
              </a>
            <div class="name">The Subtle Art</div>
            <div class="price">Click to Read</div>
            <div class="info">NewYork Times BestSeller</div>
          </div>
          <div class="items">
              <a href="https://drive.google.com/file/d/1DzpIjifhqi1VZk5r5zq6PS0Vmvd61BQB/view?usp=sharing" target="_blank">
            <div class="img img2"><img src="https://rukminim1.flixcart.com/image/612/612/kfoapow0/book/8/1/0/goosebumps-slappyworld-11-they-call-me-the-night-howler-original-imafw2efr98mtjgq.jpeg?q=70" alt=""></div>
            </a>
            <div class="name">GOOSEBUMPS</div>
            <div class="price">Click to Read</div>
            <div class="info">Slappy World</div>
          </div>
            <div class="items">
              <a href="https://drive.google.com/file/d/1aMMthbEj8tRZL8RPkxxuDJieMyOyuSl7/view?usp=sharing" target="_blank">
            <div class="img img1"><img src="https://n2.sdlcdn.com/imgs/d/5/6/Agatha-Christie-The-Finished-Portrait-SDL460872626-1-3e802.jpg" alt=""></div>
              </a>
            <div class="name">Agatha Christie</div>
            <div class="price">Click to Read</div>
            <div class="info">The Finished Portrait</div>
          </div>
            <div class="items">
              <a href="https://drive.google.com/file/d/1dGzZcZCqoovzFns1NQL7YXaB55TPQBS8/view?usp=sharing" target="_blank">
            <div class="img img1"><img src="https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1328748124l/12878930.jpg" alt=""></div>
              </a>
            <div class="name">I,Steve</div>
            <div class="price">Click to Read</div>
            <div class="info">Steve Jobs in his own words</div>
          </div>
            <div class="items">
              <a href="https://drive.google.com/file/d/1hgka8WpjrB30K-a5IA7R_fDwp5JyCr9C/view?usp=sharing" target="_blank">
            <div class="img img1"><img src="https://m.media-amazon.com/images/I/51-GvIoiqYL.jpg" alt=""></div>
              </a>
            <div class="name">Harry potter</div>
            <div class="price">Click to Read</div>
            <div class="info">By J.K.Rowling</div>
          </div>
            

        </div>
      </div>

<br><br>
<center>
    <button><a href="api.html">Book Finder</a></button></center>
<br><br>
<br><br>
<div class="page">
        <header class="header">
            <center>
                <h2>Movies Inspired From Books</h2>
            </center>
        </header>
        <div class="navigation-bar">
            
        </div>
        <main class="content">
            <div class="category">
                <h3 class="category-title"> Click to watch</h3>
                <div class="movie-item">
                    <a href="https://www.netflix.com/in/title/70121522?source=35" target="_blank">
                    <img src="https://i.ytimg.com/vi/sCcGNpsG2uk/maxresdefault.jpg" alt="" srcset="">
                    </a> </div>
                <div class="movie-item">
                    <a href="https://www.netflix.com/in/title/81280352" target="_blank">
                    <img src="https://indtoday.com/wp-content/uploads/2022/02/Gangubai-Kathiawadi.jpg" alt="" srcset="">
                    </a></div>
                <div class="movie-item">
                    <a href="https://www.justwatch.com/in/movie/half-girlfriend" target="_blank">
                    <img src="https://www.un.org/sites/un2.un.org/files/styles/large-article-image-style-16-9/public/field/image/1da42153570573.5938fd77e87cd.jpg?itok=wXjRkp_f" alt="" srcset="">
                    </a></div>
            </div>
            <div class="category">
                
                <div class="movie-item">
                    <a href="https://www.hotstar.com/in/movies/2-states/1000034502" target="_blank">
                    <img src="https://img1.hotstarext.com/image/upload/f_auto,t_hcdl/sources/r1/cms/prod/old_images/MOVIE/4502/1000034502/1000034502-h" alt="">
                    </a></div>
                <div class="movie-item">
                    <a href="https://www.primevideo.com/detail/Padmaavat/0LCQGVFVLNI8MOOGAT6T4611H2" target="_blank">
                    <img src="https://thecommonmanspeaks.com/wp-content/uploads/2018/01/Padmaavat-poster.jpg">
                    </a></div>
                <div class="movie-item">
                    <a href="https://www.primevideo.com/dp/amzn1.dv.gti.88ae477d-8574-3fc1-b27b-e2b723d68d7b?autoplay=0&ref_=atv_cf_strg_wb" target="_blank">
                    <img src="https://occ.a.nflxso.net/dnm/api/v6/6gmvu2hxdfnQ55LZZjyzYR4kzGk/AAAABVAIjgE47oVEXpUmWnos5x0nfl8ueTSPL2MKJgVRbJ_S8lSavUpifeq-6x4ZYPDUTnI7jLtem9aVVgKUhXG_B99NwteY49uAZe84.jpg?r=b11" alt="">
                    </a>
                    </div>
            </div>
<!--            <div class="category">
                <h3 class="category-title"> Recently Added </h3>
                <div class="movie-item">
                    <img src="https://4.bp.blogspot.com/-kL5NK2-kuOk/W8OF3PwFNLI/AAAAAAAAT_8/S_Ml5pg5guANFQ_RaUjh4zJDBywJzgd1wCLcBGAs/w1200-h630-p-k-no-nu/SOCIAL%2BNETWORK.jpg" alt="" srcset="">
                </div>
                <div class="movie-item">
                    <img src="https://vistapointe.net/images/the-lego-batman-movie-wallpaper-11.jpg" alt="" srcset="">
                </div>
                <div class="movie-item">
                    <img src="https://vistapointe.net/images/the-elder-scrolls-online-wallpaper-8.jpg" alt="" srcset="">
                </div>
            </div>
            <div class="category">
                <h3 class="category-title"> Claim for critic </h3>
                <div class="movie-item">
                    <img src="https://vistapointe.net/images/the-boy-wallpaper-4.jpg" alt="">
                </div>
                <div class="movie-item">
                    <img src="https://artsdivision.wisc.edu/wp-content/uploads/sites/94/2020/03/WFF20-media-kit-FB-cover-1200x630px.jpg">
                </div>
                <div class="movie-item">
                    <img src="https://vistapointe.net/images/star-trek-beyond-wallpaper-6.jpg" alt="">
                </div>-->
<!--            </div>-->
        </main>
    </div>
</body>
<!--<script src="script.js"></script>-->
</html>