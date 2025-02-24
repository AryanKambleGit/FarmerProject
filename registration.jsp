<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title> FARM 2 MART -registration page </title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css"
        integrity="sha512-Evv84Mr4kqVGRNSgIGL/F/aIDqQb7xQ2vcrdIwxfjThSH8CSR7PBEakCr51Ck+w+/U6swU2Im1vVX0SVk9ABhg=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="registration.css">
    <style>
        *{
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Roboto', sans-serif;
            letter-spacing: 1.5px;
        }
        main{
            background-image: url(images/loginbackgroundimage.png);
            background-size: cover;
            height: 740px;
            width: 1528px;
            display: flex;
            justify-content: center;
            align-items: flex-start;
            gap: 150px;
        }
        .registerBox{
            height: 600px;
            width: 500px;
            border: 2px solid white;
            background-color: white;
            border-top-left-radius: 150px;
            border-bottom-right-radius: 150px;
            box-shadow: 0px 0px 30px 1px rgb(121, 119, 119);
            color: black;
            display: flex;
            flex-direction: column;
            justify-content: flex-start;
            align-items: flex-start;
            margin-top: 70px;
        }
        .logoReg{
            height: 70px;
            width: 280px;
            background-image: url(images/farm2martlogo.png);
            background-size: cover;
            margin-top: 30px;
            margin-left: 110px;
        }
        .regbox-details{
            display: flex;
            flex-direction: column;
            align-items: flex-start;
            margin-top: 15px;
            margin-left: 100px;
            gap: 5px;
        }
        .regDetails-para{
            font-size: 10px;
            font-weight: 500;
        }
        .regDetails-input{
            font-size: medium;
            height: 20px;
            width: 280px;
            border: none;
            outline: none;
        }
        .regHorizontalLine{
            height: 1.5px;
            width: 270px;
            background-color: rgb(49, 47, 47);
        }
        .nameDetails{
            margin-top: 20px;
        }
        .sub-allacc{
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            position: relative;
            left: 130px;
            gap: 10px;
            margin-top: 30px;
        }
        .submitBtnReg{
            height: 35px;
            width: 200px;
            color: white;
            background-color: red;
            border-radius: 50px;
            border: 1.5px solid white;
            box-shadow: 0px 0px 15px 1.5px rgb(83, 82, 82);
        }
        #alreadyAcc{
            text-decoration: none;
            color: red;
        }
        .footeriframe{
    border: none;
}
    </style>
   
</head>
<body>

    <main>
        <form action="regist" method="post">
            <div class="registerBox">
                <div class="logoReg"></div>
                <div class="nameDetails regbox-details">
                    <p class="regDetails-para">Name</p>
                    <div class="icon-input">
                        <i class="fa-regular fa-keyboard"></i>
                        <input name="name" type="text" class="regDetails-input" id="name-input" placeholder="Enter your name">
                    </div>
                    <div class="regHorizontalLine"></div>
                </div>
                <div class="ageDetails regbox-details">
                    <p class="regDetails-para">Age</p>
                    <div class="icon-input">
                        <i class="fa-solid fa-calendar-days"></i>
                        <input name="age" type="number" class="regDetails-input" placeholder="Enter age">
                    </div>
                    <div class="regHorizontalLine"></div>
                </div>
                <div class="emailDetails regbox-details">
                    <p class="regDetails-para">Email address</p>
                    <div class="icon-input">
                        <i class="fa-solid fa-envelope"></i>
                        <input name="email" type="email" class="regDetails-input" id="email-input" placeholder="Enter your email">
                    </div>
                    <div class="regHorizontalLine"></div>
                </div>
                <div class="phoneDetails regbox-details">
                    <p class="regDetails-para">Mobile number</p>
                    <div class="icon-input">
                        <i class="fa-solid fa-phone"></i>
                        <input name="mobile" type="number" class="regDetails-input" placeholder="Enter your mobile number">
                    </div>
                    <div class="regHorizontalLine"></div>
                </div>
                <div class="passwordDetails regbox-details">
                    <p class="regDetails-para">Password</p>
                    <div class="icon-input">
                        <i class="fa-solid fa-lock"></i>
                        <input name="password" type="password" class="regDetails-input" placeholder="Enter password">
                    </div>
                    <div class="regHorizontalLine"></div>
                </div>
                <div class="confirmPassDetails regbox-details">
                    <p class="regDetails-para">Confirm password</p>
                    <div class="icon-input">
                        <i class="fa-solid fa-lock"></i>
                        <input name="cnf-password" type="password" class="regDetails-input" placeholder="Confirm password">
                    </div>
                    <div class="regHorizontalLine"></div>
                </div>
                <div class="sub-allacc">
                    <button type="submit" class="submitBtnReg">REGISTER</button>
                    <a href="login.jsp" id="alreadyAcc">I already have an account</a>
                </div>
            </div>
        </form>
    </main>
    <iframe src="footer.html" width="1528px" height="400" class="footeriframe"></iframe>

    <inp*ut type="hidden" id="status" value="<%= request.getAttribute("status") %>">
 

    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <script>
        document.addEventListener("DOMContentLoaded", function() {
            var status = document.getElementById("status").value;
            if (status === "success") {
                swal("Congratulations", "Registration successful!", "success");
            } else if (status === "failed") {
                swal("Oops", "Registration failed!", "error");
            } else if (status === "emailexisted") {
                swal("Oops", "Email already exists. Please use a different email.", "warning");
            }
        });
    </script>
</body></html>