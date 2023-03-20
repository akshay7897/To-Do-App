<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<center>
<h2><i><b><u>Login</u></b></b></i></h2>
<form action="task" method="post">
<font color="red">${msg}</font>
<table border="1">

<tr>
<td><input type="email" name="email" placeholder="Enter UserName" >
</tr>

<tr>
<td><input type="password" name="password" placeholder="Enter Password" >
</tr>


<tr>
<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" value="submit">
</tr>

</table>
<a href="register" >Register User</a>

</form>
</center>

</body>
</html>