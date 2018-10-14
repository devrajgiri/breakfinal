<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  

<html>

<head>
	<title>Custom Login Page</title>
	
	<style>
		.failed {
			color: red;
		}
	</style>
	
</head>

<body>

<h3>My Custom Login Page</h3>



<form:form action="saveUser" modelAttribute="user" method="POST">

					
			<table>
				<tbody>
					<tr>
						<td><label>Email:</label></td>
						<td><form:input path="email" /></td>
					</tr>
				

					<tr>
						<td><label>Password:</label></td>
						<td><form:input path="username" /></td>
					</tr>

					<tr>
						<td><label></label></td>
						<td><input type="submit" value="Save user" class="save" /></td>
					</tr>

				
				</tbody>
			</table>


</form:form>

</body>

</html>












