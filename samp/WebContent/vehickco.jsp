<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Vehicle details</title>
</head>
<body bgcolor="LightGrey">
<center>
<h1> Vehicle details is added successfully </h1>
</center>
<form action="print.jsp" method="post">
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
String number=request.getParameter("vehnum");
String ttype=request.getParameter("travel type");
String vtype=request.getParameter("vehicle type");


int amt;
String tt=new String("Single_time");
String lt=new String("Light_compressed");
String ht=new String("heavy_compressed");
String mt=new String("Multiple_times") ;
boolean tb=request.getParameter("travel type").equals(tt);
boolean vb=request.getParameter("vehicle type").equals(lt);
boolean hb=request.getParameter("vehicle type").equals(ht);
boolean mb=request.getParameter("travel type").equals(mt);
if(tb && vb )
	{
	amt=50;
	}
else if(tb && hb)
{
amt=100;
}
else if(mb && vb)
{
amt=150;
}
else 
	{
	amt=175;
	}

%>
<center>
<table border="4" >
<tr>
<td>Vechile number : </td>
<td><%out.println(number);%>
</td>
</tr>
<tr>
<td>Travel type : </td>
<td><%out.println(ttype);%>
</td>
</tr>
<tr>
<td>Vehicle type : </td>
<td><%out.println(vtype);%>
</td>
</tr>
<tr>
<td>Amount : </td>
<td><%out.println(amt);%>
</td>
</tr>
</table>
</center>
<center>
</center>
<%
String query="insert into vehick values('"+number+"','"+ttype+"','"+vtype+"',"+amt+")";
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

<input type="button" value="Print This Page" onClick="window.print()" />
<input type="submit" value="next"/>
</center>
</form>
</body>
</html>