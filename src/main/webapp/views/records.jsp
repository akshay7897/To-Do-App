<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<center>
	<body>

		<h3>
			<i><b><u>Your Tasks</u></b></b></i>
		</h3>
		<table border="">
			<thead>
				<tr>
					<th>No</th>
					<th>Task Name</th>
					<th>Date</th>
					<th>Time</th>
				</tr>
			</thead>

			<tbody>
				<form:forEach items="${tasks}" var="tasks" varStatus="index">
					<tr>
						<td>${index.count}</td>
						<td>${tasks.taskName}</td>
						<td>${tasks.date}</td>
						<td>${tasks.time}</td>
					</tr>
				</form:forEach>
			</tbody>

		</table>

		<a href="/">
			<button>LogOut</button>
		</a>

	</body>
</center>
</html>