<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Searching Products..</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<link href="style1.css" rel="stylesheet" type="text/css" />
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
.style84 {color: #009900}
.style87 {
	color: #0000FF;
	font-size: 13px;
	font-weight: bold;
}
.style88 {
	font-size: 14px;
	color: #000000;
}
.style92 {font-size: 13px; color: #FF3300; }
.style95 {color: #0066FF; font-size: 12px; }
.style96 {color: #FF00FF; font-size: 25px; }
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
          <h2><span class="style33"><span class="style1"><span class="style3">Exactly Matched  Products.. </span></span><span class="style3"></span></span></h2>
          <p class="infopost">&nbsp;</p>
          <div class="clr"></div>
      <table>
               <%@ include file="connect.jsp" %>
          <%@ page import="java.io.*"%>
          <%@ page import="java.util.*,java.util.Set" %>
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
								
									SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
									SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
									
									Date now = new Date();
									String strDate = sdfDate.format(now);
									
									String strTime = sdfTime.format(now);
									String dt = strDate + "   " + strTime;			
											
					l_keyword = keyword.toLowerCase();
					Set s= new HashSet();
					Set s1= new HashSet();
					int test=1,j=1;
					int totalproducts=0,matched=0;
					Set<String> set=new HashSet<String>();
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
							String l_des = des.toLowerCase(); 
							String l_indexs = indexs.toLowerCase(); 
					 
						 	
			/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
								//Checking For Exact Match Starts in Indexs
								/*String str="this is an eclipse software to developa programs and developa  developa developa apps.";
								String str1="develop";*/
								int present=0,present1=0,present2=0;
								java.util.regex.Pattern pattern=java.util.regex.Pattern.compile(l_keyword+"[^a-z,A-Z]",java.util.regex.Pattern.CASE_INSENSITIVE);
								java.util.regex.Matcher matcher=pattern.matcher(l_indexs);
								if(matcher.find())
								{
										set.add(title);
										present=1;
										
								}
								//Checking For Exact Match Ends in Indexs
												
							
												
								//Checking For Exact Match Starts in Description
								/*String str="this is an eclipse software to developa programs and developa  developa developa apps.";
								String str1="develop";*/
								java.util.regex.Pattern pattern1=java.util.regex.Pattern.compile(l_keyword+"[^a-z,A-Z]",java.util.regex.Pattern.CASE_INSENSITIVE);
								java.util.regex.Matcher matcher1=pattern1.matcher(l_des);
								if(matcher1.find())
								{
											set.add(title);
											present1=1;
								}
								//Checking For Exact Match Ends in Description
								
								
							//Matching Each Separate Word Starts
							String[] sentence=l_keyword.split(" ");
							if(sentence.length>1)
							{
									for(String word:sentence)
									{
										if(l_indexs.contains(word)||l_des.contains(word))
										{
											set.add(title);
											present2=1;
										}
									}
							}
							//Matching Each Separate Word End
					
					
							if(present>0 || present1>0 || present2>0)
							{
									
									
											   
									String str21 = "insert into matchfound (user,title,category,keyword,dt) values('"+uname+"','"+title+"','"+category+"','"+keyword+"','"+dt+"')";
									connection.createStatement().executeUpdate(str21);
									%>
									<figure>
									<img height="100" width="120" src="images.jsp?imgid=<%=id%>"/>
										<div id="container">
											<figcaption>
												<p align="center"><span class="style92">Category<span class="style95">:<%=category%></span></span><br/>
												<span class="style92"> Title<span class="style95">:<%=title%></span></span></p>
												<p align="center"><a href="ViewSearchPost.jsp?title=<%=title%>&amp;category=<%=category%>&keyword=<%=keyword%>" class="style87">View Details</a> <br/>
											</figcatption>
										</div>
									</figure>
							
								<%
							}
							
								}
						
						
					%>
				</p>
		  </table>
						
          
            <p>&nbsp;</p>
            <div class="clr">
              <div align="right"><a href="SearchProducts.jsp" class="style11 style33 style88"><strong>Back</strong></a></div>
          </div>
        </div>
       
        <div class="article">
          <h2 class="style96">Searched Item:: Unmatched Products.. </h2>
          <p class="infopost">&nbsp;</p><%
		 
		  ArrayList al2=new ArrayList();
		  for(String ss:set)
		  {
					
					String str6 = "select category from products where title='"+ss+"'";
					Statement st6=connection.createStatement();
					ResultSet rs6 = st6.executeQuery(str6);
					if(rs6.next())
					{
							//int id1=rs6.getInt(1);
							String category1 = rs6.getString(1);
							if(al2.contains(category1))
							{}
							else
							{
								al2.add(category1);
							}
					}
			}
			Set<String> set1=new HashSet<String>();
 			for(int q=0;q<al2.size();q++)
			{
				 /* for(String ss1:set)
		 		  {*/
						String str8 = "select title from products where category='"+al2.get(q)+"'";// and title!='"+ss1+"'";
						Statement st8=connection.createStatement();
						ResultSet rs8 = st8.executeQuery(str8);
						while(rs8.next())
						{
								set1.add(rs8.getString(1));	
									
						}

					//}
			}
				 for(String ss2:set)//Exact matched title
		 		 {
						boolean tr=set1.contains(ss2);
						
						if(tr==true)
						{
							set1.remove(ss2);
						}
					}
					
					for(String ss3:set1)//Relative matched title
		 			{
					 
					 	
						String str9 = "select id,category from products where title='"+ss3+"' order by category DESC";
						Statement st9=connection.createStatement();
						ResultSet rs9 = st9.executeQuery(str9);
						if(rs9.next())
						{
							int id1=rs9.getInt(1);
							String category2 = rs9.getString(2);
								
								String str22= "insert into subgroupfound (user,title,category,keyword,dt) values('"+uname+"','"+ss3+"','"+category2+"','"+keyword+"','"+dt+"')";
									connection.createStatement().executeUpdate(str22);
								%><figure>
									<img height="100" width="120" src="images.jsp?imgid=<%=id1%>"/>
										<div id="container">
											<figcaption>
												<p align="center"><span class="style92">Category<span class="style95">:<%=category2%></span></span><br/>
												<span class="style92"> Title<span class="style95">:<%=ss3%></span></span></p>
												<p align="center"><a href="ViewSearchPost.jsp?title=<%=ss3%>&amp;category=<%=category2%>&keyword=<%=keyword%>" class="style87">View Details</a> <br/>
											</figcatption>
										</div>
								</figure>
							
							<%
							}
						}
						
							}connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}%>
          <div class="clr"></div>
  
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
          <ul class="sb_menu"><li><a href="SearchProducts.jsp">Home</a></li>
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
