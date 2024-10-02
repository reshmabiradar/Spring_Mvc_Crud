
<%@page isELIgnored="false"%>
<%@page import="java.util.Arrays" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="x"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Fetch</title>
</head>
<body>
	<div align="center">
	<h1 style="color:green">${success}</h1>
		<table border="1">
			<tr>
				<th>Name</th>
				<th>Mobile</th>
				<th>Gender</th>
				<th>Skills</th>
				<th>Edit</th>
				<th>Delete</th>
			</tr>

			<x:forEach var="s" items="${students}">
				<tr>
					<td>${s.name}</td>
					<td>${s.mobile}</td>
					<td>${s.gender}</td>
					<td>${Arrays.toString(s.skills)}</td>
					<td><a href="edit?id=${s.id}"><button>Edit</button></a></td>
					<td><a href="delete?id=${s.id}"><button>Delete</button></a></td>
				</tr>
			</x:forEach>

		</table>

	</div>
</body>
</html>
