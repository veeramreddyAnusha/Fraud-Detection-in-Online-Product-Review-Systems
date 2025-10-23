<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Recommending Post to Friends..</title>
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
.style84 {font-size: 12px}
.style86 {color: #FF0000}
.style87 {font-size: 13px}
.style88 {color: #0000FF; font-weight: bold; }
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
          <h2><span class="style33"><span class="style1"><span class="style3">Recommend On  Product <span class="style86"><%= request.getParameter("title")%></span>.. </span></span></span></h2>
          <p class="infopost">&nbsp;</p>
          <div class="clr"></div>
         
			<%@ include file="connect.jsp" %>
			<%
	String title ="",category="",keyword="";
	title = request.getParameter("title");
	category = request.getParameter("category");
	keyword= request.getParameter("keyword");


    
try 
{
	
	
   %>
            <div id="templatemo_right_section">
              <form action="postrecommendstatus.jsp" method="post" id="form1">
                <div align="center" class="style84">
                  <p>&nbsp;</p>
                  <table width="428" border="0">
                    <tr>
                      <td width="113" height="35" bgcolor="#FFFF00"><div align="center" class="style86 style14 style87">
                        <div align="left"><strong>Product Name </strong></div>
                      </div></td>
                      <td width="305"><label>
                        <input type="text" name="title" value="<%=title%>" readonly="readonly" />
						<input type="hidden" value=<%=keyword%> name="keyword"/>
                      </label></td>
                    </tr>
                    <tr>
                      <td height="37" bgcolor="#FFFF00"><div align="center" class="style86 style14 style87">
                        <div align="left"><strong>Category</strong></div>
                      </div></td>
                      <td><label>
                        <input type="text" name="category" value="<%=category%>" readonly="readonly" />
                      </label></td>
                    </tr>
                    <tr>
                      <td height="44" bgcolor="#FFFF00"><div align="center" class="style86 style14 style87">
                        <div align="left"><strong>Recommend To </strong></div>
                      </div></td>
                      <td><select name="recommendto" >
                          <option>select</option>
                          <%


	int uid=0;
	String uuu=null;
	String uname1 = (String)application.getAttribute("uname");
	Statement stmt1=connection.createStatement();
	String strQuery1 = "select username from user where username !='"+uname1+"'";
	ResultSet rs1 = stmt1.executeQuery(strQuery1);
	while(rs1.next())
	{
		//uid = rs1.getInt(1);
		String username = rs1.getString(1);
		
		
		Statement stmt2=connection.createStatement();
		String strQuery2 = "select requestfrom,requestto from frequest where ((requestfrom ='"+uname1+"' and requestto='"+username+"') ||(requestfrom ='"+username+"' and requestto='"+uname1+"'))and status ='Accepted' ";
		ResultSet rs2 = stmt2.executeQuery(strQuery2);
		if(rs2.next())
		{
		
			if(rs2.getString(1).equals(uname1))
			{
				uuu = rs2.getString(2);
			}
			else
			{
				uuu = rs2.getString(1);
			}
%>
                          <option> <%=uuu%></option>
                          <%
		}
	}
%>
                      </select></td>
                    </tr>
                    <tr>
                      <td height="78" bgcolor="#FFFF00"><div align="center" class="style86 style14 style87">
                        <div align="left"><strong>Message</strong></div>
                      </div></td>
                      <td><label>
                      <textarea name="textarea" cols="40" rows="3"></textarea>
                      </label></td>
                    </tr>
                    <tr>
                      <td>&nbsp;</td>
                      <td><label>
                        <input type="submit" name="Submit" value="Recommend" />
                        <%



}

catch(Exception e)
{
out.println(e.getMessage());
}
%>
                      </label></td>
                    </tr>
                  </table>
                  <p>&nbsp;</p>
                  <p><a href="SearchProducts2.jsp?title=<%=title%>&category=<%=category%>&keyword=<%=keyword%>" class="style88">Back</a></p>
                </div>
              </form>
            </div>
            <p>&nbsp;</p>
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
