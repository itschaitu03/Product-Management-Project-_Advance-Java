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
    body {
        font-family: Arial, sans-serif;
        background-color: #f9f9f9;
        margin: 0;
        padding: 0;
        color: #333;
    }

    .container {
        width: 60%;
        margin: 0 auto;
        padding: 20px;
        background-color: #fff;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        border-radius: 8px;
        margin-top: 50px;
    }

    .welcome-message {
        background-color: #4CAF50;
        color: white;
        padding: 10px;
        text-align: center;
        border-radius: 5px;
        margin-bottom: 20px;
    }

    h3 {
        color: #333;
        font-size: 24px;
        text-align: center;
    }

    p {
        font-size: 18px;
        margin: 10px 0;
    }

    strong {
        color: #333;
    }

    .btn {
        display: block;
        width: 100%;
        padding: 15px;
        margin-top: 20px;
        background-color: #f44336;
        color: white;
        border: none;
        font-size: 18px;
        text-align: center;
        cursor: pointer;
        border-radius: 5px;
        transition: background-color 0.3s, transform 0.2s;
    }

    .btn:hover {
        background-color: #e53935;
        transform: scale(1.05);
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

</style>
</head>
<body>
    <div class="container">
        <%
        AdminBean ab = (AdminBean) session.getAttribute("abean");
        ProductBean pb = (ProductBean) request.getAttribute("pbean");
        out.println("<div class='welcome-message'>Welcome Admin: " + ab.getUserName() + "</div>");
        %>

        <form action="RemoveProduct" method="post">
            <input type="hidden" name="pcode" value="<%= pb.getProductID() %>"> 

            <h3>Delete Product: <%= pb.getProductName() %></h3>
            <p><strong>ID:</strong> <%= pb.getProductID() %></p>
            <p><strong>Price:</strong> $<%= pb.getProductPrice() %></p>
            <p><strong>Quantity:</strong> <%= pb.getProductQuantity() %></p>

            <input type="submit" class="btn" value="Remove Product">
        </form>

        <div class="back-btn">
            <a href="ViewAllProduct">Back to Product List</a>
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
