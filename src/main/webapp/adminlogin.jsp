<%@page import="com.qsp.DTO.studentDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>

</head>
<body>

<div class="container">
    <h2>Login</h2>
    <form action="login" method="post">
        <input type="email" name="email" placeholder="Email" required>

        <input type="password" name="password" placeholder="Password" required>

        <button type="submit">Login</button>
    </form> 

    <div class="signup">
        <h3>Not a User?</h3>
        <a href="adminsignup.jsp">Sign Up</a>
    </div>
</div>

</body>
</html>
