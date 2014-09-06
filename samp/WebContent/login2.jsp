<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Page 2</title>
</head>
<body bgcolor="LightGrey">

<center>
<h1>OPERATOR LOGIN</h1>
<form action="co 1 .jsp" method="post">
UserId:<input type="text" name="username" id="username" /><br><br>
Password:<input type="password" name="password" id="password" /><br><br>
<input type="submit" value="Login"/>
<input type="reset" value="Reset"/>
<input type="button" value="Admin logout" onclick="location.href='login.jsp'"><br>
</form></center>
</body>
</html>