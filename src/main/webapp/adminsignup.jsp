<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    div{
       border: 1px solid black;
       width:370px;
       height:240px; 
    }
</style>
</head>
<body>
<div>
    <form action="">
    <table>
         <tr>
              <td> <label>id:</label></td>
              <td> <input type="number" name="id"></td>
         </tr>
         
         <tr>
              <td> <label>name:</label></td>
               <td><input type="text" name="name"></td>
         </tr>
         
         <tr>
              <td> <label>contact:</label></td>
              <td> <input type="number" name="contact"></td>
         </tr>
         
         <tr>
               <td> <label>Email:</label></td>
                <td><input type="email" name="email"></td>
         </tr>       
         
         <tr>
              <td> <label>password:</label></td>
               <td><input type="password" name="password"></td>
         </tr>
         
         <tr>
               <td><label>Re enter password:</label></td>
               <td><input type="number" name="repass"></td>
         </tr>
      </table>
         
         <button>signup</button>
    
    </form>

</div>

</body>
</html>