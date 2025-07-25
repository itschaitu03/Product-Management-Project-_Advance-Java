<%@page import="com.chaitu.bean.AdminBean"%>
<%@page import="com.chaitu.bean.ProductBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Delete Product</title>
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

        h3 {
            font-size: 26px;
            margin: 20px 0;
            color: #333;
        }

        p {
            font-size: 18px;
            margin: 10px 0;
            color: black; /* Ensures text inside <p> tags is black */
        }

        strong {
            color: #333;
        }

        .btn {
            background-color: #f44336;
            border: none;
            color: white;
            padding: 15px 25px;
            font-size: 18px;
            cursor: pointer;
            border-radius: 5px;
            transition: background-color 0.3s ease, transform 0.3s ease, box-shadow 0.3s ease;
            width: 100%;
            margin-top: 20px;
        }

        .btn:hover {
            background-color: #e53935;
            transform: translateY(-3px);
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.2);
        }

        .btn:active {
            transform: translateY(3px);
            box-shadow: 0 3px 6px rgba(0, 0, 0, 0.3);
        }

        /* Styling the back button to look like the remove button */
        .back-btn input[type="submit"] {
            background-color: #4caf50; /* Green color like Remove button */
            border: none;
            color: white;
            padding: 15px 25px;
            font-size: 18px;
            cursor: pointer;
            border-radius: 5px;
            transition: background-color 0.3s ease, transform 0.3s ease, box-shadow 0.3s ease;
            width: 100%;
            margin-top: 20px;
        }

        .back-btn input[type="submit"]:hover {
            background-color: #388E3C; /* Slightly darker green for hover */
            transform: translateY(-3px);
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.2);
        }

        .back-btn input[type="submit"]:active {
            transform: translateY(3px);
            box-shadow: 0 3px 6px rgba(0, 0, 0, 0.3);
        }

        .back-btn {
            text-align: center;
            margin-top: 20px;
        }

        .back-btn a {
            text-decoration: none;
            color: #4CAF50;
            font-size: 18px;
            font-weight: bold;
            transition: color 0.3s;
        }

        .back-btn a:hover {
            color: #388E3C;
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
        a { text-decoration: none;}
    </style>
</head>
<body>

<div class="container">
    <h1>Delete Product</h1>
    <%
    AdminBean ab = (AdminBean) session.getAttribute("abean");
    ProductBean pb = (ProductBean) request.getAttribute("pbean");
    out.println("<div class='welcome-message'>Welcome Admin: " + ab.getUserName() + "</div>");
    %>

    <form action="Remove" method="post">
        <input type="hidden" name="pcode" value="<%= pb.getProductID() %>"> 

        <h3><%= pb.getProductName() %></h3>
        <p><strong>ID:</strong> <%= pb.getProductID() %></p>
        <p><strong>Price:</strong> $<%= pb.getProductPrice() %></p>
        <p><strong>Quantity:</strong> <%= pb.getProductQuantity() %></p>

        <input type="submit" class="btn" value="Remove Product">
    </form>

    <div class="back-btn">
        <a href="ViewAllProduct"><input type="submit" value="Back"></a>
    </div>
</div>

<script>
    // Optional JavaScript confirmation for removing product
    const removeBtn = document.querySelector('.btn');
    removeBtn.addEventListener('click', function(event) {
        if (!confirm('Are you sure you want to remove this product?')) {
            event.preventDefault(); // Prevent form submission if the user cancels
        }
    });
</script>

</body>
</html>
