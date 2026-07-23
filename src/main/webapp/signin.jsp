<%--
  Created by IntelliJ IDEA.
  User: Maleesha
  Date: 7/23/2026
  Time: 9:40 AM
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login | JTA Bank</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link href="https://fonts.googleapis.com/css2?family=Space+Grotesk:wght@500;600;700&family=Inter:wght@400;500;600&family=JetBrains+Mono:wght@500&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
<div class="card">
    <div class="bank-icon">
        <svg xmlns="http://www.w3.org/2000/svg" width="26" height="26" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.8" stroke-linecap="round" stroke-linejoin="round">
            <line x1="3" y1="21" x2="21" y2="21"></line>
            <line x1="5" y1="21" x2="5" y2="10"></line>
            <line x1="9" y1="21" x2="9" y2="10"></line>
            <line x1="15" y1="21" x2="15" y2="10"></line>
            <line x1="19" y1="21" x2="19" y2="10"></line>
            <polygon points="12 3 21 9 3 9"></polygon>
        </svg>
    </div>
    <span class="badge">[ SIGN IN ]</span>
    <h1>Welcome Back</h1>
    <p>Sign in to access your accounts, transfers, and statements.</p>

    <% if (request.getAttribute("error") != null) { %>
    <div class="form-error">
        <span class="dot"></span>
        <p><%= request.getAttribute("error") %>
        </p>
    </div>
    <% } %>

    <form action="login" method="post" class="form">
        <div class="field">
            <label for="email">Email</label>
            <input type="email" id="email" name="email" placeholder="you@example.com" required>
        </div>
        <div class="field">
            <label for="password">Password</label>
            <input type="password" id="password" name="password" placeholder="••••••••" required>
        </div>
        <button type="submit" class="btn btn-block">Sign In</button>
    </form>

    <p class="switch-text">Don't have an account? <a href="signup.jsp">Register</a></p>
</div>
</body>
</html>