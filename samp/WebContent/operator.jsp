<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>OPERATOR</title>
</head>
<body bgcolor="LightGrey">

<center> NEW OPERATOR</center>
<center>
<form action="operco.jsp" method="post">
<table>
<%@ page import="java.util.*"%> 
<%
Random rand=new Random();
int randomInt = rand.nextInt(10000);

%>
<tr><td>UserId</td><td>:<input type="text" name="id" value="<%=randomInt%>"/><br></br></td></tr>
<tr><td>Name</td><td>:<input type="text" name="user"/><br></br></td></tr>
<tr><td>Password</td><td>:<input type="password" name="password"/><br></br></td></tr>
<tr><td>Operator Age</td><td>:<input type="text" name="oage"/><br></br></td></tr>
<tr><td>Operator Address</td><td>:<textarea name="addr"></textarea><br></br></td></tr>
<tr><td>Operator number</td><td>:<input type="text" name="onum"/><br></br></td></tr>
</table><input type="submit" value="ADD"/>

<center>
<img src="traffic.jpg" alt="traffic">
</center>
</form>
</center>
</body>
</html>