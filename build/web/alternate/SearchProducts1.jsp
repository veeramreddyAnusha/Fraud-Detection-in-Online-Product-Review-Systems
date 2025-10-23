<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Searching Products..</title>
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
.style100 {
	font-weight: bold;
	font-size: 13px;
}
.style5 {color: #66CCFF;
	font-size: 21px;
	font-weight: bold;
}
.style55 {font-size: 16px; color: #FFFFFF; }
.style55 {color: #FF0000}
.style62 {color: #FF00FF;
	font-weight: bold;
	font-size: 13px;
}
.style63 {font-weight: bold}
.style67 {font-size: 15px}
.style84 {
	color: #FF0000;
	font-size: 13px;
	font-weight: bold;
}
.style104 {
	color: #009900;
	font-weight: bold;
	font-size: 20px;
}
.style105 {font-size: 12px}
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
          <li><a href="AdminLogin.jsp"><span>Admin</span></a></li>
        </ul>
      </div>
      <div class="logo style8">
        <p class="style17">Domain-Sensitive Recommendation with</p>
        <p class="style17"> User-Item Subgroup Analysis</p>
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
        <table width="1114" border="0" cellspacing="2" cellpadding="2">
          <tr>
            <td width="1106" height="104"><h2><span class="style33"><span class="style1"><span class="style3">Matched  Products.. </span></span><span class="style3"></span></span></h2>
                <p class="infopost">&nbsp;</p>
              <div class="clr"></div>
            <p></p></td>
          </tr>
        </table>
       
        
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
			String keyword="",l_keyword="",title="",des="";
			
			String price="",category="",indexs="";
					
			String uname = (String)application.getAttribute("uname");
			
			
			keyword= request.getParameter("keyword");
			if(keyword.equals(""))	
			{

				%>
		<p align="center"><br/>
				    <span class="style84">Please Enter Keyword To Search...</span></p>
					<br/>
					<p align="center"><a href="SearchProducts.jsp" class="style11">Back</a></p>
				    <%
			}
			else
			{
								
										
					l_keyword = keyword.toLowerCase();
					Set s= new HashSet();
					Set s1= new HashSet();
					int test=1,j=1;
					int totalproducts=0,matched=0;
					String str = "select id,title,price,category,indexs,des,rank from products";
					Statement st=connection.createStatement();
					ResultSet rs = st.executeQuery(str);
					while(rs.next())
					{
							int id=rs.getInt(1);
							title = rs.getString(2);
							price = rs.getString(3);
							category = rs.getString(4);
							indexs = rs.getString(5);
							des = rs.getString(6);  
							int rank=rs.getInt(1);
							totalproducts+=1;
							String l_des = des.toLowerCase(); 
							String l_indexs = indexs.toLowerCase(); 
					 
			/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
								//Checking For Exact Match Starts in Indexs
								/*String str="this is an eclipse software to developa programs and developa  developa developa apps.";
								String str1="develop";*/
								int present=0;
								java.util.regex.Pattern pattern=java.util.regex.Pattern.compile(l_keyword+"[^a-z,A-Z]",java.util.regex.Pattern.CASE_INSENSITIVE);
								java.util.regex.Matcher matcher=pattern.matcher(l_indexs);
								if(matcher.find())
								{
										present+=1;
								}
								//Checking For Exact Match Ends in Indexs
												
												
												
								//Checking For Exact Match Starts in Description
								/*String str="this is an eclipse software to developa programs and developa  developa developa apps.";
								String str1="develop";*/
								int present1=0;
								java.util.regex.Pattern pattern1=java.util.regex.Pattern.compile(l_keyword+"[^a-z,A-Z]",java.util.regex.Pattern.CASE_INSENSITIVE);
								java.util.regex.Matcher matcher1=pattern1.matcher(l_des);
								if(matcher1.find())
								{
											present1+=1;
								}
								
								//Checking For Exact Match Ends in Description
					
							if(present>0 || present1>0)
							{
									if(test==1){%>
									<table width="1046" border="2" align="center"  cellpadding="0" cellspacing="0">
									  <tr>
										<td  width="66"  valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style5 style55 style67">Si No. </div></td>
										<td  width="146" valign="middle" style="color: #2c83b0;"><div align="center" class="style5 style55 style67">Product  Image</div></td>
										<td  width="86" valign="middle" style="color: #2c83b0;"><div align="center" class="style5 style55 style67">Title</div></td>
										<td  width="98" valign="middle" style="color: #2c83b0;"><div align="center" class="style5 style55 style67"><strong>Category</strong></div></td>
										<td  width="78" valign="middle" style="color: #2c83b0;"><div align="center" class="style5 style55 style67">Price</div></td>
										<td  width="69" valign="middle" style="color: #2c83b0;"><div align="center" class="style5 style55 style67">Rank</div></td>
										<td  width="197" valign="middle" style="color: #2c83b0;"><div align="center" class="style5 style55 style67">Index</div></td>
										<td  width="197" valign="middle" style="color: #2c83b0;"><div align="center" class="style5 style55 style67">Description</div></td>
										<td  width="87" valign="middle" style="color: #2c83b0;">&nbsp;</td>
									  </tr><%test=2;}
										
									 matched+=1;	
								%>
								
								<tr>
								<td height="112" align="center"  valign="middle"><div align="center" class="style62 style65 style105">
									<%out.println(j);%>
								</div></td>
								<td width="146" rowspan="1" align="center" valign="middle" ><div class="style62 style105" style="margin:10px 13px 10px 13px;" >
									<input  name="image2" type="image" src="images.jsp?imgid=<%=id%>" style="width:100px; height:90px;" />
								</div></td>
								<td width="86" rowspan="1" align="center" valign="middle" ><div align="center" class="style5 style20 style37 style32 style65 style100 style105">
									<p class="style3">
									  <%out.println(title);%>
									</p>
								</div></td>
								<td width="98" rowspan="1" align="center" valign="middle" ><div align="center" class="style5 style20 style37 style32 style65 style100 style105">
									<p class="style3">
									  <%out.println(category);%>
									</p>
								</div></td>
								<td align="center"  valign="middle"><div align="center" class="style5 style20 style37 style32 style65 style100 style105">
									<p class="style3">
									  <%out.println(price);%>
									  Rs/- </p>
								</div></td>
								<td align="center"  valign="middle"><div align="center" class="style5 style20 style37 style32 style65 style100 style105">
									<p class="style3">
									  <%out.println(rank);%>
									</p>
								</div></td>
								<td align="center"  valign="middle"><div align="center" class="style5 style20 style37 style63 style32 style65 style67">
									<textarea name="textarea" cols="30" rows="7"><%out.println(indexs);%>
								  </textarea>
								</div></td>
								<td align="center"  valign="middle"><span class="style5 style20 style37 style63 style32 style65 style67">
								  <textarea name="textarea3" cols="30" rows="7"><%out.println(des);%>
								  </textarea>
								</span></td>
								<td align="center"  valign="middle">
								<form id="form1" name="form1" method="post" action="postrecommend.jsp">
								  <label>
								  <input type="hidden" value=<%=title%> name="title"/>
  								  <input type="hidden" value=<%=category%> name="category"/>
								  <input type="hidden" value=<%=keyword%> name="keyword"/>
 							      <input type="submit" name="Submit" value="Recommend" />
								  </label>
								  </form></td>
							
							  </tr>
								<%		
										
						/*	SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
							SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
							
							Date now = new Date();
							String strDate = sdfDate.format(now);
							
							String strTime = sdfTime.format(now);
							String dt = strDate + "   " + strTime;

							String found="exactly";	   
							String str3 = "insert into postsearch (user,title,category,keyword,found,dt) values('"+uname+"','"+title+"','"+category+"','"+keyword+"','"+found+"','"+dt+"')";
							connection.createStatement().executeUpdate(str3);
							
							*/
							
						j+=1;}		
					
					
							//Relative Matching Starts
							/*String l_des1 = des.toLowerCase(); 
							String l_indexs1 = indexs.toLowerCase(); 
							
							
					//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
					
					String[] sentence=text.split("");
					for(String word:senetece)
						{
							if(word.equals(match))
							{
								
								i+=1;
							}
						}
					*/
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					}
					 /*	String str4 = "insert into productration (keyword,exact,relative,total,dt) values('"+keyword+"','"+matched+"','"+relative+"','"+totalproducts+"','"+dt+"')";
							connection.createStatement().executeUpdate(str4);*/
						%> 
						<table width="880" border="0" cellspacing="2" cellpadding="2">
							  <tr>
								<br/><br/><td width="654"><div align="center"><span class="style104">The Matched Products Ratio is -> <span class="style3 style33">
								   <%out.println(matched);%>
								</span><span class="style33">:
								  <%out.println(totalproducts);%>
								</span></div></td>
							  </tr>
							</table>	
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
        <p align="right" class="style104">&nbsp;</p>
       
        <table width="580" border="0" cellspacing="2" cellpadding="2">
          <tr>
            <td width="572"><div align="right"><a href="SearchProducts.jsp" class="style11 style33"><strong>Back</strong></a></div></td>
          </tr>
        </table>
    </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg">
    <div class="fbg_resize">
      <div class="col c1">
        <h2><span>Image</span> Gallery</h2>
        <a href="#"><img src="images/gal1.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal2.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal3.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal4.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal5.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal6.jpg" width="75" height="75" alt="" class="gal" /></a> </div>
      <div class="col c2">
        <h2>Cluster </h2>
        <p align="justify">          A cluster is a collection of data objects that are similar to one 
          another within the same cluster and are dissimilar to the 
          objects in other clusters. Thus, in essence, the task of clustering 
          approach in clustering CF is to discover domains. 
          Recently, with the development of internet, various contextual 
          information as well as the rating matrix are integrated 
          to discover some meaningful domains, where the typical contexts include item attributes, 
        user trust, social network, and so on.</p>
      </div>
      <div class="col c3">
        <h2>Project Topics </h2>
        <p>Recommender System.</p>
        <p>Matrix Factorization.</p>
        <p> User-Item Subgroup.</p>
        <p>Collaborative Filtering.</p>
        <p>Clustering Collaborative Filtering.</p>
        <p>        Domain Detection Model.</p>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="footer">
    <div class="footer_resize">
      <div style="clear:both;"></div>
    </div>
  </div>
</div>
<div align=center></div>
</body>
</html>
