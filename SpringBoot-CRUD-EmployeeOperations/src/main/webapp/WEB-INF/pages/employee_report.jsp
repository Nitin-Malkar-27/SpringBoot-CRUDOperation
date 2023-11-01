<%@ page isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:choose>
	<c:when test="${!empty empsData}">
		<table border="1" bgcolor="cyan" align="center">
			<tr>
				<th>Id</th>
				<th>FirstName</th>
				<th>LastName</th>
				<th>Email</th>
				<th>Age</th>
			</tr>
			<c:forEach var="emp" items="${empsData}">
				<tr>
					<td>${emp.getId()}</td>
					<td>${emp.getFirstName()}</td>
					<td>${emp.getLastName()}</td>
					<td>${emp.getEmail()}</td>
					<td>${emp.getAge()}</td>
					<td><a href="edit?no=${emp.getId()}"><img
							src="images/edit1.png" width="50" height="50" /></a>
						&nbsp;&nbsp;&nbsp; <a
						onclick="return confirm('Do you want to delete')"
						href="delete?no=${emp.getId()}"><img src="images/delete1.jpg"
							width="50" height="50"></a></td>
				</tr>
			</c:forEach>
		</table>
	</c:when>
	<c:otherwise>
		<h1 style="color: red; text-align: center">Records not found</h1>
	</c:otherwise>
</c:choose>

<c:if test="${!empty resultMsg}">
	<h3 style="color: green; text-align: center">${resultMsg }</h3>
</c:if>

<br>
<br>
<hr>
<h1 style="text-align: center">
	<a href="./"><img src="images/home1.png" width="50" height="50">Home</a>
</h1>
<hr>
<h1 style="text-align: center">
	<a href="add"><img src="images/add.png" width="50" height="50">
		Add Employee</a>
</h1>
