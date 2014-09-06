<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>vehicle</title>

</head>
<body bgcolor="LightGrey">
<center>
<h1>Entry of vehicle</h1>
</center>
<center>
<form action="vehickco.jsp" method="post">
<table>
<tr><td>Vehicle Number</td><td>:<input type="text" name="vehnum"/><br></br></td></tr>
<tr><td>Travel Type</td><td>:<select name="travel type">
<option value="">Select</option>
<option value="Single_time">Single time</option>
<option value="Multiple_times">Multiple times</option>
</select><br></br></td></tr>
<tr><td>Vehicle Type</td><td>:<select name="vehicle type">
<option  value="" >Select</option>
<option value="Light_compressed">Light compressed</option>
<option value="heavy_compressed">heavy compressed</option>
</select><br></br></td></tr>
</table>
<input type="submit" value="Total Amount"/>
</form>
</center>

</body>
</html>