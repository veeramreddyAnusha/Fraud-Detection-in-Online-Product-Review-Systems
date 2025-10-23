<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>View Negative Sentiment</title>
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
              <td width="1037"><p class="style36 style35 style98">View Negative Sentiment Details.. </p>
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
						String ta1="bad";
String ta2="rubbish";
String t1="abnormal";
String	t2="abolish";
String t3="abominable";
String t4="abominably";
String t5="abominate";
String t6="abomination";
String t7="abort";
String t8="aborted";
String t9="aborts";
String t10="abrade";
String t11="abrasive";
String t12="abrupt";
String t13="abruptly";
String t14="abscond";
String t15="absence";
String t16="absent-minded";
String t17="absentee";
String t18="absurd";
String t19="absurdity";
String t20="absurdly";
String t21="absurdness";

String t22="abused";
String t23="abuses";
String t24="abusive";
String t25="abysmal";
String t26="abysmally";
String t27="abyss";
String t28="accidental";
String t29="accost";
String t30="accursed";
String t31="accusation";
String t32="accusations";
String t33="accuse";
String t34="accuses";
String t35="accusing";
String t36="accusingly";
String t37="acerbate";
String t38="acerbic";
String t39="acerbically";
String t40="ache";
String t41="ached";
String t42="aches";
String t43="achey";
String t44="aching";
String t45="acrid";
String t46="acridly";
String t47="acridness";
String t48="acrimonious";
String t49="acrimoniously";
String t50="acrimony";
String t51="adamant";
String t52="adamantly";
String t53="addict";
String t54="addicted";
String t55="addicting";
String t56="addicts";
String t57="admonish";
String t58="admonisher";
String t59="admonishingly";
String t60="admonishment";
String t61="admonition";
String t62="adulterate";
String t63="adulterated";
String t64="adulteration";
String t65="adulterier";
String t66="adversarial";
String t67="adversary";
String t68="adverse";
String t69="adversity";
String t70="afflict";
String t71="affliction";
String t72="afflictive";
String t73="affront";
String t74="afraid";
String t75="aggravate";
String t76="aggravating";
String t77="aggravation";
String t78="aggression";
String t79="aggressive";
String t80="aggressiveness";
String t81="aggressor";
String t82="aggrieve";
String t83="aggrieved";
String t84="aggrivation";
String t85="aghast";
String t86="agonies";
String t87="agonize";
String t88="agonizing";
String t89="agonizingly";
String t90="agony";
String t91="aground";
String t92="ail";
String t93="ailing";
String t94="ailment";
String t95="aimless";
String t96="alarm";
String t97="alarmed";
String t98="alarming";
String t99="alarmingly";
String t100="alienate";
String t101="alienated";
String t102="alienation";
String t103="allegation";
String t104="allegations";
String t105="allege";
String t106="allergic";
String t107="allergies";
String t108="allergy";
String t109="aloof";
String t110="altercation";
String t111="ambiguity";
String t112="ambiguous";
String t113="ambivalence";
String t114="ambivalent";
String t115="ambush";
String t116="amiss";
String t117="amputate";
String t118="anarchism";
String t119="anarchist";
String t120="anarchistic";
String t121="anarchy";
String t122="anemic";
String t123="anger";
String t124="angrily";
String t125="angriness";
String t126="angry";
String t127="anguish";
String t128="animosity";
String t129="annihilate";
String t130="annihilation";
String t131="annoy";
String t132="annoyance";
String t133="annoyances";
String t134="annoyed";
String t135="annoying";
String t136="annoyingly";
String t137="annoys";
String t138="anomalous";
String t139="anomaly";
String t140="antagonism";
String t141="antagonist";
String t142="antagonistic";
String t143="antagonize";
String t144="anti-american";
String t145="anti-israeli";
String t146="anti-occupation";
String t147="anti-proliferation";
String t148="anti-semites";
String t149="anti-social";
String t150="anti-us";
String t151="anti-white";
String t152="antipathy";
String t153="antiquated";
String t154="antithetical";
String t155="anxieties";
String t156="anxiety";
String t157="anxious";
String t158="anxiously";
String t159="anxiousness";
String t160="apathetic";
String t161="apathetically";
String t162="apathy";
String t163="apocalypse";
String t164="apocalyptic";
String t165="apologist";
String t166="apologists";
String t167="appal";
String t168="appall";
String t169="appalled";
String t170="appalling";
String t171="appallingly";
String t172="apprehension";
String t173="apprehensions";
String t174="apprehensive";
String t175="apprehensively";
String t176="arbitrary";
String t177="arcane";
String t178="archaic";
String t179="arduous";
String t180="arduously";
String t181="argumentative";
String t182="arrogance";
String t183="arrogant";
String t184="arrogantly";
String t185="ashamed";
String t186="asinine";
String t187="asininely";
String t188="asinininity";
String t189="askance";
String t190="asperse";
String t191="aspersion";
String t192="aspersions";
String t193="assail";
String t194="assassin";
String t195="assassinate";
String t196="assault";
String t197="assult";
String t198="astray";
String t199="asunder";
String t200="atrocious";
String t201="atrocities";
String t202="atrocity";
String t203="atrophy";
String t204="attack";
String t205="attacks";
String t206="audacious";
String t207="audaciously";
String t208="audaciousness";
String t209="audacity";
String t210="audiciously";
String t211="austere";
String t212="authoritarian";
String t213="autocrat";
String t214="autocratic";
String t215="avalanche";
String t216="avarice";
String t217="avaricious";
String t218="avariciously";
String t219="avenge";
String t220="averse";
String t221="aversion";
String t222="aweful";
String t223="awful";
String t224="awfully";
String t225="awfulness";
String t226="awkward";
String t227="awkwardness";
String t228="ax";
String t229="babble";
String t230="back-logged";
String t231="back-wood";
String t232="back-woods";
String t233="backache";
String t234="backaches";
String t235="backaching";
String t236="backbite";
String t237="backbiting";
String t238="backward";
String t239="backwardness";
String t240="backwood";
String t241="backwoods";
String t242="bad";
String t243="badly";
String t244="baffle";
String t245="baffled";
String t246="bafflement";
String t247="baffling";
String t248="bait";
String t249="balk";
String t250="banal";
String t251="banalize";
String t252="bane";
String t253="banish";
String t254="banishment";
String t255="bankrupt";
String t256="barbarian";
String t257="barbaric";
String t258="barbarically";
String t259="barbarity";
String t260="barbarous";
String t261="barbarously";
String t262="barren";
String t263="baseless";
String t264="bash";
String t265="bashed";
String t266="bashful";
String t267="bashing";
String t268="bastard";
String t269="bastards";
String t270="battered";
String t271="battering";
String t272="batty";
String t273="bearish";
String t274="beastly";
String t275="bedlam";
String t276="bedlamite";
String t277="befoul";
String t278="beg";
String t279="beggar";
String t280="beggarly";
String t281="begging";
String t282="beguile";
String t283="belabor";
String t284="belated";
String t285="beleaguer";
String t286="belie";
String t287="belittle";
String t288="belittled";
String t289="belittling";
String t290="bellicose";
String t291="belligerence";
String t292="belligerent";
String t293="belligerently";
String t294="bemoan";
String t295="bemoaning";
String t296="bemused";
String t297="bent";
String t298="berate";
String t299="bereave";
String t300="bereavement";
String t301="bereft";
String t302="berserk";
String t303="beseech";
String t304="beset";
String t305="besiege";
String t306="besmirch";
String t307="bestial";
String t308="betray";
String t309="betrayal";
String t310="betrayals";
String t311="betrayer";
String t312="betraying";
String t313="betrays";
String t314="bewail";
String t315="beware";
String t316="bewilder";
String t317="bewildered";
String t318="bewildering";
String t319="bewilderingly";
String t320="bewilderment";
String t321="bewitch";
String t322="bias";
String t323="biased";
String t324="biases";
String t325="bicker";
String t326="bickering";
String t327="bid-rigging";
String t328="bigotries";
String t329="bigotry";
String t330="bitch";
String t331="bitchy";
String t332="biting";
String t333="bitingly";
String t334="bitter";
String t335="bitterly";
String t336="bitterness";
String t337="bizarre";
String t338="blab";
String t339="blabber";
String t340="blackmail";
String t341="blah";
String t342="blame";
String t343="blameworthy";
String t344="bland";
String t345="blandish";
String t346="blaspheme";
String t347="blasphemous";
String t348="blasphemy";
String t349="blasted";
String t350="blatant";
String t351="blatantly";
String t352="blather";
String t353="bleak";
String t354="bleakly";
String t355="bleakness";
String t356="bleed";
String t357="bleeding";
String t358="bleeds";
String t359="blemish";
String t360="blind";
String t361="blinding";
String t362="blindingly";
String t363="blindside";
String t364="blister";
String t365="blistering";
String t366="bloated";
String t367="blockage";
String t368="blockhead";
String t369="bloodshed";
String t370="bloodthirsty";
String t371="bloody";
String t372="blotchy";
String t373="blow";
String t374="blunder";
String t375="blundering";
String t376="blunders";
String t377="blunt";
String t378="blur";
String t379="bluring";
String t380="blurred";
String t381="blurring";

String t382="blurs";
String t383="blurt";
String t384="boastful";
String t385="boggle";
String t386="bogus";
String t387="boil";
String t388="boiling";
String t389="boisterous";
String t390="bomb";
String t391="bombard";
String t392="bombardment";
String t393="bombastic";
String t394="bondage";
String t395="bonkers";
String t396="bore";
String t397="bored";
String t398="boredom";
String t399="bores";
String t400="boring";
String t401="botch";
String t402="bother";
String t403="bothered";
String t404="bothering";
String t405="bothers";
String t406="bothersome";
String t407="bowdlerize";
String t408="boycott";
String t409="braggart";
String t410="bragger";
String t411="brainless";
String t412="brainwash";
String t413="brash";
String t414="brashly";
String t415="brashness";
String t416="brat";
String t417="bravado";
String t418="brazen";
String t419="brazenly";
String t420="brazenness";
String t421="breach";
String t422="break";
String t423="break-up";
String t424="break-ups";
String t425="breakdown";
String t426="breaking";
String t427="breaks";
String t428="breakup";
String t429="breakups";
String t430="bribery";
String t431="brimstone";
String t432="bristle";
String t433="brittle";
String t434="broke";
String t435="broken";
String t436="broken-hearted";
String t437="brood";
String t438="browbeat";
String t439="bruise";
String t440="bruised";
String t441="bruises";
String t442="bruising";
String t443="brusque";
String t444="brutal";
String t445="brutalising";
String t446="brutalities";
String t447="brutality";
String t448="brutalize";
String t449="brutalizing";
String t450="brutally";
String t451="brute";
String t452="brutish";
String t453="bs";
String t454="buckle";
String t455="bug";
String t456="bugging";
String t457="buggy";
String t458="bugs";
String t459="bulkier";
String t460="bulkiness";
String t461="bulky";
String t462="bulkyness";
String t463="bull";
String t464="bullies";
String t465="bullshit";
String t466="bullshyt";
String t467="bully";
String t468="bullying";
String t469="bullyingly";
String t470="bum";
String t471="bump";
String t472="bumped";
String t473="bumping";
String t474="bumpping";
String t475="bumps";
String t476="bumpy";
String t478="bungle";
String t479="bungler";
String t480="bungling";
String t481="bunk";
String t482="burden";
String t483="burdensome";
String t484="burdensomely";
String t485="burn";
String t486="burned";
String t487="burning";
String t488="burns";
String t489="bust";
String t491="busybody";
String t492="butcher";
String t493="butchery";
String t494="buzzing";
String t495="byzantine";
String t496="blurry";
String t497="abuse";
						
						
							
							String ecom=(String)application.getAttribute("ecom");
							
							String rby="",s3,s4,s5="",s6,s7;
							int i=0,j=1;
						   	String query="select * from userreviews  where ecompany='"+ecom+"' "; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
								i=rs.getInt(1);
								rby=rs.getString(2);
								s5=rs.getString(3);								
								String pname= rs.getString(4);
								String pid= rs.getString(5);
								String dt= rs.getString(6);
								ecom= rs.getString(7);
								
								 if (s5.indexOf(ta1)>=0 || s5.indexOf(ta2)>=0 
					  || s5.indexOf(t1)>=0 || s5.indexOf(t2)>=0 || s5.indexOf(t3)>=0  || s5.indexOf(t4)>=0  || s5.indexOf(t5)>=0 
					 || s5.indexOf(t6)>=0	|| s5.indexOf(t7)>=0 || s5.indexOf(t8)>=0 || s5.indexOf(t9)>=0 || s5.indexOf(t10)>=0  
					 || s5.indexOf(t11)>=0	|| s5.indexOf(t12)>=0 || s5.indexOf(t13)>=0 || s5.indexOf(t14)>=0 || s5.indexOf(t15)>=0  
					 || s5.indexOf(t16)>=0	|| s5.indexOf(t17)>=0 || s5.indexOf(t18)>=0 || s5.indexOf(t19)>=0 || s5.indexOf(t20)>=0 
					 || s5.indexOf(t21)>=0	|| s5.indexOf(t22)>=0 || s5.indexOf(t23)>=0 || s5.indexOf(t24)>=0 || s5.indexOf(t25)>=0
					 || s5.indexOf(t26)>=0	|| s5.indexOf(t27)>=0 || s5.indexOf(t28)>=0 || s5.indexOf(t29)>=0 || s5.indexOf(t30)>=0
					 || s5.indexOf(t31)>=0	|| s5.indexOf(t32)>=0 || s5.indexOf(t33)>=0 || s5.indexOf(t34)>=0 || s5.indexOf(t35)>=0
					 || s5.indexOf(t36)>=0	|| s5.indexOf(t37)>=0 || s5.indexOf(t38)>=0 || s5.indexOf(t39)>=0 || s5.indexOf(t40)>=0
					 || s5.indexOf(t41)>=0	|| s5.indexOf(t42)>=0 || s5.indexOf(t43)>=0 || s5.indexOf(t44)>=0 || s5.indexOf(t45)>=0
					 || s5.indexOf(t46)>=0	|| s5.indexOf(t47)>=0 || s5.indexOf(t48)>=0 || s5.indexOf(t49)>=0 || s5.indexOf(t50)>=0
					 || s5.indexOf(t51)>=0	|| s5.indexOf(t52)>=0 || s5.indexOf(t53)>=0 || s5.indexOf(t54)>=0 || s5.indexOf(t55)>=0
					 || s5.indexOf(t56)>=0	|| s5.indexOf(t57)>=0 || s5.indexOf(t58)>=0 || s5.indexOf(t59)>=0 || s5.indexOf(t60)>=0
					 || s5.indexOf(t61)>=0	|| s5.indexOf(t62)>=0 || s5.indexOf(t63)>=0 || s5.indexOf(t64)>=0 || s5.indexOf(t65)>=0
					 || s5.indexOf(t66)>=0	|| s5.indexOf(t67)>=0 || s5.indexOf(t68)>=0 || s5.indexOf(t69)>=0 || s5.indexOf(t70)>=0
					 || s5.indexOf(t71)>=0	|| s5.indexOf(t72)>=0 || s5.indexOf(t73)>=0 || s5.indexOf(t74)>=0 || s5.indexOf(t75)>=0
					 || s5.indexOf(t76)>=0	|| s5.indexOf(t77)>=0 || s5.indexOf(t78)>=0 || s5.indexOf(t79)>=0 || s5.indexOf(t80)>=0
					 || s5.indexOf(t81)>=0	|| s5.indexOf(t82)>=0 || s5.indexOf(t83)>=0 || s5.indexOf(t84)>=0 || s5.indexOf(t85)>=0
					 || s5.indexOf(t86)>=0	|| s5.indexOf(t87)>=0 || s5.indexOf(t88)>=0 || s5.indexOf(t89)>=0 || s5.indexOf(t90)>=0
					 || s5.indexOf(t91)>=0	|| s5.indexOf(t92)>=0 || s5.indexOf(t93)>=0 || s5.indexOf(t94)>=0 || s5.indexOf(t95)>=0
					 || s5.indexOf(t96)>=0	|| s5.indexOf(t97)>=0 || s5.indexOf(t98)>=0 || s5.indexOf(t99)>=0 || s5.indexOf(t100)>=0
					 || s5.indexOf(t101)>=0 || s5.indexOf(t102)>=0 || s5.indexOf(t103)>=0 || s5.indexOf(t104)>=0 || s5.indexOf(t105)>=0 
					 || s5.indexOf(t106)>=0	|| s5.indexOf(t107)>=0 || s5.indexOf(t108)>=0 || s5.indexOf(t109)>=0 || s5.indexOf(t110)>=0  
					 || s5.indexOf(t111)>=0	|| s5.indexOf(t112)>=0 || s5.indexOf(t113)>=0 || s5.indexOf(t114)>=0 || s5.indexOf(t115)>=0  
					 || s5.indexOf(t116)>=0	|| s5.indexOf(t117)>=0 || s5.indexOf(t118)>=0 || s5.indexOf(t119)>=0 || s5.indexOf(t120)>=0 
					 || s5.indexOf(t121)>=0	|| s5.indexOf(t122)>=0 || s5.indexOf(t123)>=0 || s5.indexOf(t124)>=0 || s5.indexOf(t125)>=0
					 || s5.indexOf(t126)>=0	|| s5.indexOf(t127)>=0 || s5.indexOf(t128)>=0 || s5.indexOf(t129)>=0 || s5.indexOf(t130)>=0
					 || s5.indexOf(t131)>=0	|| s5.indexOf(t132)>=0 || s5.indexOf(t133)>=0 || s5.indexOf(t134)>=0 || s5.indexOf(t135)>=0
					 || s5.indexOf(t136)>=0	|| s5.indexOf(t137)>=0 || s5.indexOf(t138)>=0 || s5.indexOf(t139)>=0 || s5.indexOf(t140)>=0
					 || s5.indexOf(t141)>=0	|| s5.indexOf(t142)>=0 || s5.indexOf(t143)>=0 || s5.indexOf(t144)>=0 || s5.indexOf(t145)>=0
					 || s5.indexOf(t146)>=0	|| s5.indexOf(t147)>=0 || s5.indexOf(t148)>=0 || s5.indexOf(t149)>=0 || s5.indexOf(t150)>=0
					 || s5.indexOf(t151)>=0	|| s5.indexOf(t152)>=0 || s5.indexOf(t153)>=0 || s5.indexOf(t154)>=0 || s5.indexOf(t155)>=0
					 || s5.indexOf(t156)>=0	|| s5.indexOf(t157)>=0 || s5.indexOf(t158)>=0 || s5.indexOf(t159)>=0 || s5.indexOf(t160)>=0
					 || s5.indexOf(t161)>=0	|| s5.indexOf(t162)>=0 || s5.indexOf(t163)>=0 || s5.indexOf(t164)>=0 || s5.indexOf(t165)>=0
					 || s5.indexOf(t166)>=0	|| s5.indexOf(t167)>=0 || s5.indexOf(t168)>=0 || s5.indexOf(t169)>=0 || s5.indexOf(t70)>=0
					 || s5.indexOf(t171)>=0	|| s5.indexOf(t172)>=0 || s5.indexOf(t173)>=0 || s5.indexOf(t174)>=0 || s5.indexOf(t175)>=0
					 || s5.indexOf(t176)>=0	|| s5.indexOf(t177)>=0 || s5.indexOf(t178)>=0 || s5.indexOf(t179)>=0 || s5.indexOf(t180)>=0
					 || s5.indexOf(t181)>=0	|| s5.indexOf(t182)>=0 || s5.indexOf(t183)>=0 || s5.indexOf(t184)>=0 || s5.indexOf(t185)>=0
					 || s5.indexOf(t186)>=0	|| s5.indexOf(t187)>=0 || s5.indexOf(t188)>=0 || s5.indexOf(t189)>=0 || s5.indexOf(t190)>=0
					 || s5.indexOf(t191)>=0	|| s5.indexOf(t192)>=0 || s5.indexOf(t193)>=0 || s5.indexOf(t194)>=0 || s5.indexOf(t195)>=0
					 || s5.indexOf(t196)>=0	|| s5.indexOf(t197)>=0 || s5.indexOf(t198)>=0 || s5.indexOf(t199)>=0 || s5.indexOf(t200)>=0
					 || s5.indexOf(t201)>=0 || s5.indexOf(t202)>=0 || s5.indexOf(t203)>=0 || s5.indexOf(t204)>=0 || s5.indexOf(t205)>=0 
					 || s5.indexOf(t206)>=0	|| s5.indexOf(t207)>=0 || s5.indexOf(t208)>=0 || s5.indexOf(t209)>=0 || s5.indexOf(t210)>=0  
					 || s5.indexOf(t211)>=0	|| s5.indexOf(t212)>=0 || s5.indexOf(t213)>=0 || s5.indexOf(t214)>=0 || s5.indexOf(t215)>=0  
					 || s5.indexOf(t216)>=0	|| s5.indexOf(t217)>=0 || s5.indexOf(t218)>=0 || s5.indexOf(t219)>=0 || s5.indexOf(t220)>=0 
					 || s5.indexOf(t221)>=0	|| s5.indexOf(t222)>=0 || s5.indexOf(t223)>=0 || s5.indexOf(t224)>=0 || s5.indexOf(t225)>=0
					 || s5.indexOf(t226)>=0	|| s5.indexOf(t227)>=0 || s5.indexOf(t228)>=0 || s5.indexOf(t229)>=0 || s5.indexOf(t230)>=0
					 || s5.indexOf(t231)>=0	|| s5.indexOf(t232)>=0 || s5.indexOf(t233)>=0 || s5.indexOf(t234)>=0 || s5.indexOf(t235)>=0
					 
			 )  {
								


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
                      <%out.println(s5);%>
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
