<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Product Consumes By Friends..</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link href="circle.css" rel="stylesheet" type="text/css" />
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
.style35 {
	font-size: 25px;
	color: #FF00FF;
}
.style98 {font-size: 28px}
.style105 {
	color: #000000;
	font-weight: bold;
}
.style92 {color: #FF0000; font-weight: bold; font-size: 14px; }
.style106 {color: #006600}
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
          <table width="940" border="0" cellspacing="2" cellpadding="2">
            <tr>
              <td width="932"><p class="style36 style35 style98">Products Consumed  by <span class="star style35">Friends</span> based on Likes and Recommends..</p>
                <p class="infopost">&nbsp;</p>              </td>
            </tr>
          </table>
		 	  <%@ include file="connect.jsp" %>
              <%@ page import="java.io.*"%>
              <%@ page import="java.util.*" %>
              <%@ page import="java.util.Date" %>
              <%@ page import="com.oreilly.servlet.*"%>
          
		  <%
			String user=(String)application.getAttribute("uname");
      		 Set <String>set=new HashSet<String>();
			   String query="select distinct(title) FROM likes where user!='"+user+"'"; 
			   Statement st=connection.createStatement();
			   ResultSet rs=st.executeQuery(query);
			   while ( rs.next() )
			   {
					String title=rs.getString(1);
				
			   
						 String query2="select distinct(user) FROM likes where title='"+title+"'"; 
						   Statement st2=connection.createStatement();
						   ResultSet rs2=st2.executeQuery(query2);
						   while ( rs2.next() )
						   {
								String friend=rs2.getString(1);
							
						  
								String query1="select * from frequest where  (requestfrom='"+user+"' and requestto='"+friend+"')|| (requestfrom='"+friend+"' and requestto='"+user+"') && status='Accepted'";
								Statement st1=connection.createStatement();
								ResultSet rs1=st1.executeQuery(query1);
							   if ( rs1.next() )
							   {
									// String query11="select distinct(title) FROM likes where user='"+friend+"'"; 
								 	//  Statement st11=connection.createStatement();
								  	// ResultSet rs11=st11.executeQuery(query11);
								  	// while ( rs11.next() )
								  	// {
											set.add(rs.getString(1));
									
								  	// }
								}
				  
				  		 }
				 }
				  
	   
		
		%>
		  <table width="941" border="0" cellspacing="2" cellpadding="2">
             <tr>
               <td width="933" height="91">
			   <form action="U_FriendConsume.jsp" method="post">
                 <div align="left"></div>
                 <table width="381" border="0" align="left">
                   <tr>
                     <td width="204" height="33"><div align="justify" class="style92">
                         <div align="center"><span class="style3">Select  Product </span> </div>
                     </div></td>
                     <td width="167"><label>
                         <div align="left">
                           <select id="s1" name="title" style="width:150px">
                             <option>--Select--</option>
                             <% 
							for(String ss:set)
							{
							 
								 %>
                             <option><%= ss%></option>
                             <%
							}
							%>
                           </select>
						    <%String d1="likes";%>
						   <input type="hidden" value=<%=d1%>  name="option"/>
                         </div>
                      </label></td>
                   </tr>
                   <tr>
                     <td height="99" colspan="2"><div align="center">
                         <input type="submit" name="Submit" value="View Liked Friends" />
                     </div></td>
                   </tr>
                 </table>
				 </form>
				<%
				Set <String>set1=new HashSet<String>();

			 String query3="select distinct(recommendfrom) FROM productrecommend where recommendfrom!='"+user+"'"; 
			   Statement st3=connection.createStatement();
			   ResultSet rs3=st3.executeQuery(query3);
			   while ( rs3.next() )
			   {
					String friend1=rs3.getString(1);
				
			   
					String query4="select * from frequest where ( (requestfrom='"+user+"' and requestto='"+friend1+"')|| (requestfrom='"+friend1+"' and requestto='"+user+"')) && status='Accepted'";
					Statement st4=connection.createStatement();
					ResultSet rs4=st4.executeQuery(query4);
				   if ( rs4.next() )
				   {
						 String query5="select distinct(title) FROM productrecommend where recommendfrom='"+friend1+"'"; 
						   Statement st5=connection.createStatement();
						   ResultSet rs5=st5.executeQuery(query5);
						   while ( rs5.next() )
						   {
								set1.add(rs5.getString(1));
							
						   }
					
				   }
				 }%>
				 <form action="U_FriendConsume.jsp" method="post">
                 <table width="400" border="0" align="center">
                   <tr>
                     <td width="208" height="33"><div align="justify" class="style92">
                         <div align="center"><span class="style3">Select  Product </span> </div>
                     </div></td>
                     <td width="182"><label>
                         <div align="left">
                          <select id="s1" name="title" style="width:150px">
                             <option>--Select--</option>
                             <% 
							for(String ss1:set1)
							{
							 
								 %>
                             <option><%= ss1%></option>
                             <%
							}
							%>
                           </select>
						   <%String d="recommend";%>
						   <input type="hidden" value=<%=d%>  name="option"/>
                         </div>
                      </label></td>
                   </tr>
                   <tr>
                     <td height="99" colspan="2"><div align="center">
                         <input type="submit" name="Submit2" value="View Recommended Friends" />
                     </div></td>
                   </tr>
                 </table> </form>
               </td>
             </tr>
          </table>
		   <p>&nbsp;</p>
		   <table width="956" border="0" cellspacing="2" cellpadding="2">
                <tr>
                  <td width="948"><div align="right"><a href="UserMain.jsp" class="style105">Back</a></div></td>
                </tr>
          </table>
		   
           <table width="941" border="0" cellspacing="2" cellpadding="2">
             
             <tr>
               <td width="471" height="79"><%
					  
						
						try 
						{
						
							String title6=request.getParameter("title");
							String option=request.getParameter("option");
							if(option.equals("likes"))
							{
							
							%>  <div align="right">
                 <p class="star style35">Liked Friends on Post '<span class="style106"><%=request.getParameter("title")%></span>'</p>
                 <p class="star style35">&nbsp;</p>
               </div>
                 <table  width="409" border="0" align="center" cellpadding="2" cellspacing="2">
                   <tr>
                     <td width="401"><div class="templatemo_h_line">
                         <div align="center" id="circle2">
                           <div align="center">
                             <%
					  
						
						
							int loop7=2;
							String query6="select distinct(user) from likes where title='"+title6+"'"; 
						   	Statement st6=connection.createStatement();
						   	ResultSet rs6=st6.executeQuery(query6);
					   		while ( rs6.next() )
					   		{

									String username6=rs6.getString(1);
									
								String query8="select * from frequest where  ((requestfrom='"+user+"' and requestto='"+username6+"')|| (requestfrom='"+username6+"' and requestto='"+user+"')) && status='Accepted'";
								Statement st8=connection.createStatement();
								ResultSet rs8=st8.executeQuery(query8);
							   if ( rs8.next() )
							   {
									
									String query7="select id from user where username='"+username6+"'"; 
									Statement st7=connection.createStatement();
									ResultSet rs7=st7.executeQuery(query7);
									if ( rs7.next() )
									{
											int id7=rs7.getInt(1);
											if(loop7%2==0)
										   {
												%>
                             <br/>
                             <%
									   
									   }
             
		      %>
                             <a href="U_ConsumerProfile.jsp?username=<%=username6%>&amp;title=<%=title6%>&amp;option=<%=option%>"><img src="user_Pic.jsp?id=<%=id7%>" width="82" height="75" alt="" class="gal" id="circle" /></a>
                             <%
               		
      							} 	loop7++;
					}
			
					}
					
					
					%>
                           </div>
                         </div>
                     </div></td>
                   </tr>
                 </table></td>
               <td width="456"><%}else{%>   <div align="center">
                 <p class="star style35"><span class="style36 style35 style98">Friends Recommends</span> on Post '<span class="style106"><%=request.getParameter("title")%></span>'</p>
                 <p class="star style35">&nbsp;</p>
               </div>
               <table  width="409" border="0" align="center" cellpadding="2" cellspacing="2">
                   <tr>
                     <td width="401"><div class="templatemo_h_line">
                         <div align="center" id="circle3">
                           <div align="center">
                             <%
					  
						
						
							
							int loop71=2;
							String query61="select distinct(recommendfrom) from productrecommend where title='"+title6+"'"; 
						   	Statement st61=connection.createStatement();
						   	ResultSet rs61=st61.executeQuery(query61);
					   		while ( rs61.next() )
					   		{

									String username61=rs61.getString(1);
									
								String query81="select * from frequest where  ((requestfrom='"+user+"' and requestto='"+username61+"')|| (requestfrom='"+username61+"' and requestto='"+user+"')) && status='Accepted'";
								Statement st81=connection.createStatement();
								ResultSet rs81=st81.executeQuery(query81);
							   if ( rs81.next() )
							   {
									
									String query71="select id from user where username='"+username61+"'"; 
									Statement st71=connection.createStatement();
									ResultSet rs71=st71.executeQuery(query71);
									if ( rs71.next() )
									{
											int id71=rs71.getInt(1);
											if(loop71%2==0)
										   {
												%>
                             <br/>
                             <%
									   
									   }
             
		      %>
                             <a href="U_ConsumerProfile.jsp?username=<%=username61%>&amp;title=<%=title6%>&amp;option=<%=option%>"><img src="user_Pic.jsp?id=<%=id71%>" width="82" height="75" alt="" class="gal" id="circle" /></a>
                             <%
               		
      							} 	loop71++;
					}
			
					}
				}
					
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
                           </div>
                         </div>
                     </div></td>
                   </tr>
                 </table></td>
             </tr>
           </table>
         
        
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
