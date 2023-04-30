<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="ISO-8859-1" />
    <title>Add a new Employee </title>
    <style>
      body {
        font-family: Arial, sans-serif;
        background-color: #f5f5f5;
      }
      
      h1 {
        color: #333333;
        text-align: center;
      }
      
      form {
        background-color: #ffffff;
        padding: 20px;
        margin: auto;
        width: 50%;
        border-radius: 10px;
        box-shadow: 0px 0px 10px 0px rgba(0,0,0,0.25);
      }
      
      form input[type="text"],
      form input[type="email"],
      form input[type="tel"] {
        display: block;
        width: 100%;
        padding: 10px;
        margin-bottom: 20px;
        border: 1px solid #cccccc;
        border-radius: 5px;
        font-size: 16px;
        font-family: Arial, sans-serif;
      }
      
      form input[type="submit"] {
        display: block;
        width: 100%;
        padding: 10px;
        background-color: #4caf50;
        color: #ffffff;
        border: none;
        border-radius: 5px;
        font-size: 16px;
        font-family: Arial, sans-serif;
        cursor: pointer;
      }
      
      form input[type="submit"]:hover {
        background-color: #3e8e41;
      }
      
      .error {
        color: #ff0000;
        text-align: center;
        margin-bottom: 20px;
      }
      
      button {
        display: block;
        margin: auto;
        margin-top: 20px;
        padding: 10px 20px;
        background-color: #cccccc;
        color: #333333;
        border: none;
        border-radius: 5px;
        font-size: 16px;
        font-family: Arial, sans-serif;
        cursor: pointer;
      }
      
      button:hover {
        background-color: #dddddd;
      }
    </style>
  </head>
  <body>
    <h1>ADD NEW EMPLOYEE</h1>
    <div class="error">${msg}</div>
    <form action="add" method="post">
      <label for="name">Name:</label>
      <input type="text" id="name" name="name" />
      <label for="email">Email:</label>
      <input type="email" id="email" name="email" />
      <label for="jobTitle">Job Title:</label>
      <input type="text" id="jobTitle" name="jobTitle" />
      <label for="phone">Phone:</label>
      <input type="tel" id="phone" name="phone" />
      <input type="submit" value="Save" />
    </form>
    <button><a href="http://localhost:8082/employee/all">Show All Employees</a></button> 
  </body>
</html>

