<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<title>Student Confirmation</title>
	</head>
	<body>
		The Student is confirmed : ${student.firstName} ${student.lastName}
		<br><br>
		Country : ${student.country}
		<br><br>
		OS: 
		<ul>
			<c:forEach var="temp" items="${student.preferredOS}">
				<li>${temp}</li>
			</c:forEach>
		
		</ul> 
	</body>
</html>