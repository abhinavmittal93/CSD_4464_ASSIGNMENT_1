<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
</head>
<style>
	body {
		background-color: #005587;
		color: white;
	}
</style>
<body>
	<div data-role="header" align="center">
		<img src="img/lambton.png" width="300px" height="200px">
	</div>
	<div data-role="content" align="center" style="margin-top: 4%;">
		<form action="login" method="POST">
			<%if(session.getAttribute("message") != null && !session.getAttribute("message").equals("")) {
			    out.println(session.getAttribute("message"));
			    session.removeAttribute("message");
				}
			%>
			<label>Username</label><br>
			<input type="text" name="username" required />
			<br><br>
			<label>Password</label><br>
			<input type="password" name="password" required />
			<br><br>
			<input type="submit" value="Login" />
		</form>
	</div>
	
</body>
</html>