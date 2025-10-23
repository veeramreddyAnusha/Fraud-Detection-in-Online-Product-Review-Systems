<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Review Details</title>
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
.style11 {color: #0000FF;
	font-weight: bold;
}
.style94 {font-size: 18px; color: #FF6600; }
.style96 {
	font-size: 24px;
	color: #FF0000;
	font-weight: bold;
}
.style97 {
	color: #FF0000;
	font-weight: bold;
}
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
          <h2><span class="style33"><span class="style1"><span class="style3"> </span></span></h2>
          <p class="infopost">&nbsp;</p>
          <div class="clr"></div>
      
            <p>&nbsp;</p>
            <p>
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
		String strDate="",strTime="",date="",category="",ecom="",id="";
		int likes = 0,unlikes=0,i = 0;
		   
		title = request.getParameter("title");
		id = request.getParameter("id");
		price=request.getParameter("price");
		ecom=request.getParameter("ecom");
		

			%>
</p>
            <p align="center" class="style96">REVIEW DETAILS !!! </p>
            <form id="form1" name="form1" method="post" action="u_review1.jsp">
              <p>&nbsp;</p>
              <table width="362" border="0">
                <tr>
                  <td width="153" height="32" bgcolor="#FFFF00"><span class="style97">Product ID </span></td>
                  <td width="282"><input type="text" name="id"  value="<%=id%>"/></td>
                </tr>
                <tr>
                  <td height="45" bgcolor="#FFFF00"><span class="style97">Product Name </span></td>
                  <td><input type="text" name="title" value="<%=title%>"/></td>
                </tr>
                <tr>
                  <td height="42" bgcolor="#FFFF00"><span class="style97">Product Price </span></td>
                  <td><input type="text" name="price" value="<%=price%>"/></td>
                </tr>
                <tr>
                  <td height="41" bgcolor="#FFFF00"><span class="style97">Product Company </span></td>
                  <td><input type="text" name="ecom" value="<%=ecom%>" /></td>
                </tr>
                <tr>
                  <td bgcolor="#FFFF00"><span class="style97">Enter Your Review </span></td>
                  <td><textarea name="review" cols="20" rows="5"></textarea></td>
                </tr>
                <tr>
                  <td height="45">&nbsp;</td>
                  <td><input type="submit" name="Submit" value="Submit Review" />
                  <input type="reset" name="Submit2" value="Reset" /></td>
                </tr>
              </table>
              <p>&nbsp;</p>
          </form>
            <p align="center"><a href="UserMain.jsp" class="style11 style33"><strong>Back</strong></a></p>
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
