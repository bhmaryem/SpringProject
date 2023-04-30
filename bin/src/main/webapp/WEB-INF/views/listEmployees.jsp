<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Liste des employés</title>
</head>
<body>
    <h1>Liste des employés</h1>
   <form action="/find" method="get">
  <label for="searchId">Rechercher un employé par ID : </label>
  <input type="text" id="searchId" name="id">
  <button type="submit">Rechercher</button>
</form>

    <table>
        <tr>
            <th>ID</th>
            <th>Nom</th>
            <th>Email</th>
            <th>jobTitle</th>
            <th>phone</th>
            <th>Actions</th>
        </tr>
        <c:forEach var="employee" items="${employees}">
            <tr>
                <td>${employee.id}</td>
                <td>${employee.name}</td>
                <td>${employee.email}</td>
                <td>${employee.jobTitle}</td>
                <td>${employee.phone}</td>
                <td>
              
                    <a href="edit/${employee.id}">Editer</a>
                    <a href="delete/${employee.id}">Supprimer</a>
                </td>
            </tr>
        </c:forEach>
    </table>
    <br>
    <a href="register">Ajouter un employé</a>
</body>
</html>
