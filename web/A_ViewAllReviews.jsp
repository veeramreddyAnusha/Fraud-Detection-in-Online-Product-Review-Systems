<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>View All Reviews</title>
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
.style63 {font-weight: bold}
.style67 {font-size: 15px}
.style98 {font-size: 28px}
.style99 {font-size: 13px}
.style100 {font-weight: bold}
.style101 {font-weight: bold}
.style102 {font-weight: bold}
.style103 {font-weight: bold}
.style105 {
	color: #0000FF;
	font-weight: bold;
}
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
          <table width="1045" border="0" cellspacing="2" cellpadding="2">
            <tr>
              <td width="1037"><p class="style36 style35 style98">All Products Review Details.. </p>
                <p class="infopost">&nbsp;</p>              </td>
            </tr>
          </table>
          <p>&nbsp;</p>
          <div class="templatemo_h_line">
            <table width="1064" border="2" align="center"  cellpadding="0" cellspacing="0">
              <tr>
                <td  width="51" height="34"  valign="middle" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="center" class="style5 style55 style67">Sl No </div></td>
				<td  width="146" valign="middle" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="center" class="style5 style55 style67">Product Image</div></td>
                <td  width="146" valign="middle" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="center" class="style5 style55 style67">Reviewed User</div></td>
                <td  width="86" valign="middle" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="center" class="style5 style55 style67">Review Details</div></td>
                <td  width="106" height="34" valign="middle" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="center" class="style5 style55 style67"><strong>Product Name</strong></div></td>
                <td  width="62" valign="middle" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="center" class="style5 style55 style67">Product ID</div></td>
                <td  width="41" valign="middle" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="center" class="style5 style55 style67">Date and Time</div></td>
                <td  width="164" valign="middle" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="center" class="style5 style55 style67">Ecommerce Company</div></td>

              </tr>
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
					  
						
						try 
						{
						
							
							String ecom=(String)application.getAttribute("ecom");
							
							String rby="",rdetails="",s3,s4,s5,s6,s7;
							int i=0,j=1;
						   	String query="select * from userreviews  where ecompany='"+ecom+"' "; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
								i=rs.getInt(1);
								rby=rs.getString(2);
								rdetails=rs.getString(3);								
								String pname= rs.getString(4);
								String pid= rs.getString(5);
								String dt= rs.getString(6);
								ecom= rs.getString(7);


					%>
              <tr>
                <td height="102" align="center"  valign="middle"><div align="center" class="style62 style65 style99">
                    <%out.println(i);%>
                </div></td>
                <td width="146" rowspan="1" align="center" valign="middle" ><div class="style62 style67" style="margin:10px 13px 10px 13px;" >
                    <input  name="image2" type="image" src="images.jsp?imgid=<%=pid%>" style="width:120px; height:100px;" />
                </div></td>
                <td width="86" rowspan="1" align="center" valign="middle" ><div align="center" class="style5 style20 style37 style32 style65 style99 style100">
                    <p class="style18">
                      <%out.println(rby);%>
                    </p>
                </div></td>
                <td width="106" rowspan="1" align="center" valign="middle" ><div align="center" class="style5 style20 style37 style32 style65 style99 style101">
                    <p class="style18">
                      <%out.println(rdetails);%>
                    </p>
                </div></td>
                <td align="center"  valign="middle"><div align="center" class="style5 style20 style37 style32 style65 style99 style102">
                  <p class="style18">
                    <%out.println(pname);%>
                    Rs/- </p>
                </div></td>
                <td align="center"  valign="middle"><div align="center" class="style5 style20 style37 style32 style65 style99 style102">
                  <p class="style18">
                    <%out.println(pid);%>
                  </p>
                </div></td>
               
              
            
                        <td align="center"  valign="middle"><div align="center" class="style5 style20 style37 style32 style65 style99 style102">
                  <p class="style18">
                    <%out.println(dt);%>
                  </p>
                   
                </div></td>
               
                   
                      <td align="center"  valign="middle"><div align="center" class="style5 style20 style37 style32 style65 style99 style102">
                  <p class="style18">
                    <%out.println(ecom);%>
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
          <table width="577" border="0" cellspacing="2" cellpadding="2">
            <tr>
              <td width="569"><div align="right"><a href="AdminMain.jsp" class="style105">Back</a></div></td>
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
