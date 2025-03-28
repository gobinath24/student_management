<%@page import="com.qsp.DTO.studentDTO"%>
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
    <form action="adminsignup" method="get">
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
              <td> <label for="pass">password:</label></td>
               <td><input type="password" name="password" id="pass"></td>
         </tr>
         
         <tr>
               <td><label for="repass">Re enter password:</label></td>
               <td><input type="password" name="repass" id="repass" onmouseout="change()"></td>
         </tr>
      </table>
         
         <button>signup</button>
    
    </form>

</div>
<script type="text/javascript">
    
    
    function change(){
    	var pass=document.getElementById("pass").value;
        var repass=document.getElementById("repass").value;
         if(pass!=repass){
        	  var repass=document.getElementById("repass")
               alert("pass and repass different");
               repass.style.border="2px solid red";
         }
         else{
       	    ss var repass=document.getElementById("repass")
        	 repass.style.border="2px solid green";
         }
          
    
    }
    

</script>
   

</body>
</html>