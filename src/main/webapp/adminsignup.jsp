<%@page import="com.qsp.DTO.studentDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Signup</title>

</head>
<body>

<div class="container">
    <h2>Admin Signup</h2>
    <form action="adminsignup" method="get">
        <table>
            <tr>
                <td><label>ID:</label></td>
                <td><div class="input-box"><input type="number" name="id" required><label>ID</label></div></td>
            </tr>
            <tr>
                <td><label>Name:</label></td>
                <td><div class="input-box"><input type="text" name="name" required><label>Name</label></div></td>
            </tr>
            <tr>
                <td><label>Contact:</label></td>
                <td><div class="input-box"><input type="number" name="contact" required><label>Contact</label></div></td>
            </tr>
            <tr>
                <td><label>Email:</label></td>
                <td><div class="input-box"><input type="email" name="email" required><label>Email</label></div></td>
            </tr>
            <tr>
                <td><label>Password:</label></td>
                <td><div class="input-box"><input type="password" name="password" id="pass" required><label>Password</label></div></td>
            </tr>
            <tr>
                <td><label>Re-enter Password:</label></td>
                <td><div class="input-box"><input type="password" name="repass" id="repass" required onkeyup="validatePassword()"><label>Re-enter Password</label></div></td>
            </tr>
        </table>
        <button>Signup</button>
    </form>
</div>

<script>
    function validatePassword() {
        var pass = document.getElementById("pass").value;
        var repass = document.getElementById("repass");
        
        if (pass !== repass.value) {
            repass.classList.add("error");
            repass.style.border="3px solid red";
        } else {
            repass.classList.remove("error");
            repass.style.border="3px solid green";
        }
    }
</script>

</body>
</html>
