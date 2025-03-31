<%@page import="com.qsp.DTO.studentDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Student</title>

</head>
<body>

<% studentDTO a = (studentDTO) request.getAttribute("student"); %>

<div class="container">
    <h2>Edit Student</h2>
    <form action="update" method="get">
        <table>
            <tr>
                <td><label>ID:</label></td>
                <td><input type="number" name="id" value="<%=a.getId()%>" readonly></td>
            </tr>
            <tr>
                <td><label>Name:</label></td>
                <td><input type="text" name="name" value="<%=a.getName()%>"></td>
            </tr> 
            <tr>
                <td><label>Physics:</label></td>
                <td><input type="number" name="physics" value="<%=a.getPhysics()%>"></td>
            </tr>
            <tr>
                <td><label>Chemistry:</label></td>
                <td><input type="number" name="chemistry" value="<%=a.getChemistry()%>"></td>
            </tr>       
            <tr>
                <td><label>Maths:</label></td>
                <td><input type="number" name="maths" value="<%=a.getMaths()%>"></td>
            </tr>
        </table>
        <button type="submit">Update</button>
    </form>
</div>

</body>
</html>
