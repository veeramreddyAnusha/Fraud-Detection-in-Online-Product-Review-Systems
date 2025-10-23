<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Searching Friends..</title>
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
.style12 {color: #0000FF}
.style35 {
	font-size: 25px;
	color: #FF00FF;
}
.style49 {color: #FF0000;
	font-weight: bold;
	font-size: 14px;
}
.style75 {color: #0000FF;
	font-weight: bold;
}
.style77 {font-size: 25px}
.style72 {font-family: Arial, Helvetica, sans-serif}
.style79 {color: #00CC00;
	font-weight: bold;
}
.style84 {color: #3366FF}
.style85 {color: #3366FF; font-weight: bold; }
.style94 {font-size: 18px; color: #FF6600; }
.style95 {color: #FFFFFF; }
.style96 {font-size: 14px}
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
          <h2 class="style18"><span class="style12"><span class="style35">Search Friends.. </span></span></h2>
          <p class="infopost">&nbsp;</p>
          <div class="clr"></div>
            <form id="form1" method="post" action="SearchFriends.jsp">
              <table width="453" border="0" align="center" cellpadding="2" cellspacing="2">
                <tr>
                  <td width="185" height="58"><div align="center">
                    <p class="style49">&nbsp;</p>
                    <p class="style49">Enter Friend Name :</p>
                  </div></td>
                  <td width="254"><p>&nbsp;
                    </p>
                    <p>
                      <input type="text" name="keyword" />
                    </p></td>
                </tr>
                
                <tr>
                  <td height="35" colspan="2"><div align="center">
                    <input class="art-button" name="submit" type="submit" value="Search" />
                  </div></td>
                </tr>
              </table>
              <p align="right"><a href="UserMain.jsp" class="style75 style12">Back</a></p>
          </form>
          <div class="post_content"></div>
          <div class="clr"></div>
        </div>
        <div class="article">
          <h2><span class="style12"><span class="style77"><span class="style18">Results Found.. </span></span></span></h2>
          <p class="infopost">&nbsp;</p>
          <div class="clr"></div>
          <div class="img"></div>
          <div class="post_content">
            <p><span class="news_content">
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@ page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page import="java.util.Date" %>
            <%
			
	  			
						String s1=null,ss1=null,s2=null,s3=null,s4=null,s5=null,s6=null,s7=null,s8=null,s9=null,s10=null,s11=null,s12=null,s13=null;
						String user = (String)application.getAttribute("uname");
						String keyword = request.getParameter("keyword");
						int i=0;
						try 
						{
							
						
						
									SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
									SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
									Date now = new Date();
												
									String strDate = sdfDate.format(now);
									String strTime = sdfTime.format(now);
									String dt = strDate + "   " + strTime;
							
							
								
									if(!keyword.equals(""))
										{
											
											
											Statement st3 = connection.createStatement();
											String query3 ="insert into fsearch(username,keyword,dt) values('"+user+"','"+keyword+"','"+dt+"')";
											st3.executeUpdate (query3); 	   
								
							
											String query="select * from user where username!='"+user+"' and username  LIKE '%"+keyword+"%'"; 
											Statement st=connection.createStatement();
											ResultSet rs=st.executeQuery(query);
											while ( rs.next() )
											{
												i=rs.getInt(1);
												s1=rs.getString(2);
												s2=rs.getString(4);
												s3=rs.getString(5);
												s4=rs.getString(6);
												s5=rs.getString(7);
												s6=rs.getString(8);
												s7=rs.getString(9);
												
										
										
										
			  %>
            </span> </p>
            <table border="3" width="518" style="margin:5px 10px 10px 5px;">
              <tr>
                <td rowspan="7" width="148" ><input  name="image2" type="image" src="user_Pic.jsp?id=<%=i%>" style="width:150px; height:150px;" class="image_wrapper" />                </td>
                <td width="118" height="27" align="left" bgcolor="#FF00FF"><div align="left" class="style95"><span class="style96" style="margin-left:20px;; font-weight: bold;">User Name :</span></div></td>
                <td width="249" style="margin-left:20px; color:#000000;"><div align="left" class="style79 style84"><%=s1%></div></td>
              </tr>
              <tr>
                <td height="25" align="left" bgcolor="#FF00FF"><div align="left" class="style95"><span class="style96" style="margin-left:20px;; font-weight: bold;">E-Mail :</span></div></td>
                <td style="margin-left:20px; color:#000000;"><div align="left" class="style85"><%=s2%></div></td>
              </tr>
              <tr>
                <td height="30" align="left" bgcolor="#FF00FF"><div align="left" class="style95"><span class="style96" style="margin-left:20px;; font-weight: bold;">Mobile :</span></div></td>
                <td style="margin-left:20px; color:#000000;"><div align="left" class="style85"><%=s3%></div></td>
              </tr>
              <tr>
                <td height="22" align="left" bgcolor="#FF00FF"><div align="left" class="style95"><span class="style96" style="margin-left:20px;; font-weight: bold;">Address :</span></div></td>
                <td style="margin-left:20px; color:#000000;"><div align="left" class="style85"><%=s4%></div></td>
              </tr>
              <tr>
                <td height="26" align="left" bgcolor="#FF00FF"><div align="left" class="style95"><span class="style96" style="margin-left:20px;; font-weight: bold;">DOB :</span></div></td>
                <td style="margin-left:20px; color:#000000;"><div align="left" class="style85"><%=s5%></div></td>
              </tr>
              <tr>
                <td height="24" align="left" bgcolor="#FF00FF"><div align="left" class="style95"><span class="style96" style="margin-left:20px;; font-weight: bold;">Gender :</span></div></td>
                <td style="margin-left:20px; color:#000000;"><div align="left" class="style85"><%=s6%></div></td>
              </tr>
              <tr>
                <td height="46" align="left" bgcolor="#FF00FF"><div align="left" class="style95"><span class="style96" style="margin-left:20px;; font-weight: bold;">Status :</span></div></td>
                <td style="margin-left:20px; color:#000000;"><p align="left" class="style85"><%=s7%><span style="float:right"><a href="updaterequest.jsp?rname=<%=s1%>&amp;site=<%=s8%>">
                    <input class="art-button" name="button2" type="button" value="Request" />
                </a></span></p></td>
              </tr>
            </table>
            <p><span class="style72">
              <%
						
							
				
						
	  					}}
					}catch(Exception e){
								e.getMessage();
							}
	  
				  
				  %>
            </span></p>
          </div>
          <div class="clr"></div>
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
          <ul class="sb_menu">
            <li>
              <p><a href="SearchFriends.jsp">Home</a></p>
              <p><a href="index.html">Log Out</a></p>
            </li>
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
