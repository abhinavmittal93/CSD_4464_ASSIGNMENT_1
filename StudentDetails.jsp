<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Marks Details</title>
<style>
img {
	border-radius: 8px;
}

body {
	background-color: #005587;
	color: floralwhite;
}
</style>

</head>
<body>
	<!--div1-->
	<div data-role="header" align="center" id="final">
		<img src="img/lambton.png" width="300px" height="200px">
		<img src="img/marksheet.png" width="230px" height="200px">
		<br>
		<br>
	</div>
	<div data-role="content" style="border: 2px solid black; width: 480px; margin-left: 35%;text-align: center;">
		<form action="Results" method="post">
			<br>
			<label for="user-name">Student Name:</label>
			<input type="text" name="studentname" required>
			<h2>Enter your marks in 5 subjects</h2>
			Mobile Technology : <input type="number" name="m1" required>
			<br>
			<br> 
			Python Program : <input type="number" name="m2" required>
			<br>
			<br> 
			WebTec Program: <input type="number" name="m3" required>
			<br>
			<br> 
			Web Technology : <input type="number" name="m4" required>
			<br>
			<br> 
			Data Management: <input type="number" name="m5" required>
			<br>
			<br>
			<input type="submit" value ="Submit Details"/>
		</form>
		<br>
		<a href="<%=request.getContextPath() %>/logout" style="color: floralwhite !Important;">Logout</a>
	</div>
</body>
</html>