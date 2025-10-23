<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>All Recommended Products Details..</title>
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
.style92 {color: #FF0000; font-weight: bold; font-size: 14px; }
.style106 {font-size: 15px; font-weight: bold; }
.style107 {
	color: #009900;
	font-size: 17px;
}
.style109 {color: #0000FF; font-size: 20px; }
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
          <table width="1045" border="0" cellspacing="2" cellpadding="2">
            <tr>
              <td width="1037"><p class="style36 style35 style98">Recommended  Products... </p>
                <p class="infopost">&nbsp;</p>              </td>
            </tr>
          </table>
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
      		
      		 
           
           String query="select distinct(category) FROM productrecommend"; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
		   while ( rs.next() )
		   {
				a1.add(rs.getString("category"));
			
		   }
	   
		
		
%>
		  <form action="A_RecommendProducts.jsp" method="post">
		  <table width="800" border="0" align="center">
            <tr>
              <td width="334" height="33"><div align="justify" class="style92"> 
                <div align="right"><span class="style3">Select  Category </span> </div>
              </div></td>
              <td width="456"><label>
                
                   <div align="left">
                     <select id="s1" name="category" style="width:150px">
                       <option>--Select--</option>
                       <% 
							for(int i=0;i<a1.size();i++)
							{
							 
								 %>
                       <option><%= a1.get(i)%></option>
                       <%
							}
							%>
                     </select>
                </div>
              </label></td>
            </tr>
            <tr>
              <td height="99" colspan="2"><div align="center">
                <input type="submit" name="Submit" value="View Recommended Products" />
              </div></td>
            </tr>
          </table>
		  </form>
          <table width="712" border="0" cellspacing="2" cellpadding="2">
            <tr>
              <td width="704"><div align="right"><a href="AdminMain.jsp" class="style105">Back</a></div></td>
            </tr>
          </table>
          <p>&nbsp;</p>
          <div class="templatemo_h_line">
		  
              <%
					  
						
						try 
						{
						
							String category=request.getParameter("category");
					
							String title="",s3,s4,s5,s6,s7;
							String query2="select distinct(title) from productrecommend where category='"+category+"' order by category ASC"; 
						   	Statement st2=connection.createStatement();
						   	ResultSet rs2=st2.executeQuery(query2);
					   		while ( rs2.next() )
					   		{
					
								title=rs2.getString(1);
							%>
								
            <table width="896" border="2" align="center"  cellpadding="0" cellspacing="0">
              <tr>
                <td  valign="middle" height="34" style="color: #2c83b0;" colspan="5"><div align="center" class="style106"><span class="style107"><span class="style8">Title</span> <span class="style8">:</span></span>                    <a href="A_RecommendedPost.jsp?title=<%=title%>&amp;category=<%=category%>"><span class="style109">
                    <%out.println(title);%>
                  </span></a><span class="style109"></span></div></td>
              </tr>
              <tr>
                <td  width="70" height="34"  valign="middle" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="center" class="style5 style67 style55">Si No. </div></td>
                <td  width="157" valign="middle" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="center" class="style5 style67 style55">Recommend By </div></td>
                <td  width="184" valign="middle" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="center" class="style5 style67 style55"><strong>Recommend To </strong></div></td>
                <td  width="364" valign="middle" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="center" class="style5 style67 style55">Message</div></td>
                <td  width="107" height="34" valign="middle" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="center" class="style5 style67 style55">Date</div></td>
              </tr>
             
			  <%	

								int j=1;
								String query1="select recommendfrom,recommendto,message,dt from productrecommend where category='"+category+"' and title='"+title+"' order by title ASC"; 
								Statement st1=connection.createStatement();
								ResultSet rs1=st1.executeQuery(query1);
								while ( rs1.next() )
								{
										String recommendfrom= rs1.getString(1);
										String recommendto= rs1.getString(2);
										String message= rs1.getString(3);
										String date= rs1.getString(4);
								%>
              <tr>
                <td height="44" align="center"  valign="middle"><div align="center" class="style62 style65 style99">
                    <%out.println(j);%>
                </div></td>
                <td width="157" rowspan="1" align="center" valign="middle" ><div align="center" class="style5 style20 style37 style32 style65 style99 style100">
                    <p class="style18">
                      <a href="RecommendUserProfile.jsp?username=<%=recommendfrom%>">
                      <%out.println(recommendfrom);%>
                      </a></p>
                </div></td>
                <td width="184" rowspan="1" align="center" valign="middle" ><div align="center" class="style5 style20 style37 style32 style65 style99 style101">
                  <p class="style18">
				   <a href="RecommendUserProfile.jsp?username=<%=recommendto%>">
                    <%out.println(recommendto);%>
					</a></p>
                </div></td>
                <td width="364" rowspan="1" align="center" valign="middle" ><div align="center" class="style5 style20 style37 style32 style65 style99 style101">
                  <p class="style18">
                    <%out.println(message);%>
                  </p>
                </div></td>
                <td width="107" rowspan="1" align="center" valign="middle" ><div align="center" class="style5 style20 style37 style32 style65 style99 style101">
                    <p class="style18">
                      <%out.println(date);%>
                    </p>
                </div></td>
              </tr>
              <%
						j+=1;} 
					}
			
					
					
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
