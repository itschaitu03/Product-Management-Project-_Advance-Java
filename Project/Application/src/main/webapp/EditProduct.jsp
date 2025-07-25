<%@page import="com.chaitu.bean.ProductBean"%>
<%@page import="com.chaitu.bean.AdminBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Edit Product</title>
    <style>
        /* Global styles */
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #6e7cfd, #4caf50);
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            color: white;
        }

        .container {
            width: 100%;
            max-width: 600px;
            background-color: rgba(255, 255, 255, 0.9); /* Semi-transparent white */
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 6px 20px rgba(0, 0, 0, 0.15);
            text-align: center;
            opacity: 0;
            animation: fadeIn 1.5s forwards;
        }

        h1 {
            font-size: 24px;
            color: #333;
            margin-bottom: 20px;
        }

        .welcome-message {
            font-size: 18px;
            color: #4caf50;
            margin-bottom: 30px;
            font-weight: bold;
            opacity: 0;
            animation: fadeInMessage 2s forwards 1.5s;
        }

        form {
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        input[type="text"] {
            background-color: #f1f1f1;
            border: 1px solid #ccc;
            padding: 10px 15px;
            font-size: 16px;
            border-radius: 5px;
            margin: 10px 0;
            width: 80%;
            box-sizing: border-box;
            transition: border-color 0.3s ease, transform 0.3s ease;
        }

        input[type="text"]:focus {
            border-color: #4caf50;
            transform: translateY(-2px);
        }

        input[type="submit"] {
            background-color: #4caf50;
            border: none;
            color: white;
            padding: 12px 20px;
            font-size: 16px;
            cursor: pointer;
            border-radius: 5px;
            transition: background-color 0.3s ease, transform 0.3s ease, box-shadow 0.3s ease;
            width: 200px;
            margin: 20px 0;
        }

        input[type="submit"]:hover {
            background-color: #45a049;
            transform: translateY(-3px);
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.2);
        }

        input[type="submit"]:active {
            transform: translateY(3px);
            box-shadow: 0 3px 6px rgba(0, 0, 0, 0.3);
        }

        /* Animations */
        @keyframes fadeIn {
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
    <h1>Edit Product</h1>
    <%
        AdminBean ab = (AdminBean)session.getAttribute("abean");
        ProductBean pb = (ProductBean)request.getAttribute("pbean");
        out.println("<div class='welcome-message'>Welcome Admin: " + ab.getUserName() + "</div>");
    %>

    <form action="Update" method="post">
        <input type="hidden" name="pcode" value="<%= pb.getProductID() %>"> 
        <label style="color: black; font-weight: bold;">Product Price : </label><input type="text" name="pprice" value="<%= pb.getProductPrice() %>"><br> 
        <label style="color: black; font-weight: bold;">Product Quantity : </label><input type="text" name="pqty" value="<%= pb.getProductQuantity() %>"><br> 
        <input type="submit" value="Update Product">
    </form>
</div>

</body>
</html>
