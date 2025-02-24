<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
 
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %> 
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>FARM 2 MART - Buyer Page</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css" integrity="sha512-Evv84Mr4kqVGRNSgIGL/F/aIDqQb7xQ2vcrdIwxfjThSH8CSR7PBEakCr51Ck+w+/U6swU2Im1vVX0SVk9ABhg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="navbar.css">
    <style>
        /* Add your styles here */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Roboto', sans-serif;
            letter-spacing: 1.5px;
        }

        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
        }

        #listOfSellerName {
            height: 40px;
            width: 250px;
            font-size: 18px;
            font-weight: 550;
            display: flex;
            justify-content: center;
            align-items: center;
            margin-left: 250px;
            margin-right: 180px;
            border: 2px dashed rgb(30, 255, 0);
            border-radius: 10px;
            color: rgb(30, 255, 0);
        }

        main {
            display: flex;
            flex-direction: column;
            align-items: center;
            margin-top: 60px;
            background-image: url(images/abcd.png);
            background-size: cover;
            height: auto;
            width: 1528px;
            display: flex;
            flex-direction: column;
            justify-content: flex-start;
            align-items: center;
            position: relative;
            padding: 20px;
            padding-bottom: 500px;
        }

        .firstDiv {
            display: flex;
            justify-content: flex-start;
            align-items: center;
            width: 100%;
        }

        /* Re-Select Button on Left */
        #re-selectBtn {
            height: 30px;
            width: 130px;
            font-weight: 700;
            color: white;
            background-color: rgb(255, 0, 0);
            border: 1px solid white;
            border-radius: 5px;
            box-shadow: 0px 0px 50px 1px rgb(131, 131, 135);
            display: flex;
            align-items: center;
            justify-content: center;
            text-decoration: none;
        }

        #re-selectIcon {
            rotate: 180deg;
            color: white;
            margin-right: 10px;
            text-decoration: none;
        }

        /* Buttons centered */
        .button-container {
            display: flex;
            justify-content: flex-start;
            gap: 10px;
            width: 100%;
            margin-top: 15px;
        }

        .add-requirement,
        .manage-uploads {
            font-size: 14px;
            color: white;
            background-color: rgb(0, 115, 255);
            border: 1.5px solid white;
            border-radius: 5px;
            padding: 10px 20px;
            box-shadow: 0px 0px 20px 1px rgb(126, 123, 123);
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .add-requirement:hover,
        .manage-uploads:hover {
            background-color: darkblue;
        }

        .welcomeSeller {
            padding: 10px 20px;
            background-color: rgb(255, 85, 0);
            box-shadow: 0px 0px 20px 1px rgba(131, 131, 135. 0.7);
            border: 1.5px solid rgb(255, 255, 255);
            border-radius: 5px;
            color: white;
            font-size: 18px;
            font-weight: 600;
            text-align: center;
            margin-left: 430px;
        }

        .search-container {
            margin-right: 5px;
            margin-left: 50px;
            margin-bottom: 20px;
        }

        .search-input {
            padding: 10px 20px;
            height: 40px;
            width: 300px;
            font-size: 16px;
            border-radius: 5px;
        }

        .container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 20px;
            margin-top: 20px;
        }

        .buyer-card {
            background-image: url(images/buyerCardBackground.png);
            background-size: cover;
            background-position: bottom center;
            color: rgb(0, 0, 0);
            border: 4px solid white;
            border-radius: 15px;
            box-shadow: 0px 0px 10px 8px rgba(0, 0, 0, 0.1);
            padding: 5px 20px;
            width: 350px;
            transition: transform 0.2s, box-shadow 0.2s;
        }

        .buyer-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
            border: 4px solid rgb(28, 162, 1);
        }

        .buyer-card p {
            margin: 10px 0;
            font-size: 16px;
            color: #000000;
        }

        .buyer-card p strong {
            color: #000;
        }

        .buyerNameLogo {
            height: 100px;
            width: 100px;
            background-image: url(images/buyerNameLogo\ \(2\).png);
            background-size: cover;
            margin-left: 95px;
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

        .horizontalLine {
            height: 2px;
            width: 1528px;
            background-color: transparent;
            border: 1px dashed rgb(6, 99, 17);
        }
    </style>
</head>

<body>
    <iframe src="header.html" width="1528px" height="60px" class="headeriframe"></iframe>
    <main>
        <div class="firstDiv">
            <!-- Re-Select Button on the Left -->
            <a href="ChooseSellerOrBuyer.jsp"><button id="re-selectBtn">
                    <p><i id="re-selectIcon" class="fa-solid fa-share-from-square"></i>Re-Select</p>
                </button></a>
            <div class="welcomeSeller">WELCOME TO THE BUYER PAGE !!</div>
        </div>

        <!-- Centered Buttons -->
        <div class="button-container">
            <div class="search-container">
                <input type="text" class="search-input" id="searchInput" placeholder="Search location...">
                <button id="voiceSearchButton" class="btn btn-primary">🎤</button>
            </div>
            <p id="listOfSellerName">LIST OF SELLERS</p>
            <a href="addRequirementAsBuyer.jsp"><button class="add-requirement"> + ADD REQUIREMENT</button></a>
            <a href="manageUploadsAsBuyer.jsp"><button class="manage-uploads"> + MANAGE UPLOADS</button></a>
        </div>
        
        <!-- Add select tags for state, district, product, and product type -->
        <div class="filter-container">
            <select id="stateFilter" onchange="filterSellers()">
                <option value="">Select State</option>
                <!-- Add options dynamically from the database -->
                <%
                Class.forName("com.mysql.cj.jdbc.Driver");
                    try (Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/deepseek", "root", "AryanSql@1");
                         Statement stmt = conn.createStatement();
                         ResultSet rs = stmt.executeQuery("SELECT DISTINCT state FROM sellers")) {
                        while (rs.next()) {
                            String state = rs.getString("state");
                %>
                <option value="<%= state %>"><%= state %></option>
                <%
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                %>
            </select>
            
            <select id="districtFilter" onchange="filterSellers()">
                <option value="">Select District</option>
                <!-- Add options dynamically from the database -->
                <%
                    try (Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/deepseek", "root", "AryanSql@1");
                         Statement stmt = conn.createStatement();
                         ResultSet rs = stmt.executeQuery("SELECT DISTINCT district FROM sellers")) {
                        while (rs.next()) {
                            String district = rs.getString("district");
                %>
                <option value="<%= district %>"><%= district %></option>
                <%
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                %>
            </select>

            <select id="productFilter" onchange="filterSellers()">
                <option value="">Select Product</option>
                <!-- Add options dynamically from the database -->
                <%
                    try (Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/deepseek", "root", "AryanSql@1");
                         Statement stmt = conn.createStatement();
                         ResultSet rs = stmt.executeQuery("SELECT DISTINCT product FROM sellers")) {
                        while (rs.next()) {
                            String product = rs.getString("product");
                %>
                <option value="<%= product %>"><%= product %></option>
                <%
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                %>
            </select>

            <select id="productTypeFilter" onchange="filterSellers()">
                <option value="">Select Product Type</option>
                <!-- Add options dynamically from the database -->
                <%
                    try (Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/deepseek", "root", "AryanSql@1");
                         Statement stmt = conn.createStatement();
                         ResultSet rs = stmt.executeQuery("SELECT DISTINCT productType FROM sellers")) {
                        while (rs.next()) {
                            String productType = rs.getString("productType");
                %>
                <option value="<%= productType %>"><%= productType %></option>
                <%
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                %>
            </select>
        </div>
        
        <div class="horizontalLine"></div>

        <div class="container" id="buyersContainer">
            <%
                String jdbcURL = "jdbc:mysql://localhost:3306/deepseek";
                String dbUser  = "root";
                String dbPassword = "AryanSql@1";

                try (Connection conn = DriverManager.getConnection(jdbcURL, dbUser, dbPassword);
                     Statement stmt = conn.createStatement();
                     ResultSet rs = stmt.executeQuery("SELECT * FROM sellers")) {

                    while (rs.next()) {
            %> 
            <div class="buyer-card" data-state="<%= rs.getString("state") %>" data-district="<%= rs.getString("district") %>" data-product="<%= rs.getString("product") %>" data-productType="<%= rs.getString("productType") %>">
                <div class="sellerNameLogo"></div>
                <p><strong>Product Type:</strong> <%= rs.getString("productType") %></p>
                <p><strong>Product:</strong> <%= rs.getString("product") %></p>
                <p><strong>Quantity:</strong> <%= rs.getString("quantity") %></p>
                <p><strong>Quantity Ex:</strong> <%= rs.getString("quantityEx") %></p>
                <p><strong>Rate:</strong> ₹<%= rs.getString("rate") %> per <%= rs.getString("rateEx") %></p>
                <p><strong>Full Name:</strong> <%= rs.getString("fullName") %></p>
                <p><strong>Mobile Number:</strong> <%= rs.getString("mobileNumber") %></p>
                <p><strong>Email:</strong> <%= rs.getString("email") %></p>
                <p><strong>State:</strong> <%= rs.getString("state") %></p>
                <p><strong>District:</strong> <%= rs.getString("district") %></p>
                <p><strong>Uploaded At:</strong> <%= rs.getString("created_at") %></p>
            </div>
            <%
                    }
                } catch (Exception e) {
                    e.printStackTrace();
            %>
            <p>Error fetching sellers data!</p>
            <%
                }
            %> 
        </div>
    </main>
    <iframe src="footer.html" width="1528px" height="400" class="footeriframe"></iframe>
    <script>
        document.getElementById('searchInput').addEventListener('input', function() {
            const searchTerm = this.value.toLowerCase();
            const cards = document.querySelectorAll('.buyer-card');

            cards.forEach(card => {
                const text = card.textContent.toLowerCase();
                card.style.display = text.includes(searchTerm) ? "block" : "none";
            });
        });

        function filterSellers() {
            const stateFilter = document.getElementById('stateFilter').value.toLowerCase();
            const districtFilter = document.getElementById('districtFilter').value.toLowerCase();
              const productTypeFilter = document.getElementById('productTypeFilter').value.toLowerCase();
            const cards = document.querySelectorAll('.buyer-card');

            cards.forEach(card => {
                const state = card.getAttribute('data-state').toLowerCase();
                const district = card.getAttribute('data-district').toLowerCase();
                const product = card.getAttribute('data-product').toLowerCase();
                const productType = card.getAttribute('data-productType').toLowerCase();
                const matchesState = !stateFilter || state === stateFilter;
                const matchesDistrict = !districtFilter || district === districtFilter;
                const matchesProduct = !productFilter || product === productFilter;
                const matchesProductType = !productTypeFilter || productType === productTypeFilter;
                card.style.display = matchesState && matchesDistrict && matchesProduct && matchesProductType ? "block" : "none";
            });
        }

        // Voice search functionality
        const voiceSearchButton = document.getElementById('voiceSearchButton');
        const searchInput = document.getElementById('searchInput');

        voiceSearchButton.addEventListener('click', () => {
            const recognition = new (window.SpeechRecognition || window.webkitSpeechRecognition)();
            recognition.lang = 'en-US';

            recognition.onstart = () => {
                console.log('Voice recognition started. Speak into the microphone.');
            };

            recognition.onresult = (event) => {
                const transcript = event.results[0][0].transcript;
                searchInput.value = transcript;
                const searchEvent = new Event('input');
                searchInput.dispatchEvent(searchEvent);
            };

            recognition.onerror = (event) => {
                console.error('Voice recognition error', event.error);
            };

            recognition.onend = () => {
                console.log('Voice recognition ended.');
            };

            recognition.start();
        });
    </script>
</body>
</html>         
  