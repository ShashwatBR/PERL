<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Single E-commerce Product Page using HTML, CSS - Codingscape</title>
    <!-- Stylesheet -->
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&display=swap');  /* Poppins Font */


/** gobal layout */
*{
    padding: 0;
    margin: 0;
    box-sizing: border-box;
    font-family: 'Poppins', sans-serif;
}

:root{
    --primary-color: #5344db;
    --accent-color: #5344db;
    --grey:#484848;
    --bg-grey: #efefef;
    --shadow: #949494;
}

.container{
    display: flex;
    position: relative;
    align-items: center;
    justify-content: center;
    height: 100vh;
}

.row{
    display: flex;
    gap: 20px;
}

.col-6{
    width: 50%;
}

.single-product{
    width: 1080px;
    position: relative;
}
/* Breadcrumb */

.single-product .breadcrumb{
    background: #48484810;
    padding: 8px 4px;
    border-radius: 8px;
    font-size: 15px;
}

.breadcrumb span{
    display: inline-flex;
    flex-direction: row;
    gap: 8px;
    margin-left: 8px;
}
.breadcrumb span:not(:last-child)::after{
    content: '/';
}

.breadcrumb span a{
    text-decoration: none;
    color: var(--primary-color);
}

/* product image */

.single-product .product-image{
    width: 100%;
}

.product-image .product-image-main{
    position: relative;
    display: block;
    height: 480px;
    background: var(--bg-grey);
    padding: 10px;
}

.product-image-main img{
    display: block;
    width: 100%;
    height: 100%;
    object-fit: contain;
}

.product-image-slider{
    display: flex;
    gap: 10px;
    margin: 10px 0;
}

.product-image-slider img{
    width: 90px;
    height: 90px;
    background: var(--bg-grey);
    padding: 6px;
    cursor: pointer;
}

/* product title */

.product-title{
    margin-top: 20px;

}
.product-title h2{
    font-size: 32px;
    line-height: 2.4rem;
    font-weight: 700;
    letter-spacing: -0.02rem;
}

/* product rating */
.product-rating{
    display: flex;
    margin-top: 4px;
    margin-bottom: 10px;
    align-items: center;
}

.product-rating span:not(:last-child){
    color: #ffc600;
}
.product-rating .review{
    color: var(--grey);
    font-size: 12px;
    font-weight: 500;
}
/* Product price */
.product-price{
    display: flex;
    position: relative;
    margin: 10px 0;
    align-items: center;
}

.product-price .offer-price{
    font-size: 48px;
    font-weight: 700;
}
.product-price .sale-price{
    font-size: 22px;
    font-weight: 500;
    text-decoration: line-through;
    color: var(--grey);
    margin-left: 12px;
}

/* Product Details */
.product-details{
    margin: 10px 0;
}
.product-details h3{
    font-size: 18px;
    font-weight: 500;
}
.product-details p{
    margin: 5px 0;
    font-size: 14px;
    line-height: 1.2rem;
}


/* divider */
.divider{
    display: block;
    height: 1px;
    width: 100%;
    background: #48484830;
    margin: 20px 0;
}

/* product Button Group */

.product-btn-group{
    display: flex;
    gap: 15px;
}
.product-btn-group .button{
    display: flex;
    align-items: center;
    justify-content: center;
    gap: 4px;
    padding: 10px 24px;
    font-size: 16px;
    font-weight: 500;
}
.product-btn-group .buy-now{
    background-color: var(--accent-color);
    color: #fff;
    border: 1px solid var(--accent-color);
    border-radius: 4px;
    cursor: pointer;
    
}

.product-btn-group .buy-now i{
    font-size: 20px;
}
.product-btn-group .buy-now:hover{
    box-shadow: 0 3px 6px var(--shadow);
}

.product-btn-group .add-cart{
    
    background-color: var(--bg-grey);
    color: var(--grey);
    border-radius: 4px;
    cursor: pointer;
}
.product-btn-group .add-cart i{
    font-size: 20px;
}
.product-btn-group .add-cart:hover{
    box-shadow: 0 3px 6px var(--shadow);
    background: var(--grey);
    color: #fff;
}
.product-btn-group .heart{
    color: var(--grey);
    cursor: pointer;
}
.product-btn-group .heart i{
    font-size: 20px;
}
.product-btn-group .heart:hover{
    color: var(--accent-color);
}


/* Responsive Mobile */
@media screen and (max-width:520px) {
    .container{
        padding: 20px;
        height: auto;
    }
    .row{
        display: block;
    }

    .col-6{
        width: 100%;
        display: block;
    }
    .single-product{
        width: 100%;
        position: relative;
    }

    .product-image .product-image-main{
        width: 100%;
        height: 280px;
    }
    .product-image-slider{
        gap: 5px;
    }

    .breadcrumb{
        display: none;
    }

    .product-title h2{
        font-size: 24px;
        line-height: 1.6rem;
    }
    .product-size{
        display: block;
    }
    .product-size .size-layout{
        display: block;
        margin: 10px 0;

    }
    .product-size .size-layout .size{
        padding: 6px 10px;
    }
    .product-btn-group{
        display: flex;
        flex-direction: column;
        gap: 10px;
    }
}

/* Responsive Tablet */
@media  (min-width: 520px ) and (max-width: 1080px) {
   .container{
    display: block;
    height: auto;
    padding: 20px;
   }
    
}
    </style>
    <!---Boxicons CDN Setup for icons-->
    <link href='https://unpkg.com/boxicons@2.1.2/css/boxicons.min.css' rel='stylesheet'>
</head>
<body>
    <div class="container">
        <div class="single-product">
            <div class="row">
                <div class="col-6">
                    <div class="product-image">
                        <div class="product-image-main">
                            <img src="https://www.bookgeeks.in/wp-content/uploads/2018/04/the-blue-umbrella-by-ruskin-bond.jpg"" alt="" id="product-main-image">
                        </div>
                        
                    </div>
                </div>
                <div class="col-6">
                    <div class="breadcrumb">
                        <span><a href="index.html">Home</a></span>
                        <span><a href="index.html">Product</a></span>
                        <span class="active">Book</span>
                    </div>

                    <div class="product">
                        <div class="product-title">
                            <h2>The blue umbrella</h2>
                        </div>
                        <div class="product
                             -rating">
                            <span><i class="bx bxs-star"></i></span>
                            <span><i class="bx bxs-star"></i></span>
                            <span><i class="bx bxs-star"></i></span>
                            <span><i class="bx bxs-star"></i></span>
                            <span><i class="bx bxs-star"></i></span>
                            <span class="review">(47 Review)</span>
                        </div>
                        <div class="product-price">
                            <span class="offer-price">$10.00</span>
                            <span class="sale-price">$12.00</span>
                        </div>

                        <div class="product-details">
                            <h3>Description</h3>
                            <p>The umbrella was like a flower, a great blue flower that had sprung up on the dry brown hillside.'

In exchange for her lucky leopard's claw pendant, Binya acquires a beautiful blue umbrella that makes her the envy of everyone in the village, especially Ram Bharosa, the shopkeeper. It is the prettiest umbrella in the whole village and she carries it everywhere she goes.

The Blue Umbrella is a short and humorous novella set in the hills of Garhwal. Written in simple yet witty language, it captures life in a village - where ordinary characters become heroic,  

</p>

                        </div>
                        

                        <span class="divider"></span>
                        <form action="checkout.jsp" method="post">
                        <div class="product-btn-group">
                            <button class="button buy-now"><i class='bx bxs-zap' ></i> Buy Now</button>
<!--                            <div class="button add-cart"><i class='bx bxs-cart' ></i> Add to Cart</div>
                           --></div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    
</body>
</html>