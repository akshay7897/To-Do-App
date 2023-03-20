<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<center>
	<body>
	
		<h2>
			<i><b><u>User Register</u></b></b></i>
		</h2>
		
		<font color="green">${msg} </font>
		<form action="saveuser" method="post">
			<table>

					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="/" >Login Page</a>
				<tr></tr>
				<tr>
					<td>Name :</td>
					<td><input type="text" name="name"/></td>
				</tr>

				<tr>
					<td>Email :</td>
					<td><input type="email" name="email"/></td>
				</tr>

				<tr>
					<td>Password :</td>
					<td><input type="password" name="password"/></td>
				</tr>

				<tr>
					<td>Gender :</td>
					<td>
					<input type="radio" name="gender" value="Male" />Male 
					<input type="radio" name="gender" value="Fe-Male" />Fe-Male
					</td>
				</tr>
				
				<tr>
					<td>Phno :</td>
					<td><input type="number" name="phno"/></td>
				</tr>

				<tr>
				<td></td>
					<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" value="submit"/></td>
				</tr>
				
				

			</table>
			
			<br>
				
				


		</form>

	</body>
</center>
</html>