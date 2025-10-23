<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Recommended Post Details..</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-aller.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<style type="text/css">
<!--
.style8 {font-size: 20px}
.style17 {font-size: 32px; color: #FF6600; }
.style3 {color: #FF00FF}
.style1 {font-size: 25px}
.style33 {color: #0000FF}
.style34 {color: #42ac1f}
.style9 {color: #FF0000; font-weight: bold; }
.style11 {color: #0000FF;
	font-weight: bold;
}
.style22 {font-size: 10; }
.style30 {color: #f69722;
	font-weight: bold;
}
.style5 {font-size: 27px;
	color: #66CCCC;
}
.style47 {font-size: 15px}
.style48 {color: #FFFF00; font-weight: bold; font-size: 15px; }
.style51 {font-size: 13px}
.style94 {font-size: 18px; color: #FF6600; }
.style95 {color: #FFFF00}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="menu_nav">
        <ul>
          <li><a href="index.html"><span>Home </span></a></li>
          <li class="active"><a href="UserLogin.jsp"><span>User</span></a></li>
          <li><a href="AdminLogin.jsp"><span>ESeller</span></a></li>
        </ul>
      </div>
      <div class="logo style8">
        <p class="style17"><span class="style94">Fraud Detection in Online Product Review Systems via Heterogeneous Graph Transformer</span></p>
        <p class="style17"></p>
        <p class="style17"> </p>
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="940" height="271" alt="" /> </a> <a href="#"><img src="images/slide2.jpg" width="940" height="271" alt="" /> </a> <a href="#"><img src="images/slide3.jpg" width="940" height="271" alt="" /> </a> </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <h2><span class="style33"><span class="style1"><span class="style3"> Post </span> <span class="style34"><%=request.getParameter("title")%><span class="style3">'s Details</span></span></span><span class="style3">..</span></span></h2>
          <p class="infopost">&nbsp;</p>
          <div class="clr"></div>
      
            <p>&nbsp;</p>
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
		String title="",keyword="",des="",indexs="",price="";
		String strDate="",strTime="",date="",category="";
		int likes = 0,unlikes=0,i = 0;
		   
		title = request.getParameter("title");
		category = request.getParameter("category");
try 
	{
		

		String user = (String)application.getAttribute("uname");
		  
		String str="select price,indexs,des,rank,date,unlike from products where (title='"+title+"' and category='"+category+"') "; 
		Statement st=connection.createStatement();
		ResultSet rs=st.executeQuery(str);
		   
		if ( rs.next() )
		{	
			price = rs.getString(1);
			indexs = rs.getString(2);
			des = rs.getString(3);
			likes = rs.getInt(4);
			date = rs.getString(5);
			unlikes = rs.getInt(6);
		
		
			SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
			SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
			
			Date now = new Date();
			
			strDate = sdfDate.format(now);
			strTime = sdfTime.format(now);
			String dt = strDate + "   " + strTime;
					   
			/*String str2 = "insert into postsearch (user,p_name,categorie,p_model_no,keyword,dt) values('"+user+"','"+p_Name+"','"+categorie+"','"+model+"','"+keyword+"','"+dt+"')";
			connection.createStatement().executeUpdate(str2);*/
	
%>
            <table width="666" border="1" align="center" cellpadding="0" cellspacing="0" >
              <tr >
                <td width="229" rowspan="3" ><div class="style22 style4 style5" style="margin:10px 13px 10px 13px;" >
                    <div align="center"><a class="#" id="img1" href="#" >
                      <input  name="image" type="image" src="images1.jsp?title=<%=title%>&category=<%=category%>" style="width:220px; height:160px;" />
                    </a> </div>
                </div></td>
                <td width="257" height="44" bgcolor="#FF0000" ><div align="center" class="style9 style47 style95">Product Name </div></td>
                <td width="172"><div align="center" class="style40 style17 style51 style3"><strong><%= title%></strong></div></td>
              </tr>
              <tr>
                <td width="257" height="44" bgcolor="#FF0000"><div align="center" class="style48">Category</div></td>
                <td><div align="center" class="style40 style17 style51 style3"><strong><%= category%></strong></div></td>
              </tr>
              
              <tr>
                <td width="257" height="76" bgcolor="#FF0000"><div align="center" class="style17 style30 style47 style95">Price </div></td>
                <td><div align="center" class="style40 style17 style51 style3"><strong><%= price+" Rs/-"%></strong></div></td>
              </tr>
              <tr>
                <td height="30" bgcolor="#FF0000"><div align="center" class="style17 style30 style47 style95">Index</div></td>
                <td bgcolor="#FF0000"><div align="center" class="style17 style30 style47 style95">Description </div></td>
                <td valign="top"><div align="center">
                    <p><span class="style9">Likes : </span><span class="style3"><strong><%= likes%></strong></span> </p>
                  <p><span class="style9">Unlikes :</span> <span class="style3"><strong><%= unlikes%></strong></span></p>
                </div></td>
              </tr>
              <tr>
                <td height="165"><label>
                  <textarea name="textarea2" cols="30" rows="10"><%= indexs%></textarea>
                </label></td>
                <td><label>
                  <textarea name="textarea" cols="40" rows="10"><%= des%></textarea>
                </label></td>
                <td>&nbsp;</td>
              </tr>
              <%
		}
		connection.close();
	}
	catch(Exception e)
	{
		out.println(e.getMessage());
	}
%>
          </table>
            <div class="clr"></div>
  		<p align="right">&nbsp;</p>
  		<p align="center"><a href="U_PostRecommendsToMe.jsp" class="style11 style33"><strong>Back</strong></a></p>
  		<div class="clr">
            <div align="right"></div>
          </div>
        </div>
      </div>
      <div class="sidebar">
        <div class="searchform">
          <form id="formsearch" name="formsearch" method="post" action="#">
            <span>
            <input name="editbox_search" class="editbox_search" id="editbox_search" maxlength="80" value="Search our ste:" type="text" />
            </span>
            <input name="button_search" src="images/search.gif" class="button_search" type="image" />
          </form>
        </div>
        <div class="clr"></div>
        <div class="gadget">
          <h2 class="star"><span>Sidebar</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu"><li><a href="#">Home</a></li>
            <li><a href="index.html">Log Out</a></li>
          </ul>
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg"></div>
  <div class="footer">
    <div class="footer_resize">
      <div style="clear:both;"></div>
    </div>
  </div>
</div>
<div align=center></div>
</body>
</html>
