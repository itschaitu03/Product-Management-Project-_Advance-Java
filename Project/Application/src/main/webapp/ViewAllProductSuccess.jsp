<%@page import="java.util.Iterator"%>
<%@page import="com.chaitu.bean.AdminBean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.chaitu.bean.ProductBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>View All Products</title>
    <style>
        /* Body Styling */
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f4f7fc;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center; /* Centers content vertically */
            height: 100vh;
            color: #333;
            flex-direction: column; /* Align content vertically */
            text-align: center; /* Center the text within the page */
        }

        /* Header Styling */
        h1 {
            font-size: 28px;
            color: #4CAF50;
            margin: 20px;
            text-align: center;
            font-weight: bold;
            text-transform: uppercase;
        }

        /* Container for Products */
        .product-container {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(250px, 1fr));
            gap: 20px;
            padding: 20px;
            width: 100%;
            max-width: 1200px;
            margin: 0 auto;
        }

        /* Product Card Styling */
        .product-card {
            background-color: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
            text-align: center;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .product-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 8px 25px rgba(0, 0, 0, 0.1);
        }

        .product-card h3 {
            font-size: 20px;
            color: #333;
            margin-bottom: 10px;
        }

        .product-card p {
            color: #555;
            margin-bottom: 15px;
        }

        /* Button Styling */
        .btn {
            background-color: #4CAF50;
            border: none;
            color: white;
            padding: 12px 25px;
            text-align: center;
            text-decoration: none;
            font-size: 16px;
            cursor: pointer;
            border-radius: 5px;
            transition: background-color 0.3s ease, transform 0.3s ease;
            margin: 5px;
        }

        .btn:hover {
            background-color: #45a049;
            transform: translateY(-2px);
        }

        .btn:active {
            transform: translateY(2px);
        }

        .logout-btn {
            background-color: #f44336;
        }

        .logout-btn:hover {
            background-color: #e53935;
        }

        /* Centering the page's main content */
        .center-content {
            margin-top: 30px;
            width: 100%;
            text-align: center;
        }
        a {
    text-decoration: none;
}
        
    </style>
</head>
<body>

<h1>View All Products</h1>

<%
    AdminBean ab = (AdminBean) session.getAttribute("abean");
    @SuppressWarnings("unchecked")
    ArrayList<ProductBean> al = (ArrayList<ProductBean>) session.getAttribute("alist");
    out.println("Page belongs to Admin : " + ab.getUserName() + "<br>");

    if (al.size() == 0) {
        out.println("<div class='center-content'>No Products Available...</div><br>");
    } else {
%>

<div class="product-container">
    <%
        Iterator<ProductBean> it = al.iterator();
        while (it.hasNext()) {
            ProductBean pb = it.next();
    %>
    <div class="product-card">
        <h3><%= pb.getProductName() %></h3>
        <p><strong>ID:</strong> <%= pb.getProductID() %></p>
        <p><strong>Price:</strong> $<%= pb.getProductPrice() %></p>
        <p><strong>Quantity:</strong> <%= pb.getProductQuantity() %></p>
        <a href="Edit?pcode=<%= pb.getProductID() %>">
            <button class="btn">Edit</button>
        </a>
        <a href="Delete?pcode=<%= pb.getProductID() %>">
            <button class="btn">Delete</button>
        </a>
    </div>
    <%
        }
    %>
</div>

<%
    }
%>

<div class="center-content">
    <a href="AddProduct.html">
        <button class="btn">Add Product</button>
    </a>
    <a href="Logout">
        <button class="btn logout-btn">Logout</button>
    </a>
</div>

</body>
</html>
