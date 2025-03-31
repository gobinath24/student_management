<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Student</title>

</head>
<body>

<div class="container">
    <h2>Add Student</h2>
    <form action="addstd" method="get">
        <table>
            <tr>
                <td><label>ID:</label></td>
                <td><input type="number" name="id" placeholder="Enter ID"></td>
            </tr>
            <tr>
                <td><label>Name:</label></td>
                <td><input type="text" name="name" placeholder="Enter Name"></td>
            </tr>
            <tr>
                <td><label>Physics:</label></td>
                <td><input type="number" name="physics" placeholder="Enter Physics Marks"></td>
            </tr>
            <tr>
                <td><label>Chemistry:</label></td>
                <td><input type="number" name="chemistry" placeholder="Enter Chemistry Marks"></td>
            </tr>
            <tr>
                <td><label>Maths:</label></td>
                <td><input type="number" name="maths" placeholder="Enter Maths Marks"></td>
            </tr>
        </table>
        <button type="submit">Add</button>
    </form>
</div>

</body>
</html>
