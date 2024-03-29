<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript">
	function validation(){
		var username=document.getElementById('na').value;
		if(username.length<2){
			alert("Name should have a mimimum length of 2 characters");
			return false;
		}else{
			return true;
		}
	}
</script>
</head>
<body>
	<div align="center"></div>
	<form:form action="processing" method="GET" modelAttribute="Submission" onsubmit="return validation();">
		<label for="na">Name:</label>
		<form:input id="na" path="name" />
		<br />
		<label for="em">Email:</label>
		<form:input id="em" path="email" />
		<br />
		<input type="submit" value="register!" />
	</form:form>
</body>
</html>