<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>All Deleted Friends..</title>
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
.style18 {color: #FF00FF}
.style33 {font-size: 13px;
	color: #6666FF;
	font-weight: bold;
}
.style36 {font-size: 18px; color: #FF3300; }
.style38 {font-size: 18px; color: #666666; }
.style48 {
	font-size: 13px;
	color: #FFFFFF;
	font-weight: bold;
}
.style49 {	color: #990000;
	font-size: 13.5px;
}
.style52 {font-size: 12px}
.style70 {font-size: 13.5px}
.style86 {font-size: 25px}
.style88 {
	color: #0000FF;
	font-weight: bold;
}
.style90 {color: #FF00FF; font-weight: bold; font-size: 13px; }
.style93 {color: #FF0000}
.style94 {font-size: 18px; color: #FF6600; }
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
          <li><a href="UserLogin.jsp"><span>User</span></a></li>
          <li class="active"><a href="AdminLogin.jsp"><span>ESeller</span></a></li>
        </ul>
      </div>
      <div class="logo style8">
        <p class="style17"><span class="style94">Fraud Detection in Online Product Review Systems via Heterogeneous Graph Transformer</span></p>
        <p class="style17"></p>
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
      <div class="sidebar">
        <div class="gadget">
          <table width="966" border="0" cellspacing="2" cellpadding="2">
            <tr>
              <td width="958"><p class="style18"><span class="style30 style46 style31 style86"><strong>All Deleted Friends..</strong></span></p>
                <p class="infopost">&nbsp;</p>                
              </td>
            </tr>
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@ page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page import="java.util.Date" %>
          </table>
         <table width="892" align="center">
                <tr>
                  <td width="66" height="47" align="center" valign="middle" bgcolor="#FFFF00"><div align="center" class="style33 style49 style93"><span class="style3 ">Si No. </span></div></td>
                  <td width="120" align="center" valign="middle" bgcolor="#FFFF00"><div align="center" class="style36 style70 style93"><strong>DeleteBy Image</strong></div></td>
                  <td width="154" align="center" valign="middle" bgcolor="#FFFF00"><div align="center" class="style36 style70 style93"><strong>DeleteBy  Name </strong></div></td>
                  <td width="124" align="center" valign="middle" bgcolor="#FFFF00"><div align="center" class="style36 style70 style93"><strong>DeleteTo Image </strong></div></td>
                  <td width="143" align="center" valign="middle" bgcolor="#FFFF00"><div align="center" class="style36 style70 style93"><strong>DeleteTo  Name </strong></div></td>
                  <td width="191" align="center" valign="middle" bgcolor="#FFFF00"><div align="center" class="style38 style70 style93"><strong>Reason</strong></div></td>
				  <td width="168" align="center" valign="middle" bgcolor="#FFFF00"><div align="center" class="style38 style70 style93"><strong>Date</strong></div></td>
                </tr>
                <%
 
      	
	      String s1="",s2="",s3="",s4="",s5="",s6="",s7="",user1="";
						int k=1;
						try 
						{
					
						   	String query="select *  from frienddelete"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
									s2=rs.getString(2);
									s3=rs.getString(3);
									s4=rs.getString(4);									
									s5=rs.getString(5);									
																
																
												int i=0,j=0;							
										String query3="select *  from user where username='"+s2+"'"; 
										Statement st3=connection.createStatement();
										ResultSet rs3=st3.executeQuery(query3);
										if ( rs3.next() )
										{
													  i=rs3.getInt(1);;
												
										}	
										String query1="select *  from user where username='"+s3+"'"; 
										Statement st1=connection.createStatement();
										ResultSet rs1=st1.executeQuery(query1);
										if ( rs1.next() )
										{
													  j=rs1.getInt(1);;
												
										}		
																						
															%>
					
                <tr>
                  <td height="104"><div align="center" class="style90"><%=k%></div></td>
                  <td><div align="center" class="style48 style52 style18">
                      <input  name="image" type="image" src="user_Pic.jsp?id=<%=i%>" width="100" height="100" alt="Submit" />
                  </div></td>
                  <td><div align="center" class="style90"><%=s2 %></div></td>
                  <td><div align="center" class="style90">
                    <div align="center" class="style48 style52 style18">
                      <input  name="image2" type="image" src="user_Pic.jsp?id=<%=j%>" width="100" height="100" alt="Submit" />
                    </div>
                  </div></td>
                  <td><div align="center" class="style90"><%=s3%></div></td>
                  <td><div align="center" class="style90"><%=s4%></div></td>
				  <td><div align="center" class="style90"><%=s5%></div></td>
                </tr>
                <%
		  k+=1;}
	 
		
	
	 

           connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>
          </table>
           
          <table width="509" border="0" cellspacing="2" cellpadding="2">
            <tr>
              <td width="501" height="80"><div align="right">
                <br/><p>&nbsp;</p>
                <p><a href="AdminMain.jsp" class="style88">Back</a></p>
              </div></td>
            </tr>
          </table>
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
