<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
   
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>FARM 2 MART -login page</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css" integrity="sha512-Evv84Mr4kqVGRNSgIGL/F/aIDqQb7xQ2vcrdIwxfjThSH8CSR7PBEakCr51Ck+w+/U6swU2Im1vVX0SVk9ABhg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="login.css">
    <link rel="stylesheet" href="navbar.css">
    <style>
        *{
    margin: 0;
    padding: 0;

    font-family: 'Roboto', sans-serif;

    letter-spacing: 1.5px;

}
 

/* main box */
main{
    background-image: url(images/loginbackgroundimage.png);
    background-size: cover;
    height: 740px;
    width: 1528px;
    display: flex;
    justify-content: flex-start;
    align-items: center;
    gap: 100px;
   

}


.loginBox{
    height: 500px;
    width: 350px;
    border: 2px solid white;
    background-color: white;
    border-top-left-radius: 150px;
    border-bottom-right-radius: 150px;
    box-shadow: 0px 0px 30px 1px rgb(121, 119, 119);

    margin-left: 150px;
    padding: 2px 20px;
    display: flex;
    flex-direction: column;
    justify-content: flex-start;
    align-items: center;
    
}
.logoName{
    height: 70px;
    width: 280px;
    background-image: url(images/farm2martlogo.png);
    background-size: cover;
    margin-top: 40px;
}
.emailNum{
    margin-top: 40px;
}
.emailnumber{
    display: flex;
    gap: 10px;
    margin-top: 10px;
}
.email-para{
    size: 10px;
}
#user-icon{
    size: 10px;
}
.email-input{
    border: none;
    outline: none;
    width: 300px;
    height: 20px;
}
.horizontal-line1{
    height: 1.5px;
    width: 300px;
    margin-top: 10px;
    background-color: rgb(65, 63, 63);
}


.password{
    display: flex;
    flex-direction: column;
    align-items: flex-start;
    position: relative;
    right: 15px ;
    margin-top: 30px;

}
.password-para{
    size: 10px;
}
.pass-lock{
    margin-top: 5px;
   

}
.password-input{
    height: 30px;
    width: 220px;
    border: none;
    outline: none;
    padding-left: 15px;
    
}
.horizontal-line2{
    height: 1.5px;
    width: 300px;
    margin-top: 10px;
    background-color: rgb(65, 63, 63);
}
 
 
.loginRegister{
    display: flex;
    flex-direction: column;
    margin-top: 40px;
    gap: 25px;
}
.loginbutton{
    height: 35px;
    width: 180px;
    background-color: red;
    color: white;
    border: 1.5px solid white;
    border-radius: 8px;
    box-shadow: 0px 0px 5px 1px rgb(121, 119, 119);

}
.new-acc{
    text-decoration: none;
    color: red;
}

.farmerlogo{
    height: 675px; 
    width : 740px;
    background-image: url(images/loginpagefarmerlogo.png);
    background-size: cover;
    margin-top: 70px;

}
.footeriframe{
    border: none;
}
    </style>
</head>
<body>
     <input type="hidden" id="status" value="<%= request.getAttribute("status")  %>"> 

    <main>
        <form action="login" method="post">
            <div class="loginBox">
                <div class="logoName"></div>
                <div class="emailNum">
                    <p class="email-para">Enter Email address</p>
                    <div class="emailnumber">
                        <i class="fa-regular fa-user" id="user-icon"></i>
                        <input name="email" type="email" placeholder="  Enter here " class="email-input" required>
                    </div>
                    <div class="horizontal-line1"></div>
                </div>
                
                <div class="password"> 	
                    <p class="password-para">Password</p>
                   <div class="pass-lock">
                    <i class="fa-solid fa-lock"></i>
                    <input name="password" type="password" placeholder="Enter password here" class="password-input" required>
                   </div>
                   <div class="horizontal-line2"></div>
                </div>
               <div class="loginRegister">
                <button type="submit" class="loginbutton">LOGIN</button>
                <a href="registration.jsp" class="new-acc">create new account</a>
               </div>
            </div>
        </form>

        <div class="farmerlogo"></div>
    </main>
    <iframe src="footer.html" width="1528px" height="400" class="footeriframe"></iframe>




    <!-- JS -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="js/main.js"></script>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <link rel="stylesheet" href="alert/dist/sweetalert.css">
    
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    
    <script>
        document.addEventListener("DOMContentLoaded", function() {
            var status = document.getElementById("status").value;

           if (status === "failed") {
                swal("Oops", "Login failed!", "error");
            }
        });
    </script>   
</body>
</html>