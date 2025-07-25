<%@page import="com.chaitu.bean.ProductBean"%>
<%@page import="com.chaitu.bean.AdminBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Admin Panel</title>
    <style>
        /* Body Styling */
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f0f4f8;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            color: #333;
        }

        /* Container Styling */
        .container {
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 6px 20px rgba(0, 0, 0, 0.1);
            padding: 40px;
            width: 80%;
            max-width: 600px;
            text-align: center;
        }

        /* Header Styling */
        h1 {
            font-size: 26px;
            color: #4CAF50;
            margin-bottom: 20px;
        }

        /* Welcome Message Styling */
        .message {
            font-size: 18px;
            margin-bottom: 25px;
            color: #555;
            font-weight: 600;
        }

        /* Links (Buttons) Styling */
        a {
            text-decoration: none;
            margin: 10px;
        }

        input[type="submit"] {
            background-color: #4CAF50;
            border: none;
            color: white;
            padding: 15px 25px;
            text-align: center;
            font-size: 18px;
            cursor: pointer;
            border-radius: 5px;
            transition: background-color 0.3s ease, transform 0.3s ease;
            width: 100%;
            max-width: 250px;
            margin: 10px auto;
        }

        input[type="submit"]:hover {
            background-color: #45a049;
            transform: translateY(-3px);
        }

        input[type="submit"]:active {
            transform: translateY(3px);
        }

        /* Logout Button Styling */
        .logout-btn {
            background-color: #f44336;
        }

        .logout-btn:hover {
            background-color: #e53935;
        }

        .logout-btn:active {
            transform: translateY(3px);
        }

        /* Animation for Fade-in of Content */
        .fade-in {
            animation: fadeIn 1.5s ease-in-out;
        }

        @keyframes fadeIn {
            0% { opacity: 0; }
            100% { opacity: 1; }
        }
        a {
    text-decoration: none;
}
        
    </style>
</head>
<body>

<div class="container fade-in">
    <h1>Admin Panel</h1>
    <%
        AdminBean ab = (AdminBean) session.getAttribute("abean");
    String msg = (String)request.getAttribute("msg");
        out.println("<div class='message'>Welcome Admin: " + ab.getUserName() + "</div>");
        out.println("<div class='message'>" + msg + "</div>");
    %>

    <!-- Action Buttons -->
    <a href="AddProduct.html">
        <input type="submit" value="Add Product">
    </a>
    <a href="ViewAllProduct">
        <input type="submit" value="View All Products">
    </a>
    <a href="Logout">
        <input type="submit" class="logout-btn" value="Logout">
    </a>
</div>
</body>
</html>
