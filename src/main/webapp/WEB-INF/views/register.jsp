<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="ISO-8859-1" />
    <title>Insert title here</title>
  </head>
  <body>
    <h1>ADD NEW EMPLOYE</h1>
    <p style="color:red">${msg}</p>
    <form action="add" method="post">
      Name : <input type="text" name="name" /><br />
      Email : <input type="email" name="email" /><br />
      JobTitle : <input type="text" name="jobTitle" /><br />
      phone : <input type="string" name="phone" /><br />
      <input type="submit" value="save" />
    </form>

  <button><a href="http://localhost:8080/employee/all">show all employees</a></button> 
    
  </body>
</html>
