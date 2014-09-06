<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor="LightGrey">
<form action="login2.jsp" method="post">
<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %>
<%@ page import="java.util.*"%> 
<%! Connection conn=null; %>
<%! PreparedStatement st= null; %>
<%! ResultSet rs= null;%>
<% ArrayList<String> code1=new ArrayList<String>();%>
<% 
try {
String connectionURL = "jdbc:mysql://localhost:3306/sam";			//url to database 
Class.forName("com.mysql.jdbc.Driver").newInstance(); 			//Creating instance
conn = DriverManager.getConnection(connectionURL, "root","12345");	//Creating connection
							//Creating statement
String opname=request.getParameter("user");

String opage=request.getParameter("oage");
String address=request.getParameter("addr");
String opnum=request.getParameter("onum");
String oppwd=request.getParameter("password");
String id=request.getParameter("id");
String query="insert into operator values('"+opname+"',"+opage+",'"+address+"',"+opnum+",'"+oppwd+"','"+id+"')";
st=conn.prepareStatement(query);
st.executeUpdate();
//out.println("Operator is added successfully");
/*while(rs.next())
{
	
	out.print(rs.getString("accno"));
	out.print(rs.getString("acctype"));
	out.print(rs.getString("bal"));
	out.print(rs.getString("name"));
	out.print(rs.getString("date"));//Storing in arrylist
}*/
if(conn.isClosed()) 
   out.println("Unable to connect to database.");
}
catch(Exception e)
{
	out.print(e);
}finally{
								//CLOSING CONNECTION
}
out.print(code1);
%>
<center>
<h1> Operator is added successfully </h1>
<input type="submit" value="login">
</center>
</form>
</body>
</html>