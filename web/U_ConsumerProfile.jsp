<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Consumer Profile..</title>
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
.style36 {font-size: 14px}
.style26 {color: #3366FF}
.style36 {color: #00CCFF}
.style9 {color: #FF0000; font-weight: bold; }
.style11 {color: #0000FF;
	font-weight: bold;
}
.style42 {color: #0066FF}
-->
</style>
<link href="file:///D|/local_sites/cafe_townsend/cafe_townsend.css" rel="stylesheet" type="text/css" />
<style type="text/css">
<!--
.style94 {font-size: 18px; color: #FF6600; }
.style95 {color: #FFFFFF}
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
          <h2><span class="style33"><span class="style1"><span class="style3">Consumer</span> <span class="style34"><%=request.getParameter("username")%><span class="style3">'s</span></span> <span class="style3">Profile</span></span><span class="style3">..</span></span></h2>
          <p class="infopost">&nbsp;</p>
          <div class="clr"></div>
      
            <p>&nbsp;</p>
            <table width="519" border="1.5" align="center"  cellpadding="0" cellspacing="0"  >
              <%@ include file="connect.jsp" %>
              <%@ page import="org.bouncycastle.util.encoders.Base64"%>
              <%
						
						String user=request.getParameter("username");
						String title=request.getParameter("title");	
						String option=request.getParameter("option");	
											
						
						String s1,s2,s3,s4,s5;
						int i=0;
						try 
						{
						   	String query="select * from user where username='"+user+"'"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		if ( rs.next() )
					   		{
								i=rs.getInt(1);
								s1=rs.getString(4);
								s2=rs.getString(5);
								s3=rs.getString(6);
								s5=rs.getString(7);
								s4=rs.getString(9);
								
								
								
								
								
								
					%>
              <tr>
                <td width="237" rowspan="6" ><div class="style7 style26" style="margin:10px 13px 10px 13px;" ><strong><a class="#" id="img1" href="#" >
                    <input  name="image" type="image" src="user_Pic.jsp?id=<%=i%>" style="width:200px; height:200px;" />
                </a></strong></div></td>
              </tr>
              <tr>
                <td  width="119" height="40" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="left" class="style15 style7 style4 style36 style95" style="margin-left:20px;">
                  <div align="left"><strong>E-Mail</strong></div>
                </div></td>
                <td  width="155" valign="middle" height="40" style="color:#000000;"><div align="left" class="style9 style10 style42" style="margin-left:20px;">
                    <%out.println(s1);%>
                </div></td>
              </tr>
              <tr>
                <td  width="119" height="40" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="left" class="style15 style7 style4 style36 style95" style="margin-left:20px;">
                  <div align="left"><strong>Mobile</strong></div>
                </div></td>
                <td  width="155" valign="middle" height="40"><div align="left" class="style9 style10 style42" style="margin-left:20px;">
                    <%out.println(s2);%>
                </div></td>
              </tr>
              <tr>
                <td  width="119" height="40" align="left" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="left" class="style15 style7 style4 style36 style95" style="margin-left:20px;">
                  <div align="left"><strong>Address</strong></div>
                </div></td>
                <td  width="155" align="left" valign="middle" height="40"><div align="left" class="style9 style10 style42" style="margin-left:20px;">
                    <%out.println(s3);%>
                </div></td>
              </tr>
              <tr>
                <td  width="119" height="40" align="left" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="left" class="style15 style7 style4 style36 style95" style="margin-left:20px;">
                  <div align="left"><strong>Date of Birth</strong></div>
                </div></td>
                <td  width="155" align="left" valign="middle" height="40"><div align="left" class="style9 style10 style42" style="margin-left:20px;">
                    <%out.println(s5);%>
                </div></td>
              </tr>
              <tr>
                <td   width="119" height="51" align="left" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="left" class="style15 style7 style4 style36 style95" style="margin-left:20px;">
                  <div align="left"><strong>Status</strong></div>
                </div                        ></td>
                <td  width="155" align="left" valign="middle" height="51" style="color: #2c83b0;"><div align="left">
                    <div align="left" class="style9 style10 style42" style="margin-left:20px;">
                      <%out.println(s4);%>
                </div></td>
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
       
            <p align="right"><a href="U_FriendConsume.jsp?title=<%=title%>&amp;option=<%=option%>" class="style11 style33"><strong>Back</strong></a></p>
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
        <div class="gadget">
          <h2 class="star">&nbsp;</h2>
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
