 <%@ include file="connect.jsp" %>
    <%@ page import="java.util.*"%>
    <%@ page import="java.text.*"%>
    <%@ page import="java.util.Date"%>
    <%@ page import="java.sql.*"%>
    <%@ page import="com.oreilly.servlet.*,java.lang.*,java.text.SimpleDateFormat,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
    <%@ page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec"%>
    <%@ page import="org.bouncycastle.util.encoders.Base64"%>
    <%@ page import="java.util.Random,java.io.PrintStream, java.io.FileOutputStream, java.io.FileInputStream, java.security.DigestInputStream, java.math.BigInteger, java.security.MessageDigest, java.io.BufferedInputStream" %>

    <%

      
			
			 	
		   
	try 
		{
			String title="",keyword="",des="",indexs="",price="";
			String strDate="",strTime="",date="",category="";
			int likes = 0,unlikes=0,i = 0;
			   
			title = request.getParameter("title");
			keyword = request.getParameter("keyword");
			category = request.getParameter("category");
			SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
			SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
			
			Date now = new Date();
			
			 strDate = sdfDate.format(now);
			 strTime = sdfTime.format(now);
			String dt = strDate + "   " + strTime;

		String user = (String)application.getAttribute("uname");
		
    Statement st=connection.createStatement();
    String strQuery = "select unlike from products where title='"+title+"' and category='"+category+"'";
    ResultSet rs = st.executeQuery(strQuery);
   
    if(rs.next())
	{


		int unlike=rs.getInt(1);
		int unlikeplus=unlike+1;
	
		Statement st1=connection.createStatement();
   		String strQuery1 = "update products set unlike='"+unlikeplus+"' where( title='"+title+"' and category='"+category+"')" ;
  		int s=st1.executeUpdate(strQuery1);
		
		String str2 = "insert into unlikes (user,title,category,dt) values('"+user+"','"+title+"','"+category+"','"+dt+"')";
		int k=connection.createStatement().executeUpdate(str2);
		
		if(s>0 && k>0)
		{
			  response.sendRedirect("ViewSearchPost.jsp?title="+title+"&category="+category+"&keyword="+keyword+"");
		}
      } 

  
  
  }
  catch (Exception e){
    e.printStackTrace();
  }
%>
		    </div>
			