<%@ page import="lk.novasphere.ee.bank.entity.Account" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: Maleesha
  Date: 7/23/2026
  Time: 1:07 PM
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>JTA Bank | Dashboard</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link href="https://fonts.googleapis.com/css2?family=Space+Grotesk:wght@500;600;700&family=Inter:wght@400;500;600&family=JetBrains+Mono:wght@500&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="css/style.css">
</head>
<body class="dashboard-body">

<nav class="navbar">
    <span class="nav-brand">[ JTA BANK ]</span>
    <div class="nav-links">
        <a href="dashboard">Dashboard</a>
        <a href="deposit">Deposit</a>
        <a href="withdraw">Withdraw</a>
        <a href="transfer">Transfer</a>
        <a href="create-account">New Account</a>
        <a href="logout" class="logout">Logout</a>
    </div>
</nav>

<div class="dashboard">
    <div class="dashboard-header">
        <span class="badge">[ DASHBOARD ]</span>
        <h1>Welcome, ${sessionScope.userName}</h1>
    </div>

    <h2>Your Accounts</h2>

    <%
        List<Account> accounts = (List<Account>) request.getAttribute("accounts");

        if (accounts == null || accounts.isEmpty()) {
    %>
    <div class="empty-state">
        <p>You don't have any accounts yet. <a href="signup.jsp">Create New Account</a></p>
    </div>
    <%
    } else {
    %>
    <div class="accounts-grid">
        <%
            for (Account account : accounts) {
        %>
        <div class="account-card">
            <span class="account-no"><%= account.getAccNo() %></span>
            <div class="account-type"><%= account.getAccountType() %></div>
            <div class="account-balance">LKR <%= account.getBalance() %></div>
            <a href="history?accNo=<%= account.getAccNo() %>">View Transaction History →</a>
        </div>
        <%
            }
        %>
    </div>
    <%
        }
    %>
</div>

</body>
</html>