<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update of Data </title>
    <style>
        body {
            background-color: #f2f2f2;
            font-family: Arial, sans-serif;
            font-size: 16px;
        }

        h1 {
            color: #333;
            text-align: center;
        }

        form {
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
            margin: 20px auto;
            max-width: 500px;
            padding: 20px;
        }

        label {
            display: block;
            font-weight: bold;
            margin-top: 20px;
        }

        input[type="text"], input[type="email"] {
            border-radius: 3px;
            border: 1px solid #ccc;
            box-sizing: border-box;
            font-size: 16px;
            margin-bottom: 20px;
            padding: 10px;
            width: 100%;
        }

        button[type="submit"] {
            background-color: #4CAF50;
            border: none;
            border-radius: 3px;
            color: white;
            cursor: pointer;
            font-size: 16px;
            padding: 10px;
            width: 100%;
        }

        button[type="submit"]:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
<h1>Update details of the Employee </h1>
<form action="../update" method="post">
    <input type="hidden" name="id" value="${employee.id}">
    <label for="name">Name :</label>
    <input type="text" id="name" name="name" value="${employee.name}">
    <br>
    <label for="email">Email :</label>
    <input type="email" id="email" name="email" value="${employee.email}">
    <br>
    <label for="jobTitle">Job Title :</label>
    <input type="text" id="jobTitle" name="jobTitle" value="${employee.jobTitle}">
    <br>
    <label for="phone">Phone :</label>
    <input type="text" id="phone" name="phone" value="${employee.phone}">
    <br>
    <button type="submit">Save</button>
</form>
</body>
</html>
