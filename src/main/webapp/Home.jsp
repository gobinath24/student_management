<%@page import="com.qsp.DAO.studentDAO"%>
<%@page import="com.qsp.DTO.studentDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Details</title>

</head>
<body>

<h1>Student Details</h1>

<table>
    <thead>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Physics</th>
            <th>Chemistry</th>
            <th>Maths</th>
            <th>Edit</th>
            <th>Delete</th>
        </tr>
    </thead>
    <tbody>
        <% ArrayList<studentDTO> students = studentDAO.findallstudent(); %>
        <% if (students != null) { %>
            <% for (studentDTO student : students) { %>
                <tr>
                    <td><%= student.getId() %></td>
                    <td><%= student.getName() %></td>
                    <td><%= student.getPhysics() %></td>
                    <td><%= student.getChemistry() %></td>
                    <td><%= student.getMaths() %></td>
                    <td><a href="edit?id=<%= student.getId() %>" class="btn edit-btn">Edit</a></td>
                    <td><a href="delete?id=<%= student.getId() %>" class="btn delete-btn">Delete</a></td>
                </tr>
            <% } %>
        <% } %>
    </tbody>
</table>

<div class="action-links">
    <a href="addstudent.jsp" id="as">Add Student</a>
    <a href="index.html" id="lo">Logout</a>
</div>

</body>
</html>
