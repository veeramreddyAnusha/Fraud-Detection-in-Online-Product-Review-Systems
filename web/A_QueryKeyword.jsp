<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>All User Query Keywords..</title>
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
.style35 {
	font-size: 25px;
	color: #FF00FF;
}
.style5 {color: #66CCFF;
	font-size: 21px;
	font-weight: bold;
}
.style55 {font-size: 16px; color: #FFFFFF; }
.style55 {color: #FF0000}
.style62 {	color: #FF00FF;
	font-weight: bold;
	font-size: 13px;
}
.style67 {font-size: 15px}
.style98 {font-size: 28px}
.style99 {font-size: 13px}
.style100 {font-weight: bold}
.style101 {font-weight: bold}
.style105 {
	color: #000000;
	font-weight: bold;
}
.style106 {font-size: 15px; font-weight: bold; }
.style107 {
	color: #009900;
	font-size: 17px;
}
.style109 {color: #0000FF; font-size: 20px; }
.style112 {color: #0066FF; font-size: 13px; font-weight: bold; }
.style114 {font-size: 20px; color: #006600; }
.style94 {font-size: 18px; color: #FF6600; }
.style115 {color: #FFFF00}
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
      <div class="sidebar">
        <div class="gadget">
          <table width="929" border="0" cellspacing="2" cellpadding="2">
            <tr>
              <td width="921"><p class="style36 style35 style98">All User Query Keywords..</p>
                <p class="infopost">&nbsp;</p>              </td>
            </tr>
          </table>
		   <table width="621" border="0" align="center" cellpadding="2" cellspacing="2">
            <tr>
              <td width="340" height="33"><div align="center" class="style5 style55 style67">
                <div align="right">Si No. </div>
              </div></td>
              <td width="267"><div align="center" class="style5 style55 style67">Keywords </div></td>
            </tr>
          <p>&nbsp;</p>	
			  <%@ include file="connect.jsp" %>
              <%@ page import="java.io.*"%>
              <%@ page import="java.util.*" %>
              <%@ page import="java.util.Date" %>
              <%@ page import="com.oreilly.servlet.*"%>
              <%@ page import ="java.text.SimpleDateFormat" %>
              <%@ page import ="javax.crypto.Cipher" %>
              <%@ page import ="org.bouncycastle.util.encoders.Base64" %>
              <%@ page import ="javax.crypto.spec.SecretKeySpec" %>
              <%@ page import ="java.security.KeyPairGenerator,java.security.KeyPair,java.security.Key" %>
		  <%
		
      		 ArrayList a1=new ArrayList();
      		
      		 int i=1;
           
           String query="select distinct(keyword) FROM subgroupfound"; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
		   while ( rs.next() )
		   {
				String keyword=rs.getString(1);
			
		  
		
		
%>
		 
            <tr>
              <td height="31">
                <div align="right" class="style112">
                  <%out.println(i);%>
                </div></td>
              <td><div align="center" class="style112">
                <a href="A_QueryKeyword.jsp?keyword=<%=keyword%>">
                <%out.println(keyword);%>
         	    </a></div></td>
            </tr>
			<%i+=1;}%>
          </table>
		  <p>&nbsp;</p>
		  <table width="712" border="0" cellspacing="2" cellpadding="2">
            <tr>
              <td width="704"><div align="right"><a href="AdminMain.jsp" class="style105">Back</a></div></td>
            </tr>
          </table>
          <p>&nbsp;</p>
          <table width="712" border="0" cellspacing="2" cellpadding="2">
            <tr>
              <td width="704"><div align="left">
                <p class="style36 style35 style98">Analyzed  Query Details..</p>
              </div></td>
            </tr>
          </table>
          <div class="templatemo_h_line">
		  	
              <%
					  
						
						try 
						{
						
							String keyword1=request.getParameter("keyword");
							%>				
            <table width="799" border="2" align="center"  cellpadding="0" cellspacing="0">
              <tr>
                <td  valign="middle" height="34" style="color: #2c83b0;" colspan="3"><div align="center" class="style106"><span class="style107"><span class="style114">Keyword</span> <span class="style8">:</span></span>                    
                    <span class="style109">
                    <%out.println(keyword1);%>
                    </span></div></td>
              </tr>
		      <tr>
                <td  width="212" height="34"  valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style5 style55 style67 style115">
                  <div align="center">Si No. </div>
                </div></td>
                <td  width="241" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style5 style55 style67 style115">Title</div></td>
                <td  width="289" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style5 style55 style67 style115">Category</div></td>
              </tr><%
					int j=1;
							String query2="select  distinct(title),category FROM subgroupfound where keyword='"+keyword1+"' order by category ASC"; 
						   	Statement st2=connection.createStatement();
						   	ResultSet rs2=st2.executeQuery(query2);
					   		while ( rs2.next() )
					   		{
					
								String title=rs2.getString(1);
								String category=rs2.getString(2);
							%>
			
              <tr>
                <td height="44" align="center"  valign="middle"><div align="center" class="style62 style65 style99">
                    
                    <div align="center">
                      <%out.println(j);%>
                    </div>
                </div></td>
                <td width="241" rowspan="1" align="center" valign="middle" ><div align="center" class="style5 style20 style37 style32 style65 style99 style100">
                    <p class="style18">
                      
                      <a href="A_SubGroupPost.jsp?title=<%=title%>&amp;category=<%=category%>">
                      <%out.println(title);%>
                      </a></p>
                </div></td>
                <td width="289" rowspan="1" align="center" valign="middle" ><div align="center" class="style5 style20 style37 style32 style65 style99 style101">
                  <p class="style18">
				   
                    <%out.println(category);%>
					</p>
                </div></td>
              </tr>
              <%
						j+=1;} 
				
			
					
					
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
            </table>
          </div>
          <h2 class="star">&nbsp;</h2>
          <p class="star">&nbsp;</p>
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
