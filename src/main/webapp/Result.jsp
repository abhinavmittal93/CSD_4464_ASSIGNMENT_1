<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%
boolean isLoggedIn = session.getAttribute("isLoggedIn") != null ? (boolean) session.getAttribute("isLoggedIn") : false;
if (!isLoggedIn) {
	session.setAttribute("message", "<p style=\"color:red;\">Please login to continue!!!</p>");
	response.sendRedirect("Login.jsp");
}
%>
<html>
<head>
<link rel="stylesheet" href="style/styles.css">
<meta charset="ISO-8859-1">
<title>Result</title>
<style>
img {
	border-radius: 8px;
}
</style>
</head>
<body>
	<div data-role="header" align="center">
		<img src="img/lambton.png" width="200px" height="200px">
	</div>
	<div data-role="content" style="text-align: center;">
		<h4>Designed by:</h4>
		<p>
			* Navdeep Kaur * Samridhi <br> * Abhinav Mittal * Aarti <br>
			* Ahmed
		</p>
		<h2>*${studentName}: Your Marks detail *</h2>
		<label>Average score:</label> ${average}
		<br>
		<br>
		<label>Minimum Score:</label> ${minScore}
		<br>
		<br>
		<label>Maximum Score:</label> ${maxScore}
		<br>
		<br>
		<label>Grade:</label> ${grade}
		<br>
		<br>
		<label>Grade Point:</label> ${gradePoint}
		<br>
		<br>
		<a href="<%=request.getContextPath() %>/logout" style="color: floralwhite !Important;">Logout</a>
	</div>
</body>
</html>