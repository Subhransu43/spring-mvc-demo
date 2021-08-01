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
				<form:option value="Brazil" lable="Brazil"/>
				<form:option value="Germany" lable="Germany"/>
				<form:option value="India" lable="India"/>
				<form:option value="UK" lable="UK"/>
			</form:select>
			<br><br>
			<input type="submit" value="Submit" />
		</form:form>
	</body>
</html>