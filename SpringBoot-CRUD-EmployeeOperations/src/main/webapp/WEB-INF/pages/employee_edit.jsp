<%@ page isELIgnored="false"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<h1 style="color: red; text-align: center">Employee Employee</h1>
<form:form modelAttribute="emp">
	<table border="1" bgcolor="cyan" align="center">
		<tr>
			<td>Id ::</td>
			<td><form:input path="Id" readonly="true" /></td>
		</tr>

		<tr>
			<td>First Name ::</td>
			<td><form:input path="FirstName" /></td>
		</tr>


		<tr>
			<td>Last Name ::</td>
			<td><form:input path="LastName" /></td>
		</tr>

		<tr>
			<td>Email ::</td>
			<td><form:input path="Email" /></td>
		</tr>
		<tr>
			<td>Age ::</td>
			<td><form:input path="Age" readonly="true" /></td>
		</tr>

		<tr>
			<td colspan="2" align="center"><input type="submit"
				value="Edit Employee" /></td>
		</tr>
	</table>
</form:form>

