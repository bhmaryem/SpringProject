<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Détails de l'employé</title>
</head>
<body>
  <h1>Détails de l'employé</h1>
  <c:if test="${employee ne null}">
    <table>
      <tr>
        <td>ID :</td>
        <td>${employee.id}</td>
      </tr>
      <tr>
        <td>Nom :</td>
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
        <td>Téléphone :</td>
        <td>${employee.phone}</td>
      </tr>
    </table>
  </c:if>
  <c:if test="${employee eq null}">
    <p>L'employé avec l'ID ${param.id} n'existe pas.</p>
  </c:if>
</body>
</html>
