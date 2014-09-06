<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor="LightGrey">
<form action="vehik.jsp" method="post">
<%
		//out.println("MySQL Connect Example.");
		Connection conn = null;
		String url = "jdbc:mysql://localhost:3306/";
		String dbName = "sam";
		String driver = "com.mysql.jdbc.Driver";
		String userName = "root";
		String password = "12345";
		String usr=request.getParameter("username");
		String pswd=request.getParameter("password");
		String query = "Select * from operator where id='"+usr+"'and pwd='"+pswd+"'";
		String dbtime = "";
		try {
			Class.forName(driver).newInstance();
			conn = DriverManager
					.getConnection(url + dbName, userName, password);
		
		//out.println( is successfully logged in");
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(query);
			if(rs.next()) {
				dbtime = rs.getString(1);
			//out.println(" welcome "+dbtime);
				
			} 
			else
			{
				out.println("Enter Valid Username and Password");
				response.sendRedirect("login2.jsp");
		}
		} catch (Exception e) {
			e.printStackTrace();
		} 
%>
<center>
			<h1> User is successfully logged in </h1>
			
			
<input type="submit" value="vehicle">
</center>
<center>
<img src="enter.jpg" alt="rnter"></center></form>
</body>
</html>
