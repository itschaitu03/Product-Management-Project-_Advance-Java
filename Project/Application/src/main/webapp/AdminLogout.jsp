<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Admin Logout</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f7fc;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            overflow: hidden;
        }
        .message {
            background-color: #4CAF50;
            color: white;
            padding: 20px;
            border-radius: 5px;
            font-size: 18px;
            text-align: center;
            width: 80%;
            max-width: 400px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            opacity: 1;
            transition: opacity 2s ease-out;
        }
        .fade-out {
            opacity: 0;
        }
        .redirect-message {
            font-size: 16px;
            text-align: center;
            color: #333;
            margin-top: 20px;
            display: none;
            animation: fadeIn 3s forwards;
        }

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
    <script>
        function redirectToHome() {
            setTimeout(function() {
                window.location.href = "Home.html"; // Redirect to homepage after 2 seconds
            }, 2000);
        }

        function fadeMessage() {
            var msgElement = document.getElementById("logoutMessage");
            msgElement.classList.add("fade-out");
            document.getElementById("redirectMessage").style.display = "block"; // Show redirect message
            redirectToHome(); // Call redirect function after fade
        }
    </script>
</head>
<body onload="fadeMessage()">
    <div class="message" id="logoutMessage">
        <%
            String msg = (String) request.getAttribute("msg");
            session.invalidate();
            out.println(msg);
        %>
    </div>
    
    <div class="redirect-message" id="redirectMessage">
        You will be redirected to the homepage shortly...
    </div>

    <!-- Include the home page after effects -->
    <%@ include file="Home.html" %>
</body>
</html>
