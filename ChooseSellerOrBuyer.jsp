<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  
  
  
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>FARM 2 MART - sell&buy</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css"
    integrity="sha512-Evv84Mr4kqVGRNSgIGL/F/aIDqQb7xQ2vcrdIwxfjThSH8CSR7PBEakCr51Ck+w+/U6swU2Im1vVX0SVk9ABhg=="
    crossorigin="anonymous" referrerpolicy="no-referrer" />
<style>
    *{
    margin: 0;
    padding: 0;
    border: border-box;
    font-family: 'Roboto', sans-serif;

    letter-spacing: 1.5px;

}
.homelink{
    text-decoration: none;
    color: white;
}


/* ----------------------------------- */


/* main content */
main{
    background-image: url(images/loginbackgroundimage.png);
    background-size: cover;
    height: 680px;
    width: 1528px;
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    gap: 20px;
    margin-top: 60px;
}
#sellorbuy-para{
    height: 30px;
    width: 300px;
    color: white;
    background-color: rgb(0, 115, 255) ;
    display: flex;
    justify-content: center;
    align-items: center;
    border-radius: 5px;
    border: 0.5px solid white;
}
.sellerAndBuyerOption{
    height: 500px;
    width: 700px;
    display: flex;
    justify-content: center;
    align-items: flex-start;
    gap: 30px;


}
.sellorbuy{
    height: 350px;
    width: 250px;
    border: 2px solid black;
    border-radius: 10px;
    display: flex;
    flex-direction: column;
    gap: 20px;
    justify-content: center;
    align-items: center;
}
.sellBuyHover{
    &:hover{
        border: border-box;
        border: 2px solid rgb(0, 0, 0);
        color: black;
        box-shadow: 0px 0px 25px 1px rgb(46, 44, 44);
    }

}

.sellerImage{
    height: 250px;
    width: 200px;
    border: 2px solid white;
    background-image: url(images/sellerImage.jpg);
    background-size: cover;
    background-position: center center;
    box-shadow: 0px 0px 15px 1px rgb(79, 77, 77);
    border-radius: 15px;


    
}
.buyerImage{
    height: 250px;
    width: 200px;
    border: 2px solid white;
    background-image: url(images/buyerImage.jpg);
    background-size: cover;
    background-position: center center;
    box-shadow: 0px 0px 15px 1px rgb(79, 77, 77);
    border-radius: 15px;

}
.sellorbuybutton{
    height: 30px;
    width: 130px;
    /* background-color: rgb(0, 115, 255); */
    color: white;
    border: 2px solid white;
    border-radius: 5px;
    box-shadow: 0px 0px 15px 1px rgb(79, 77, 77);
}
#sellerInterfaceBtn{
    text-decoration: none;
    color: white;
}
#buyerInterfaceBtn{
    text-decoration: none;
    color: white;
}

.seller{
    border: 1.5px solid rgb(255, 255, 255);
    box-shadow: 0px 0px 30px 1px red;
}
.sellerBtn{
    background-color: red;
}
.buyer{
    border: 1.5px solid rgb(255, 255, 255);
    box-shadow: 0px 0px 30px 1px rgb(55, 255, 0);

}
.buyerBtn{
    background-color:rgb(55, 255, 0);
}
.headeriframe{
    border: none;
    position: fixed;
    top: 0;
    z-index: 1000;
}
.footeriframe{
    border: none;
}
</style>
</head>
<body>
    <iframe src="header.html" width="1528px" height="60px" class="headeriframe"></iframe>

    <main>
        <p id="sellorbuy-para"> CHOOSE YOUR CHARACTOR </p>
        <div class="sellerAndBuyerOption">
            <div class="seller sellorbuy">
                <div class="sellerImage"></div>
                <a href="sellerInterface.jsp" id="sellerInterfaceBtn"><button class="sellorbuybutton sellerBtn sellBuyHover">SELLER</button></a>
            </div>
            <div class="buyer sellorbuy">
                <div class="buyerImage"></div>
                <a href="buyerInterface.jsp" id="buyerInterfaceBtn"><button class="sellorbuybutton buyerBtn sellBuyHover">BUYER</button></a>
            </div>
        </div>
    </main>
    <iframe src="footer.html" width="1528px" height="400" class="footeriframe"></iframe>
</body>
</html>