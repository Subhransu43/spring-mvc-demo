<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
	<head>
		<title>Student From</title>
	</head>
	<body>
		<form:form action="processForm" modelAttribute="student">
			First Name : <form:input path="firstName"/>
			<br><br>
			Last Name : <form:input path="lastName"/>
			<br><br>
			<form:select path="country">
				<form:options items="${student.countryOptions}"/>
			</form:select>
			<br><br>
			Which OS do you like?
			<br>
			Windows<form:checkbox path="preferredOS" value="Windows"/>
			Linux<form:checkbox path="preferredOS" value="Linux"/>
			Mac<form:checkbox path="preferredOS" value="Mac"/>
			<br><br>	
			<input type="submit" value="Submit" />
		</form:form>
	</body>
</html>