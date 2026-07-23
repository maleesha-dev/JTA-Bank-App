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
    <title>Register | JTA Bank</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link href="https://fonts.googleapis.com/css2?family=Space+Grotesk:wght@500;600;700&family=Inter:wght@400;500;600&family=JetBrains+Mono:wght@500&display=swap"
          rel="stylesheet">
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
<div class="card">
    <div class="bank-icon">
        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none"
             stroke="currentColor" stroke-width="1.8" stroke-linecap="round" stroke-linejoin="round">
            <path d="M16 21v-2a4 4 0 0 0-4-4H6a4 4 0 0 0-4 4v2"></path>
            <circle cx="9" cy="7" r="4"></circle>
            <line x1="19" y1="8" x2="19" y2="14"></line>
            <line x1="16" y1="11" x2="22" y2="11"></line>
        </svg>
    </div>
    <span class="badge">[ CREATE ACCOUNT ]</span>
    <h1>Join JTA Bank</h1>
    <p>Set up your account to start managing your finances securely.</p>

    <% if (request.getAttribute("error") != null) { %>
    <div class="form-error">
        <span class="dot"></span>
        <p><%= request.getAttribute("error") %>
        </p>
    </div>
    <% } %>

    <form action="register" method="post" class="form">
        <div class="field">
            <label for="name">Full Name</label>
            <input type="text" id="name" name="name" placeholder="John Doe" required>
        </div>
        <div class="field">
            <label for="email">Email</label>
            <input type="email" id="email" name="email" placeholder="you@example.com" required>
        </div>
        <div class="field">
            <label for="password">Password</label>
            <input type="password" id="password" name="password" placeholder="••••••••" required>
        </div>
        <button type="submit" class="btn btn-block">Register</button>
    </form>

    <p class="switch-text">Already have an account? <a href="signin.jsp">Sign In</a></p>
</div>
</body>
</html>