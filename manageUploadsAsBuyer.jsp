<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Manage Requirements</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css" integrity="sha512-Evv84Mr4kqVGRNSgIGL/F/aIDqQb7xQ2vcrdIwxfjThSH8CSR7PBEakCr51Ck+w+/U6swU2Im1vVX0SVk9ABhg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    
    <style>
        body {
            font-family: 'Roboto', sans-serif;
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        iframe.headeriframe {
            border: none;
            position: fixed;
            top: 0;
            width: 100%;
            height: 60px;
            z-index: 1000;
        }

        iframe.footeriframe {
            border: none;
            width: 100%;
            height: 400px;
        }

        main {
            background-color: #c8cfb7;
            width: 100%;
            max-width: 1528px;
            margin: 80px auto;
            padding: 20px;
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        h1 {
            text-align: center;
            color: #333;
        }

        .container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 20px;
        }

        .requirement-card {
            background-color: #e5bf8f;
            border: 1px solid #ccc;
            border-radius: 15px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            padding: 20px;
            width: 300px;
            transition: transform 0.2s, box-shadow 0.2s;
            margin-bottom: 20px;
        }

        .requirement-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
            border: 4px solid rgb(5, 105, 5);
        }

        .requirement-card p {
            margin: 10px 0;
            font-size: 14px;
            color: #333;
        }

        .requirement-card p strong {
            color: #000;
        }

        .delete-button {
            background-color: red;
            color: white;
            border: none;
            border-radius: 5px;
            padding: 5px 10px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .delete-button:hover {
            background-color: darkred;
        }

        .empty-message {
            text-align: center;
            color: #888;
            font-size: 18px;
            margin-top: 20px;
        }

        .manageName {
            width: 100%;
            display: flex;
            justify-content: center;
            align-items: center;
            border: 2px solid white;
            background-color: rgb(50, 134, 50);
            color: white;
            margin-top: 30px;
            padding: 15px;
        }

        #ManageYourReq {
            font-size: 22px;
            font-weight: 600;
        }

        .horizontalLine {
            width: 100%;
            border: 1.5px dashed green;
            margin: 20px 0;
        }
    </style>
</head>

<body>
    <iframe src="header.html" class="headeriframe"></iframe>

    <main>
       
        <div class="manageName">
            <p id="ManageYourReq">Manage Your Requirements</p>
        </div>
        <div class="horizontalLine"></div>
        <div class="container" id="requirementsContainer">
            <%
                String jdbcURL = "jdbc:mysql://localhost:3306/deepseek";
                String dbUser = "root";// Use environment variables
                String dbPassword = "AryanSql@1"; // Instead of hardcoded password

                String email = (String) session.getAttribute("email");
               
                try (Connection conn = DriverManager.getConnection(jdbcURL, dbUser, dbPassword);
                     PreparedStatement stmt = conn.prepareStatement("SELECT * FROM buyers WHERE email = ?")) {

                    stmt.setString(1, email);
                    ResultSet rs = stmt.executeQuery();

                    if (!rs.isBeforeFirst()) {
            %>
            <p class="empty-message">No requirements found!</p>
            <%
                    } else {
                        while (rs.next()) {
            %>
            <div class="requirement-card">
                <p><strong>Product Type:</strong> <%= rs.getString("productType") %></p>
                <p><strong>Product:</strong> <%= rs.getString("product") %></p>
                <p><strong>Quantity:</strong> <%= rs.getString("quantity") %></p>
                <p><strong>Rate:</strong> ₹<%= rs.getString("rate") %> per <%= rs.getString("rateEx") %></p>
                <p><strong>Full Name:</strong> <%= rs.getString("fullName") %></p>
                <p><strong>Mobile Number:</strong> <%= rs.getString("mobileNumber") %></p>
                <p><strong>Email:</strong> <%= rs.getString("email") %></p>
                <p><strong>State:</strong> <%= rs.getString("state") %></p>
                <p><strong>District:</strong> <%= rs.getString("district") %></p>
                <p><strong>Created At:</strong> <%= rs.getString("created_at") %></p>
                <form action="DeleteUploadServletOfBuyer" method="post" style="margin-top: 10px;">
                    <input type="hidden" name="requirementId" value="<%= rs.getInt("id") %>">
                    <button type="submit" class="delete-button">Delete</button>
                </form>
            </div>
              <%
                        }
                      
                    }
                } catch (Exception e) {
                    out.println("<p style='color:red;'>Error fetching requirements data. Please try again later.</p>");
                    		
                    e.printStackTrace(); // Log instead of printing in production
                    %>
     <p>Error fetching uploads data!</p>
            <%
                }
            %>
        </div>
    </main>
     <iframe src="footer.html" width="1528px" height="400" class="footeriframe"></iframe>
</body>
</html>