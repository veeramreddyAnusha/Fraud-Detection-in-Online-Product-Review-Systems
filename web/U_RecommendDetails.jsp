<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Recommended Users..</title>
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
.style5 {color: #66CCFF;
	font-size: 21px;
	font-weight: bold;
}
.style54 {color: #009900}
.style56 {color: #FF0000}
.style57 {font-size: 15px}
.style84 {
	font-size: 12px;
	color: #0000FF;
}
.style85 {color: #0000FF; font-weight: bold; }
.style86 {font-size: 13px}
.style89 {color: #00CC00}
.style90 {color: #FF00FF; font-weight: bold; }
.style91 {color: #000000}
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
          <li class="active"><a href="UserLogin.jsp"><span>User</span></a></li>
          <li><a href="AdminLogin.jsp"><span>ESeller</span></a></li>
        </ul>
      </div>
      <div class="logo style8">
        <p class="style17"><span class="style94">Fraud Detection in Online Product Review Systems via Heterogeneous Graph Transformer</span></p>
        <p class="style17"></p>
      </div>
      <div class="clr">U_RecommendDetails.jsp</div>
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
          <h2 class="style18"><span class="style12"><span class="style35"> Recommended Users on <span class="style89"><%= request.getParameter("title")%></span> ..</span></span></h2>
          <p class="infopost">&nbsp;</p>
          <div class="clr"></div>
            <p>&nbsp;</p>
            <table width="588" align="center"  cellpadding="0" cellspacing="0"  ">
              <tr>
                <td  width="74" height="48"  valign="middle" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="center" class="style5 style56 style57">Sl No. </div></td>
                <td  width="132" height="48" valign="middle" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="center" class="style5 style56 style57">User Name</div></td>
                <td  width="241" height="48" valign="middle" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="center" class="style5 style56 style57">Message</div></td>
                <td  width="139" height="48" valign="middle" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="center" class="style5 style56 style57">Date</div></td>
              </tr>
              <%@ include file="connect.jsp" %>
              <%
					  
						String s1,s2,s3,s4,s5,s6,s7;
						int i=1;
						try 
						{
								String title="";
								String date="",category="";
								title = request.getParameter("title");
								category = request.getParameter("category");
						
							String user=(String)application.getAttribute("uname");
						   	String query="select * from productrecommend where recommendto='"+user+"' and(title='"+title+"' and  category='"+category+"')"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
								s1=rs.getString(2);
								s2=rs.getString(6);
								s3=rs.getString(7);
								
					%>
              <tr>
                <td height="60" align="center"  valign="middle"><div align="center" class="style90">
                    <%out.println(i);%>
                </div></td>
                <td height="60" align="center"  valign="middle"><div align="center" class="style90"> 
                    <%out.println(s1);%>
                  </div></td>
                <td height="60" align="center"  valign="middle"><div align="center" class="style90"> 
                    <%out.println(s2);%>
                </div></td>
                <td height="60" align="center"  valign="middle"><div align="center" class="style90">
                  <%out.println(s3);%>
                </div></td>
              </tr>
              <%
						i+=1;}
						
					
				
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
          </table>
            <p align="right">&nbsp;</p>
            <p align="center" class="style84"><a href="U_PostRecommendsToMe.jsp" class="style85 style91">Back</a></p>
            <div class="post_content"></div>
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
              <p><a href="#">Home</a></p>
              <p><a href="index.html">Log Out</a></p>
            </li>
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
