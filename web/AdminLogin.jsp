<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Admin Login Page..</title>
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
.style21 {color: #0000FF; font-weight: bold; }
.style23 {color: #FF0000; font-size: 12px; font-weight: bold; }
.style94 {font-size: 18px; color: #FF6600; }
.style95 {
	color: #FF0000;
	font-weight: bold;
}
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
      <div class="mainbar">
        <div class="article">
          <h2 class="style18">Welcome To ESeller Login</h2>
          <p class="infopost">&nbsp;</p>
          <div class="clr"></div>
          <div class="img"><img src="images/img2.jpg" width="208" height="174" alt="" class="fl" /></div>
          <div class="post_content">
            <form id="form1" name="form1" method="post" action="AdminAuthentication.jsp">
              <table width="416" border="0" align="left" cellpadding="2" cellspacing="2">
                <tr>
                  <td width="189" height="51" align="center"><span class="style23">
                    <label for="name">Name (required)</label>
                  </span> </td>
                  <td width="184"><input id="name" name="userid" class="text" /></td>
                </tr>
                <tr>
                  <td height="64" align="center"><span class="style23">Password (required)</span></td>
                  <td><input type="password" id="pass" name="pass" class="text" /></td>
                </tr>
                
                <tr>
                  <td height="40"><span class="style95">Select ECommerce Company </span></td>
                  <td><p>
                    <select name="ecom">
                      <option>Amazon</option>
                      <option>eBay</option>
                      <option>Taobao</option>
                    </select>
                  </p>                  </td>
                </tr>
                
                <tr>
                  <td height="86">&nbsp;</td>
                  <td><p>
                    <input name="imageField" type="submit"  class="LOGIN" id="imageField" value="Login" />
                  </p>
                  <p align="center"><a href="index.html" class="style21"> Back</a></p></td>
                </tr>
              </table>
            </form>
          </div>
          <div class="clr"></div>
        </div>
      </div>
      <div class="sidebar">
        <div class="clr"></div>
        <div class="gadget">
          <h2 class="star"><span>Sidebar</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li>
              <p><a href="AdminLogin.jsp">Home</a></p>
              <p><a href="index.html">Index Page</a></p>
            </li>
          </ul>
        </div>
        <div class="gadget"></div>
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
