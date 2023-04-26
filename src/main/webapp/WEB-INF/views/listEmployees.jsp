<%@ page language="java" contentType="text/html; charset=windows-1256"
pageEncoding="windows-1256" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1256">
<title>Liste Employees</title>
</head><body><h1> All Employees</h1>
<table >
<tr><th>ID</th><th>Name</th><th>Email</th><th>JobTitle</th><th>phoneNumber</th></tr>
<c:forEach items="${employees}" var="e">
<tr>
<td>${e.id }</td>
<td>${e.name }</td>
<td>${e.email }</td>
<td>${e.jobTitle }</td>
<td>${e.phone }</td>
</tr>
</c:forEach>
</table></body></html>