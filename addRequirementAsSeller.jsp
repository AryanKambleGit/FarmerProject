<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>FARM 2 MART - Requirement</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css"
        integrity="sha512-Evv84Mr4kqVGRNSgIGL/F/aIDqQb7xQ2vcrdIwxfjThSH8CSR7PBEakCr51Ck+w+/U6swU2Im1vVX0SVk9ABhg=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />    <link rel="stylesheet" href="navbar.css">
   <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Roboto', sans-serif;
            letter-spacing: 1.5px;
        }

        main {
            background-image: url(images/loginbackgroundimage.png);
            background-size: cover;
            height: 680px;
            width: 1528px;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            margin-top: 60px;
        }

        .requirementPage {
            height: 630px;
            width: 800px;
            background-image: url(images/requirementBackgroun.png);
            border: 2px solid rgb(255, 255, 255);
            border-radius: 20px;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            gap: 30px;
            box-shadow: 0px 0px 20px 1px rgb(114, 105, 105);
        }

        .first-paraDiv {
            height: 30px;
            width: 400px;
            display: flex;
            justify-content: center;
            align-items: center;
            background-color: rgb(0, 149, 255);
            color: white;
            border: 1.5px solid white;
            border-radius: 5px;
        }

        .buyOrSell {
            display: flex;
            justify-content: center;
            align-items: center;
            gap: 50px;
        }

        .wantToSell {
            gap: 30px;
        }

        .wantToBuy {
            gap: 20px;
        }

        .wantSell-para {
            padding: 5px 20px;
            background-color: red;
            border-radius: 10px;
            border: 1.5px solid white;
            box-shadow: 0px 0px 20px 1px rgb(145, 139, 139);
            color: white;
        }

        .wantBuy-para {
            padding: 5px 20px;
            background-color: rgb(21, 255, 0);
            border-radius: 10px;
            border: 1.5px solid white;
            box-shadow: 0px 0px 20px 1px rgb(145, 139, 139);
            color: white;
        }

        .productAndType {
            display: flex;
            justify-content: center;
            align-items: center;
            gap: 100px;
        }

        .productTypeDiv {
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: flex-start;
            gap: 5px;
        }

        .productDiv {
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: flex-start;
        }

        .horizontalLine {
            height: 1.5px;
            width: 250px;
            background-color: rgb(148, 134, 134);
        }

        #productType-para {
            font-size: 10px;
            font-weight: 500;
        }

        #product-para {
            font-size: 10px;
            font-weight: 500;
        }

        .ProductType {
            height: 30px;
            width: 200px;
            font-weight: 500;
            font-size: 16px;
            padding-left: 38px;
            border: none;
            outline: none;
            border-radius: 10px;
            background-color: transparent;
        }

        .Product {
            height: 30px;
            width: 200px;
            font-weight: 500;
            font-size: 16px;
            padding-left: 50px;
            border-radius: 10px;
            border: none;
            outline: none;
            background-color: transparent;
        }

        .quantityAndRate {
            display: flex;
            justify-content: center;
            align-items: center;
            gap: 100px;
        }

        .quantity {
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: flex-start;
            gap: 5px;
        }

        #quantity-para {
            font-size: 10px;
            font-weight: 500;
        }

        .inputQuantity {
            display: flex;
            justify-content: center;
            align-items: center;
            gap: 15px;
        }

        #input-Quantity {
            height: 30px;
            width: 150px;
            font-weight: 550;
            font-size: 16px;
            padding-left: 40px;
            border-radius: 10px;
            border: none;
            outline: none;
        }

        #quantity-ex {
            height: 30px;
            width: 50px;
            font-weight: 600;
            font-size: 12px;
            border-radius: 10px;
            border: none;
            outline: none;
        }

        .rate {
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: flex-start;
            gap: 5px;
        }

        #rate-para {
            font-size: 10px;
            font-weight: 500;
        }

        .inputRate {
            display: flex;
            justify-content: center;
            align-items: center;
            gap: 15px;
        }

        #input-Rate {
            height: 30px;
            width: 150px;
            font-weight: 550;
            font-size: 16px;
            padding-left: 40px;
            border: none;
            outline: none;
            border-radius: 10px;
        }

        #rate-ex {
            height: 30px;
            width: 50px;
            font-weight: 600;
            font-size: 12px;
            border-radius: 10px;
            border: none;
            outline: none;
        }

        .name {
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: flex-start;
            gap: 5px;
        }

        #name-para {
            font-size: 10px;
            font-weight: 500;
        }

        .iconInputName {
            display: flex;
            justify-content: center;
            align-content: center;
        }

        #fullName {
            height: 30px;
            width: 500px;
            font-weight: 500;
            font-size: 16px;
            padding-left: 10px;
            border: none;
            outline: none;
            border-radius: 10px;
        }

        .fullNameLine {
            width: 600px;
        }

        .mobileNumAndEmail {
            display: flex;
            justify-content: center;
            align-items: center;
            gap: 100px;
        }

        #mobileNum-para {
            font-size: 10px;
            font-weight: 500;
        }

        .mobileNum {
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: flex-start;
            gap: 5px;
        }

        #mo-Number {
            height: 30px;
            width: 170px;
            font-weight: 550;
            font-size: 16px;
            padding-left: 10px;
            border: none;
            outline: none;
            background-color: transparent;
        }

        #emailAdd-para {
            font-size: 10px;
            font-weight: 500;
        }

        .email {
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: flex-start;
            gap: 5px;
        }

        #emailAddress {
            height: 30px;
            width: 220px;
            font-weight: 500;
            font-size: 12px;
            padding-left: 5px;
            border: none;
            outline: none;
            background-color: transparent;
        }

        .emailLine {
            width: 250px;
        }

        .locationFilter {
            display: flex;
            justify-content: center;
            align-items: center;
            gap: 100px;
        }

        .stateDiv {
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: flex-start;
            gap: 5px;
        }

        .stateInput {
            height: 30px;
            width: 200px;
            font-weight: 500;
            font-size: 16px;
            padding-left: 30px;
            border: none;
            outline: none;
            background-color: transparent;
        }

        .districtDiv {
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: flex-start;
            gap: 5px;
        }

        #selectState {
            font-size: 10px;
            font-weight: 500;
        }

        #selectDistrict {
            font-size: 10px;
            font-weight: 500;
        }

        .districtInput {
            height: 30px;
            width: 200px;
            font-weight: 500;
            font-size: 16px;
            padding-left: 30px;
            border: none;
            outline: none;
            background-color: transparent;
        }

        #requirementSubmitBtn {
            height: 30px;
            width: 150px;
            background-color: rgb(0, 123, 255);
            border: 1.5px solid white;
            border-radius: 10px;
            color: white;
            box-shadow: 0px 0px 20px 1px rgb(169, 162, 162);
        }

        .headeriframe {
            border: none;
            position: fixed;
            top: 0;
            z-index: 1000;
        }

        .footeriframe {
            border: none;
        }
        form {
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    width: 100%; /* Ensure form doesn't shrink */
    gap: 30px;
}
    </style>
   
</head>

<body>
  <iframe src="header.html" width="1528px" height="60px" class="headeriframe"></iframe>    
    <main>
        <div class="requirementPage">
            <form action="SubmitRequirementSellerServlet" method="post">
            
                <input type="hidden" name="userID" value="<%= session.getAttribute("gett") %>">
                <div class="first-paraDiv">
                    <p id="first-para">ENTER YOUR REQUIREMENTS AND SUBMIT</p>
                </div>
                <div class="buyOrSell">
                </div>
                <div class="productAndType">
                    <div class="productTypeDiv">
                        <p id="productType-para">Select Product Type :</p>
                        <select name="productType" id="ProductType" class="ProductType" onchange="updateProducts()" required >
                            <option value="">--select--</option>
                            <option value="Grains">Grains</option>
                            <option value="Fruits">Fruits</option>
                            <option value="Vegetables">Vegetables</option>
                        </select>
                        <div class="horizontalLine"></div>
                    </div>
                    <div class="productDiv">
                        <p id="product-para">Select Product :</p>
                        <select id="Product" name="product" class="Product" required>
                            <option value="">--Select--</option>
                        </select>
                        <div class="horizontalLine"></div>
                    </div>
                </div>
                <div class="quantityAndRate">
                    <div class="quantity">
                        <p id="quantity-para">Select Quantity :</p>
                        <div class="inputQuantity">
                            <input type="number" id="input-Quantity" name="quantity" placeholder="Enter Qty" required>
                            <select name="quantity-ex" id="quantity-ex">
                                <option value="kg">kg</option>
                                <option value="quintal">Qtl</option>
                                <option value="tonne">Tn</option>
                                <option value="box">box</option>
                            </select>
                        </div>
                        <div class="horizontalLine"></div>
                    </div>
                    <div class="rate">
                        <p id="rate-para">Select Rate :</p>
                        <div class="inputRate">
                            <input type="number" id="input-Rate" name="rate" placeholder="Enter rate" required>
                            <select name="rate-ex" id="rate-ex">
                                <option value="/ kg">/ kg</option>
                                <option value="/ Qtl">/ Qtl</option>
                                <option value="/ tonne">/ tonne</option>
                                <option value="/ box">/ box</option>
                            </select>
                        </div>
                        <div class="horizontalLine"></div>
                    </div>
                </div>
                <div class="name">
                    <p id="name-para">Enter full Name :</p>
                    <div class="iconInputName">
                        <i class="fa-regular fa-keyboard fa-bounce"></i>
                        <input type="text" id="fullName" name="fullName" placeholder="Enter full name" required>
                    </div>
                    <div class="horizontalLine fullNameLine"></div>
                </div>
                <div class="mobileNumAndEmail">
                    <div class="mobileNum">
                        <p id="mobileNum-para">Enter Mobile number :</p>
                        <div class="iconInputMobile">
                            <i class="fa-solid fa-phone fa-shake"></i>
                            <input type="number" id="mo-Number" name="mobileNumber" placeholder="Enter Number" required>
                        </div>
                        <div class="horizontalLine"></div>
                    </div>
                    <div class="email">
                        <p id="emailAdd-para">Enter email address :</p>
                        <div class="emailInputLine">
                            <i class="fa-solid fa-envelope fa-bounce"></i>
                            <input type="email" id="emailAddress" name="email" placeholder="Enter email"required>
                        </div>
                        <div class="horizontalLine emailLine"></div>
                    </div>
                </div>
                <div class="locationFilter">
                    <div class="stateDiv">
                        <label for="state" id="selectState">Select State:</label>
                        <select id="state" name="state" class="stateInput" onchange="updateDistricts()" required>
                            <option value="">--Select State--</option>
                            <option value="Andhra Pradesh">Andhra Pradesh</option>
                            <option value="Arunachal Pradesh">Arunachal Pradesh</option>
                            <option value="Assam">Assam</option>
                            <option value="Bihar">Bihar</option>
                            <option value="Chhattisgarh">Chhattisgarh</option>
                            <option value="Goa">Goa</option>
                            <option value="Gujarat">Gujarat</option>
                            <option value="Haryana">Haryana</option>
                            <option value="Himachal Pradesh">Himachal Pradesh</option>
                            <option value="Jharkhand">Jharkhand</option>
                            <option value="Karnataka">Karnataka</option>
                            <option value="Kerala">Kerala</option>
                            <option value="Madhya Pradesh">Madhya Pradesh</option>
                            <option value="Maharashtra">Maharashtra</option>
                            <option value="Manipur">Manipur</option>
                            <option value="Meghalaya">Meghalaya</option>
                            <option value="Mizoram">Mizoram</option>
                            <option value="Nagaland">Nagaland</option>
                            <option value="Odisha">Odisha</option>
                            <option value="Punjab">Punjab</option>
                            <option value="Rajasthan">Rajasthan</option>
                            <option value="Sikkim">Sikkim</option>
                            <option value="Tamil Nadu">Tamil Nadu</option>
                            <option value="Telangana">Telangana</option>
                            <option value="Tripura">Tripura</option>
                            <option value="Uttar Pradesh">Uttar Pradesh</option>
                            <option value="Uttarakhand">Uttarakhand</option>
                            <option value="West Bengal">West Bengal</option>
                        </select>
                        <div class="horizontalLine"></div>
                    </div>
                    <div class="districtDiv">
                        <label for="district" id="selectDistrict">Select District:</label>
                        <select id="district" name="district" class="districtInput" required>
                            <option value="">--Select District--</option>
                        </select>
                        <div class="horizontalLine"></div>
                    </div>
                </div>
                <button type="submit" id="requirementSubmitBtn">SUBMIT</button>
            </form>
        </div>
    </main>
   <script src="sellerInterface.js"></script>
    <link rel="stylesheet" href="alert/dist/sweetalert.css">
    <script src="js/main.js"></script>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <script>
        document.addEventListener("DOMContentLoaded", function() {
            var status = document.getElementById("status").value;

            if (status === "success") {
                swal("Congratulations", "data save successfully", "success");
            } else if (status === "failed") {
                swal("Oops", "failed to save data!", "error");
            }
        });
    
</body>
</html>