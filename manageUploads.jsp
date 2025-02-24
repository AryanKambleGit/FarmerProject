<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.PreparedStatement" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Manage Uploads</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css"
        integrity="sha512-Evv84Mr4kqVGRNSgIGL/F/aIDqQb7xQ2vcrdIwxfjThSH8CSR7PBEakCr51Ck+w+/U6swU2Im1vVX0SVk9ABhg=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="navbar.css">
    <link rel="stylesheet" href="manageUploads.css">
    <style>
        body {
            font-family: 'Roboto', sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f0f2f5;
        }

        .headeriframe {
            border: none;
            position: fixed;
            top: 0;
            width: 100%;
            height: 60px;
            z-index: 1000;
        }

        main {
            padding: 20px;
            background-color: #f0f2f5;
            min-height: 100vh;
            margin: 80px auto; /* Adjusted margin to account for header */
            max-width: 1200px;
        }

        h1 {
            text-align: center;
            margin-bottom: 20px;
            color: #333;
        }

        .container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 20px;
        }

        .upload-card {
            background-color: #fff;
            border: 1px solid #ccc;
            border-radius: 15px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            padding: 20px;
            width: 300px;
            transition: transform 0.2s, box-shadow 0.2s;
            margin-bottom: 20px;
        }

        .upload-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
        }

        .upload-card p {
            margin: 10px 0;
            font-size: 14px;
            color: #333;
        }

        .upload-card p strong {
            color: #000;
        }

        .delete-button {
            background-color: #ff4b5c;
            color: white;
            border: none;
            border-radius: 5px;
            padding: 5px 10px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .delete-button:hover {
            background-color: #e60026;
        }

        .empty-message {
            text-align: center;
            color: #888;
            font-size: 18px;
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <iframe src="header.html" class="headeriframe"></iframe>
    <main>
        <h1>Manage Your Uploads</h1>
        <div class="container" id="uploadsContainer">
            <%
                String jdbcURL = "jdbc:mysql://localhost:3306/deepseek";
                String dbUser = "root";
                String dbPassword = "AryanSql@1";
                String email = (String) session.getAttribute("email");

                try (Connection conn = DriverManager.getConnection(jdbcURL, dbUser, dbPassword);
                     PreparedStatement stmt = conn.prepareStatement("SELECT * FROM sellers WHERE email = ?")) {

                    stmt.setString(1, email);
                    ResultSet rs = stmt.executeQuery();

                    if (!rs.isBeforeFirst()) {
            %>
            <p class="empty-message">No requirements found!</p>
            <%
                    } else {
                        while (rs.next()) {
            %>
            <div class="upload-card">
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
                <p><strong>Uploaded at:</strong> <%= rs.getString("created_at") %></p>
                <form action="DeleteUploadServlet" method="post" style="margin-top: 10px;">
                    <input type="hidden" name="productName" value="<%= rs.getString("product") %>">
                    <button type="submit" class="delete-button">Delete</button>
                </form>
            </div>
            <%
                        }
                    }
                } catch (Exception e) {
                    e.printStackTrace();
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