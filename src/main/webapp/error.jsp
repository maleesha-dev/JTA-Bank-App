<%--
  Created by IntelliJ IDEA.
  User: Maleesha
  Date: 7/22/2026
  Time: 3:42 PM
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Error | JTA Bank</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link href="https://fonts.googleapis.com/css2?family=Space+Grotesk:wght@500;600;700&family=Inter:wght@400;500;600&family=JetBrains+Mono:wght@500&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
<div class="card error-card">
    <div class="error-icon">!</div>
    <span class="badge">[ ERROR ]</span>
    <h1>Something Went Wrong</h1>
    <p>We ran into a problem processing your request. Please try again, or return to the home page.</p>
    <button class="btn" onclick="window.location.href='index.jsp'">Go To Home Page</button>
</div>
</body>
</html>