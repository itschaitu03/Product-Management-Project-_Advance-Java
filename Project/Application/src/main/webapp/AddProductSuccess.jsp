<%@page import="com.chaitu.bean.ProductBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Add Product Success</title>
    <style>
        /* Global styles */
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background: linear-gradient(135deg, #4caf50, #6e7cfd);
            color: white;
            overflow: hidden;
        }

        /* Container styles */
        .container {
            width: 80%;
            max-width: 600px;
            background-color: rgba(255, 255, 255, 0.9);
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0 6px 15px rgba(0, 0, 0, 0.1);
            text-align: center;
            opacity: 0;
            animation: slideIn 1.5s forwards;
        }

        /* Heading styles */
        h1 {
            font-size: 28px;
            color: #333;
            margin-bottom: 20px;
            text-transform: uppercase;
        }

        /* Success message styling */
        .success-message {
            font-size: 24px;
            color: #4caf50;
            margin-bottom: 30px;
            font-weight: bold;
            opacity: 0;
            animation: fadeInMessage 2s forwards 1.5s;
        }

        /* Button styles */
        .btn {
            background-color: #4caf50;
            color: white;
            font-size: 18px;
            padding: 12px 25px;
            border: none;
            border-radius: 5px;
            margin: 10px;
            cursor: pointer;
            width: 200px;
            text-decoration: none;
            transition: background-color 0.3s ease, transform 0.3s ease, box-shadow 0.3s ease;
        }

        .btn:hover {
            background-color: #45a049;
            transform: translateY(-3px);
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.15);
        }

        .btn:active {
            background-color: #388e3c;
            transform: translateY(2px);
        }

        /* Logout button styles */
        .logout-btn {
            background-color: #f44336;
        }

        .logout-btn:hover {
            background-color: #e53935;
            transform: scale(1.1); /* Grow effect on hover */
        }

        /* Animations */
        @keyframes slideIn {
            0% {
                opacity: 0;
                transform: translateY(-50px);
            }
            100% {
                opacity: 1;
                transform: translateY(0);
            }
        }

        @keyframes fadeInMessage {
            0% {
                opacity: 0;
            }
            100% {
                opacity: 1;
            }
        }
        a {
    text-decoration: none;
}
        
    </style>
</head>
<body>

<div class="container">
    <h1>Product Added Successfully</h1>

    <div class="success-message">
        <%
            out.println("Product added successfully... <br>");
        %>
    </div>

    <!-- Buttons with hover and click effects -->
    <a href="ViewAllProduct">
        <button class="btn">View All Products</button>
    </a>
    <a href="Logout">
        <button class="btn logout-btn">Logout</button>
    </a>
</div>

</body>
</html>
