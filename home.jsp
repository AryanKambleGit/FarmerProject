<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% 
	if(session.getAttribute("name")== null){
		response.sendRedirect("login.jsp");
		
	}
%>
 
 
 
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>FARM 2 MART - Home page</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css" integrity="sha512-Evv84Mr4kqVGRNSgIGL/F/aIDqQb7xQ2vcrdIwxfjThSH8CSR7PBEakCr51Ck+w+/U6swU2Im1vVX0SVk9ABhg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <style>
       * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Roboto', sans-serif;
            letter-spacing: 1.5px;
        }
        .headeriframe {
            border: none;
            position: fixed;
            top: 0;
            z-index: 1000;
            width: 100%;
            height: 60px;
        }
        .footeriframe {
            border: none;
            width: 100%;
        }
        .mainbox {
            height: 750px;
            max-width: 1528px;
            background-image: url(images/homePageBackground1.png);
            background-size: cover;
            display: flex;
            flex-direction: column;
            justify-content: center; 
            align-items: center;
            gap: 100px;
            margin-top: 60px;
        }
        .userName {
            height: 50px;
            width: auto;
            font-size: 20px;
            font-weight: 550;
            color: white;
            border: 2px solid white;
            background-color: rgb(0, 115, 255);
            border-radius: 15px;
            display: flex;
            flex-direction: column;
            justify-content: flex-start;
            align-items: flex-start;
            position: relative;
            top: 150px;
        }
        #helloPara {
            font-size: 12px;
            padding-top: 5px;
            padding-left: 5px;
        }
        #userNamePara {
            padding-left: 30px;
            padding-right: 30px;
            padding-bottom: 30px;
        }
        .liveMartAndChatbot {
            display: flex;
            justify-content: center;
            align-items: center;
            gap: 150px;
        }
        .liveMarket {
            text-decoration: none;
            color: rgb(255, 255, 255);
            height: 50px;
            width: 300px;
            margin-bottom: 10px;
            font-size: 24px;
            font-weight: 700;
            background-color: rgb(255, 0, 0);
            border: 2px solid rgb(255, 255, 255);
            border-radius: 10px;
            box-shadow: 0px 0px 20px 1px rgb(55, 52, 52);
            display: flex;
            justify-content: center;
            align-items: center;
            position: relative;
            top: 25px;
        }
        #liveMarketLink {
            text-decoration: none;
        }
        .chatMarHover:hover {
            border: 2px solid rgb(212, 255, 0);
            box-shadow: 0px 0px 25px 1px rgb(46, 44, 44);
        }
        .chatBot {
            text-decoration: none;
            color: white;
            height: 50px;
            width: 300px;
            margin-bottom: 200px;
            font-size: 24px;
            font-weight: 700;
            background-color: red;
            border: 2px solid white;
            border-radius: 10px;
            box-shadow: 0px 0px 20px 1px rgb(55, 52, 52);
            display: flex;
            justify-content: center;
            align-items: center;
            position: relative;
            top: 120px;
        }
        #chatBotLink {
            text-decoration: none;
        }
        .mainBox2 {
            height: 750px;
            width: 1528px;
            background-image: url(images/homePageBackground2.png);
            background-size: cover;
            display: flex;
            flex-direction: column;
            justify-content: flex-start;
            align-items: flex-start;
        }
        .box2paragraph {
            height: 400px;
            width: 600px;
            line-height: 35px;
            font-size: 22px;
            font-weight: 600;
            padding-top: 50px;
            padding-left: 100px;
        }
        #mainBox2Heading {
            color: rgb(7, 92, 7);
            font-size: 36px;
            padding-left: 250px;
            padding-top: 120px;
        }
        .mainBox5 {
            height: 750px;
            width: 1528px;
            background-image: url(images/homePageBackground3.png);
            background-size: cover;
            display: flex;
            flex-direction: column;
            justify-content: flex-start;
            align-items: flex-end;
        }
        .box5paragraph {
            height: 400px;
            width: 600px;
            line-height: 35px;
            font-size: 22px;
            font-weight: 600;
            padding-top: 50px;
            padding-right: 200px;
        }
        #mainBox5Heading {
            color: rgb(7, 92, 7);
            font-size: 36px;
            padding-right: 450px;
            padding-top: 120px;
        }
        .mainBox6 {
            height: 750px;
            width: 1528px;
            background-image: url(images/homePageBackground4.png);
            background-size: cover;
            display: flex;
            flex-direction: column;
            justify-content: flex-start;
            align-items: center;
        }
        #h2ofBestServices {
            font-size: 30px;
            font-weight: 600;
            color: rgb(20, 95, 20);
            margin-right: 200px;
        }
        .sevicesPara {
            display: flex;
            flex-direction: column;
            line-height: 35px;
            width: 1300px;
            padding-top: 75px;
        }
        .para {
            width: 550px;
            font-size: 16px;
            font-weight: 520;
            color: white;
        }
        .para-1 {
            padding-left: 400px;
        }
        .para-2 {
            padding-left: 100px;
            padding-top: 65px;
        }
        .para-3 {
            padding-left: 400px;
            padding-top: 73px;
        }
        .para-4 {
            padding-left: 100px;
            padding-top: 73px;
        }
        .mainBox7 {
            height: 750px;
            width: 1528px;
            background-image: url(images/homePageBackground7.png);
            background-size: cover;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: flex-end;
            gap: 40px;
        }
        #h2ofaboutUs {
            font-size: 30px;
            font-weight: 600;
            color: rgb(30, 105, 30);
            margin-right: 400px;
        }
        .box7paragraph {
            height: 400px;
            width: 600px;
            line-height: 35px;
            font-size: 22px;
            font-weight: 600;
            padding-right: 140px;
        }
        .farmersInfo {
            height: 750px;
            width: 1528px;
            background-image: url(images/homePageBackground6.png);
            background-size: cover;
            display: flex;
            flex-direction: column;
            justify-content: flex-start;
            align-items: center;
        }
        .farmersImage {
            background-size: cover;
            display: flex;
            justify-content: center;
            align-items: center;
            padding-top: 90px;
            gap: 50px;
        }
        .image {
            height: 200px;
            width: 200px;
            border-top-left-radius: 30px;
            border-bottom-right-radius: 30px;
            border: 2px solid black;
        }
        .farmer1 {
            background-image: url(images/farmerImage1.jpg);
            background-size: cover;
        }
        .farmer2 {
            background-image: url(images/farmerImage2.jpg);
            background-size: cover;
        }
        .farmer3 {
            background-image: url(images/farmerImage3.jpg);
            background-size: cover;
        }
        .farmer4 {
            background-image: url(images/farmerImage4.jpg);
            background-size: cover;
        }
        #h2offarmersInfo {
            font-size: 30px;
            font-weight: 700;
            color: rgb(13, 89, 13);
            padding-top: 140px;
        }
        #box6para {
            font-size: 20px;
            width: 1100px;
            line-height: 35px;
            font-weight: bold;
            padding-top: 20px;
        }
    </style>
</head>
<body>
	
    <iframe src="header.html" width="100%" height="60px" class="headeriframe"></iframe>
    <main>
        <div class="mainbox">
            <div class="userName">
                <p id="helloPara">Hello,</p>
                <a id="userNamePara" class="nav-link py-3 px-0 px-lg-3 rounded">
                    <%= session.getAttribute("name") %>
                </a>
            </div>
            <div class="liveMartAndChatbot">
                <a href="" id="chatBotLink">
                    <div class="chatBot chatMarHover">CHAT BOT</div>
                </a>
                <a href="ChooseSellerOrBuyer.jsp" id="liveMarketLink">
                    <div class="liveMarket chatMarHover">LIVE MARKET</div>
                </a>
            </div>
        </div>
        <div class="mainBox2">
            <h1 id="mainBox2Heading">OUR VISION</h1>
            <div class="box2paragraph">
                <p id="mainBoxPara1">Empower farmers with a transparent, technology-driven marketplace that ensures fair
                    pricing, real-time market insights, and direct access to buyers. By leveraging digital platforms,
                    AI-driven analytics, and decentralized trade mechanisms, we aim to eliminate middlemen, optimize
                    supply chains, and maximize farmers' profits. Our vision is to create a sustainable, equitable
                    agricultural ecosystem where farmers have full control over their sales, leading to economic growth
                    and food security.
                </p>
            </div>
        </div>
        <div class="mainBox5">
            <h1 id="mainBox5Heading">OUR MISSION</h1>
            <div class="box5paragraph">
                <p id="mainBoxPara2">At Farm2Market, our mission is to empower farmers by providing them with real-time market intelligence and direct access to buyers, ensuring fair pricing and eliminating middlemen. We aim to create a transparent, efficient, and profitable agricultural trade system where farmers can maximize their earnings, make informed decisions, and expand their market reach. Through innovation and technology, we strive to build a future where every farmer has the tools and opportunities to thrive in a competitive marketplace.</p>
            </div>
        </div>
        <div class="mainBox6">
            <h2 id="h2ofBestServices">OUR BEST SERVICES</h2>
            <div class="sevicesPara">
                <p class="para-1 para">Farmers receive real-time price updates and market trends, enabling them to sell at the best rates.</p>
                <p class="para-2 para">A platform where farmers can list their produce and connect directly with buyers, ensuring fair and transparent trade.</p>
                <p class="para-3 para">Farmers can view buyer demands, place offers, and buyers can bid on listings, promoting competitive pricing.</p>
                <p class="para-4 para">A smart ChatBot assists farmers by answering queries, providing market insights, and guiding them through the platform.</p>
            </div>
        </div>
        <div class="mainBox7">
            <h1 id="h2ofaboutUs">ABOUT US</h1>
            <div class="box7paragraph">
                <p id="mainBoxPara2">At Farm2Market, we are committed to transforming the agricultural trade by empowering farmers with real-time market insights and direct access to buyers. Our platform eliminates middlemen, ensuring fair pricing, transparency, and better profits for farmers. With features like live market trends, direct marketplace listings, and an AI-powered chatbot for assistance, we make selling produce easier and more efficient. By leveraging technology, we aim to create a sustainable and profitable ecosystem where farmers can thrive and buyers can access fresh, high-quality produce directly from the source.</p>
            </div>
        </div>
        <div class="farmersInfo">
            <h2 id="h2offarmersInfo">MEET OUR FARMERS</h2>
            <p id="box6para">Our farmers are happy with our platform as it helps them get better prices for their products. With fair trade and direct access to buyers, they earn more while delivering fresh, quality produce.</p>
            <div class="farmersImage">
                <div class="farmer1 image"></div>
                <div class="farmer2 image"></div>
                <div class="farmer3 image"></div>
                <div class="farmer4 image"></div>
            </div>
        </div>
    </main>
    <iframe src="footer.html" width="100%" height="400px" class="footeriframe"></iframe>
</body>
</html>