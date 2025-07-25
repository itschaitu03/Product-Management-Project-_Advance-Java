<%@page import="com.chaitu.bean.ProductBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Message</title>
    <style>
        /* Body and background animation */
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #6e7cfd, #4caf50);
            background-size: 200% 200%;
            animation: gradientAnimation 5s ease infinite;
            margin: 0;
            padding: 0;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            text-align: center;
            color: white;
        }

        /* Message box styling */
        .message-box {
            background-color: rgba(255, 255, 255, 0.9);
            border-radius: 10px;
            padding: 30px;
            box-shadow: 0 6px 20px rgba(0, 0, 0, 0.1);
            width: 80%;
            max-width: 600px;
            opacity: 0;
            animation: slideIn 1.5s forwards;
        }

        h1 {
            font-size: 30px;
            margin-bottom: 20px;
            color: #4caf50;
        }

        .message-text {
            font-size: 18px;
            color: #333;
            margin-bottom: 30px;
            font-weight: bold;
            opacity: 0;
            animation: fadeIn 2s forwards 1.5s;
        }

        /* Home link styling */
        .home-link {
            display: inline-block;
            background-color: #4CAF50;
            color: white;
            padding: 12px 20px;
            font-size: 18px;
            border-radius: 5px;
            text-decoration: none;
            margin-top: 20px;
            transition: background-color 0.3s ease, transform 0.3s ease;
        }

        .home-link:hover {
            background-color: #45a049;
            transform: translateY(-3px);
        }

        .home-link:active {
            transform: translateY(3px);
        }

        /* Gradient animation */
        @keyframes gradientAnimation {
            0% {
                background-position: 0% 50%;
            }
            50% {
                background-position: 100% 50%;
            }
            100% {
                background-position: 0% 50%;
            }
        }

        /* Message slide-in animation */
        @keyframes slideIn {
            0% {
                opacity: 0;
                transform: translateY(50px);
            }
            100% {
                opacity: 1;
                transform: translateY(0);
            }
        }

        /* Message text fade-in animation */
        @keyframes fadeIn {
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

<div class="message-box">
    <h1>Message</h1>
    <div class="message-text">
        <%
            String msg = (String) request.getAttribute("msg");
            out.println(msg);
        %>
    </div>

    <a href="Home.html" class="home-link">Go to Home</a>
</div>

</body>
</html>
