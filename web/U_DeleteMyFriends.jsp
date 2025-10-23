<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Deleting User Friends..</title>
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
.style34 {font-size: 18px; color: #00FF00; }
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
.style50 {color: #FF0000;
	font-size: 13.5px;
	font-weight: bold;
}
.style52 {font-size: 12px}
.style70 {font-size: 13.5px}
.style86 {font-size: 25px}
.style88 {
	color: #0000FF;
	font-weight: bold;
}
.style90 {color: #FF00FF; font-weight: bold; font-size: 13px; }
.style92 {color: #42ac1f}
.style93 {color: #FF0000}
.style94 {
	font-size: 10px;
	font-weight: bold;
	color: #FF0000;
}
.style95 {font-size: 18px; color: #FF6600; }
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
        <p class="style17"><span class="style95">Fraud Detection in Online Product Review Systems via Heterogeneous Graph Transformer</span></p>
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
          <table width="888" border="0" cellspacing="2" cellpadding="2">
            <tr>
              <td width="880"><p class="style18"><span class="style30 style46 style31 style86"><strong> User <span class="style92"><%=(String)application.getAttribute("uname")%></span> Deleting His Friends..</strong></span></p>
                <p class="infopost">&nbsp;</p>                
              </td>
            </tr>
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@ page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page import="java.util.Date" %>
          </table>
          <ul class="sb_menu"><li><table width="1025" align="center">
                <tr>
                  <td width="60" height="47" align="center" valign="middle" bgcolor="#FFFF00"><div align="center" class="style33 style49 style93"><span class="style3 ">Si No. </span></div></td>
                  <td width="104" align="center" valign="middle" bgcolor="#FFFF00"><div align="center" class="style36 style70 style93"><strong>Friend Image</strong></div></td>
                  <td width="152" align="center" valign="middle" bgcolor="#FFFF00"><div align="center" class="style36 style70 style93"><strong>Friend Name </strong></div></td>
                  <td width="142" align="center" valign="middle" bgcolor="#FFFF00"><div align="center" class="style34 style50"><span class="style93 style70"><strong>E-mail</strong></span></div></td>
                  <td width="120" align="center" valign="middle" bgcolor="#FFFF00"><div align="center" class="style38 style70 style93"><strong><span class="style3 ">Phone No. </span></strong></div></td>
                  <td width="106" align="center" valign="middle" bgcolor="#FFFF00"><div align="center" class="style38 style70 style93"><strong>DOB</strong></div></td>
				  <td width="113" align="center" valign="middle" bgcolor="#FFFF00"><div align="center" class="style38 style70 style93"><strong>Address</strong></div></td>
				  <td width="192" align="center" valign="middle">&nbsp;</td>
                </tr>
                <%
 
      	
	      String s1,s2,s3,s4,s5,s6,s7,user1="";
						int i=0,j=1;
						try 
						{
					
							String user=(String)application.getAttribute("uname");
						   	String query="select *  from user where username!='"+user+"'"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
									i=rs.getInt(1);
									s2=rs.getString(2);
										//String i=rs.getInt(1);;
										String email=rs.getString(4);
										String phone=rs.getString(5);										
										String address=rs.getString(6);	
										String dob=rs.getString(7);	

									Statement stmt9=connection.createStatement();
									String strQuery9 = "select requestfrom,requestto from frequest where ((requestfrom ='"+user+"' and requestto='"+s2+"') ||(requestfrom ='"+s2+"' and requestto='"+user+"'))and status ='Accepted' ";
									ResultSet rs9 = stmt9.executeQuery(strQuery9);
									if(rs9.next()==true)
									{
								
																			
												%>
		
                <tr>
                  <td height="155"><div align="center" class="style90"><%=j%></div></td>
                  <td><div align="center" class="style48 style52 style18">
                      <input  name="image" type="image" src="user_Pic.jsp?id=<%=i%>" width="100" height="100" alt="Submit" />
                  </div></td>
                  <td><div align="center" class="style90"><%=s2 %></div></td>
                  <td><div align="center" class="style90"><%=email %></div></td>
                  <td><div align="center" class="style90"><%=phone%></div></td>
                  <td><div align="center" class="style90"><%=dob%></div></td>
				  <td><div align="center" class="style90"><%=address%></div></td>
				  <td><form id="form1" name="form1" method="post" action="U_DeleteMyFriends.jsp">
				    <label>
					<div align="center">
					  <input type="hidden" value=<%=s2%> name="delete"/>
					  <textarea name="textarea" cols="30" rows="2"></textarea>
					  <br />
					  <span class="style94">(Reason is Mandatory to Delete)					</span><br />
					  </div>
				    </label>
				    <div align="center">
				      <input type="submit" name="Submit" value="Remove" />
				      </div>
				  </form>				  </td>
                </tr>
                <%
		  j+=1;}
	 
		
	   }
	  						SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
							SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
							
							Date now = new Date();
							String strDate = sdfDate.format(now);
							
							String strTime = sdfTime.format(now);
							String dt = strDate + "   " + strTime;
	  
	   String username="no",reason="";
	   username=request.getParameter("delete");
	   reason=request.getParameter("textarea");
	   if(!username.equals("no")&&!reason.equals(""))
	   {
	   String query2="insert into frienddelete(deleteby,deleteto,reason,dt)values('"+user+"','"+username+"','"+reason+"','"+dt+"')";
	   Statement st2=connection.createStatement();
	   st2.executeUpdate(query2);
	   
	  
	   String query1="delete from frequest where (requestfrom='"+user+"' and requestto='"+username+"') ||(requestfrom='"+username+"' and requestto='"+user+"')";
	   Statement st1=connection.createStatement();
	   st1.executeUpdate(query1);
		response.sendRedirect("U_DeleteMyFriends.jsp");
		}
           connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>
              </table>
            </li>
            <li></li>
          </ul>
          <table width="456" border="0" cellspacing="2" cellpadding="2">
            <tr>
              <td width="448" height="80"><div align="right">
                <p><a href="UserMain.jsp" class="style88">Back</a></p>
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
