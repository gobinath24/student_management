<%@page import="com.qsp.DTO.studentDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div>
   <form action="login" method="get">
       <label>Email:</label>
       <input type="email" name="email"><br>
       
       <label>password:</label>
       <input type="password" name="password"><br>
       
       <button>submit</button><br>
       
       
       <h3>Not a User....?</h3><br>
       
       <a href="adminsignup.jsp">signup</a>
   
   </form> 
</div>


</body>
</html>