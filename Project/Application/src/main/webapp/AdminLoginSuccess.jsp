<%@page import="com.chaitu.bean.AdminBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Admin Login</title>
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

        /* Welcome message */
        .welcome-message {
            font-size: 18px;
            color: #4caf50;
            margin-bottom: 30px;
            font-weight: bold;
            opacity: 0;
            animation: fadeInMessage 2s forwards 1.5s;
        }

        /* Button styles */
        input[type="submit"] {
            background-color: #4caf50;
            border: none;
            color: white;
            padding: 12px 20px;
            font-size: 16px;
            cursor: pointer;
            border-radius: 5px;
            transition: background-color 0.3s ease, transform 0.3s ease, box-shadow 0.3s ease;
            width: 250px;
            margin: 10px;
        }

        input[type="submit"]:hover {
            background-color: #45a049;
            transform: translateY(-3px);
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.15);
        }

        input[type="submit"]:active {
            transform: translateY(3px);
            box-shadow: 0 3px 6px rgba(0, 0, 0, 0.2);
        }

        /* Logout button styles */
        .logout-btn {
            background-color: #f44336;
        }

        .logout-btn:hover {
            background-color: #e53935;
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
    <h1>Admin Panel</h1>
    <%
        AdminBean ab = (AdminBean) session.getAttribute("abean");
        out.println("<div class='welcome-message'>Welcome Admin: " + ab.getUserName() + "</div>");
    %>

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
