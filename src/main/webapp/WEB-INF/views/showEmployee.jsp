<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Détails de l'employé</title>
  <style>
    body {
      background-color: #f2f2f2;
      font-family: Arial, sans-serif;
    }
    h1 {
      color:#4CAF50;
    }
    table {
      border-collapse: collapse;
      width: 50%;
      margin: 20px 0;
    }
    th, td {
      padding: 8px;
      text-align: left;
      border-bottom: 1px solid #ddd;
    }
    tr:hover {
      background-color: #f5f5f5;
    }
  </style>
</head>
<body>
  <h1>Details de l'employé</h1>
  <form action="../find" method="get">
  <c:if test="${not empty employees}">
    <table>
      <tr>
        <td>ID :</td>
        <td>${employee.id}</td>
      </tr>
      <tr>
        <td>Name :</td>
        <td>${employee.name}</td>
      </tr>
      <tr>
        <td>Email :</td>
        <td>${employee.email}</td>
      </tr>
      <tr>
        <td>Job Title :</td>
        <td>${employee.jobTitle}</td>
      </tr>
      <tr>
        <td>Phone :</td>
        <td>${employee.phone}</td>
      </tr>
    </table>
  </c:if>
  </form>
</body>
</html>

