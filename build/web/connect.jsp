<title></title>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*" %>
<%
	Connection connection = null;
 	try {
     

	  	Class.forName("com.mysql.jdbc.Driver");	
		connection = DriverManager.getConnection("jdbc:mysql://localhost:3308/Mining_Users","root","root");
      	String sql="";

	}
	catch(Exception e)
	{
		System.out.println(e);
	}
%>