<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<%@ include file="connect.jsp" %>

<%@ page import="java.util.*"%>
<%@ page import="java.text.*"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.sql.*"%>
<%@ page import="com.oreilly.servlet.*,java.lang.*,java.text.SimpleDateFormat,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@ page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec"%>
<%@ page import="org.bouncycastle.util.encoders.Base64"%>
<%@ page import="java.util.Random,java.io.PrintStream, java.io.FileOutputStream, java.io.FileInputStream, java.security.DigestInputStream, java.math.BigInteger, java.security.MessageDigest, java.io.BufferedInputStream" %>
<html>
<title>PPI : user status changing</title>
<head></head>
<body>
&nbsp;
	
<div align="center">
  <p>&nbsp;</p>
  <p>
    <%

		try {
  				
				String uname1 = (String )application.getAttribute("uname");
				String recommendto = request.getParameter("recommendto");
					String title ="",category="",keyword="";
					title = request.getParameter("title");
					category = request.getParameter("category");
					keyword= request.getParameter("keyword");
					String message="";
					message=request.getParameter("textarea");

				if(recommendto.equals("select")|| message.equals(""))
				{
						
						out.println("Friend Name or Message Missing !!, Please Provide..");
						%>
    <br/>
    <br/>
    <a href="postrecommend.jsp?keyword=<%=keyword%>&title=<%=title%>&category=<%=category%>">Back</a>
    <%
		
				}
				else
				{
				
				Statement stmt1=connection.createStatement();
				String strQuery1 = "select * from productrecommend where ((recommendto ='"+recommendto+"' && recommendfrom ='"+uname1+"')|| (recommendto ='"+uname1+"' && recommendfrom ='"+recommendto+"')) && (title='"+title+"' and category='"+category+"')";
				ResultSet rs1 = stmt1.executeQuery(strQuery1);
				if(rs1.next())
				{
						
						out.println("Already Recommended this Product..");
						%>
    <br/>
    <br/>
    <a href="SearchProducts2.jsp?keyword=<%=keyword%>&title=<%=title%>&category=<%=category%>">Back</a>
    <%
		
				}
				else
				{
							SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
							SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
							
							Date now = new Date();
							
							String strDate = sdfDate.format(now);
							String strTime = sdfTime.format(now);
							String dt = strDate + "   " + strTime;
						
						
					
						//out.println("hi");
						Statement st1 = connection.createStatement();
						String query1 ="insert into productrecommend(recommendfrom,recommendto,title,category,message,dt) values('"+uname1+"','"+recommendto+"','"+title+"','"+category+"','"+message+"','"+dt+"')";
						st1.executeUpdate(query1);
						
						/*//Retrieving Old Rank
						Statement stmt3=connection.createStatement();
						String strQuery3 = "select rank from products where (title='"+title+"' and category='"+category+"')";
						ResultSet rs3 = stmt3.executeQuery(strQuery3);
						if(rs3.next())
						{
							int rank=rs3.getInt(1);
							
						//Rank Increase					
						int ranks=rank+1;
						Statement st9 = connection.createStatement();
						String query9 ="update products set rank='"+ranks+"' where (title='"+title+"' and category='"+category+"')";
						st9.executeUpdate(query9);*/
						//out.println(n);
						
						out.println("Product Successfully Recommended..");
						%>
    <br/>
    <br/>
    <a href="SearchProducts2.jsp?keyword=<%=keyword%>&title=<%=title%>&category=<%=category%>">Back</a>
    <%
       		
				}}connection.close();
		}
      	catch(Exception e)
     	{
		out.println(e);
   		}
	
   		//response.sendRedirect("recommendlistofimages.jsp");  
	%>
    
    
  </p>
</div>
</body>
</html>