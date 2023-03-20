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

		<h2>
			<i><b><u>Create task</u></b></b></i>
		</h2>

		<font color="green">${msg} </font>

		<form action="savetask" method="post">
			<table>

				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<a href="/tasks">view tasks</a>

				<tr></tr>
				<tr>
					<td>Task Name :</td>
					<td><input type="text" name="taskName" /></td>
				</tr>

				<tr>
					<td>Date :</td>
					<td><input type="date" name="date" /></td>
				</tr>

				<tr>
					<td>Time :</td>
					<td><input type="time" name="time" /></td>
				</tr>
				<tr>
					<td><input type="hidden" name="userRegistration"
						value="${user.id}" /></td>
				</tr>

				<tr>
					<td></td>
					<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" value="Create" /></a></td>
						
				</tr>
			</table>

			




		</form>
</body>
</center>
</html>