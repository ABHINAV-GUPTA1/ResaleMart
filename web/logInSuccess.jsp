<!DOCTYPE html>
<%@include file="secure-jsp.jsp" %>
<!--
Author: ABHINAV GUPTA
Author URL: http://ABHINAVGUPTA.COM
-->
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<html dir="ltr" lang="en-US">
<%
/*if(session.getAttribute("email")==null)
    response.sendRedirect("login.jsp");*/
String email=session.getAttribute("email").toString();
String bio="",about="",l_info="",l_info1="",regdate="",pic="",viewed="";
try{
    %><%@include file="dbConnection.jsp" %>
    <%PreparedStatement smt = (PreparedStatement) con.prepareStatement("select * from resale1 a join loginfo b on a.email=b.email where a.email=?");
    smt.setString(1,email);
    ResultSet rs=smt.executeQuery();
    if(rs.next()){
        bio=rs.getString("bio");
        about=rs.getString("about");
        l_info=rs.getString("done");
        l_info1=rs.getString("lastsignin");
        regdate=rs.getString("dateofreg");
        pic=rs.getString("pic");
        try{
            PreparedStatement smt1=con.prepareStatement("select count(viewed) from message where to5=? and viewed=?");
            smt1.setString(1,email);
            smt1.setString(2,"0");
            ResultSet rs1=smt1.executeQuery();
            if(rs1.next())
                viewed=rs1.getString(1);
            request.getSession().setAttribute("msg_view", viewed);
        }catch(Exception e){}
    }else{
        out.println("Username doesnot exist");
    }
    smt.close();
    rs.close();
    con.close();
}
catch(Exception e)
{
    out.println("<br/>Error with database : ");
}
%>
<head>

	<meta http-equiv="content-type" content="text/html; charset=utf-8" />
	<meta name="author" content="ABHINAV GUPTA" />
        <link rel="icon" href="favicon.ico">
	<!-- Stylesheets
	============================================= -->
        <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/font-awesome.min.css" /><!--for mobile or any other icons-->
	<link href="http://fonts.googleapis.com/css?family=Lato:300,400,400italic,600,700|Raleway:300,400,500,600,700|Crete+Round:400italic" rel="stylesheet" type="text/css" />
	<link rel="stylesheet" href="css/abhinav/bootstrap.css" type="text/css" />
	<link rel="stylesheet" href="css/abhinav/style.css" type="text/css" />
	<link rel="stylesheet" href="css/abhinav/dark.css" type="text/css" />
	<link rel="stylesheet" href="css/abhinav/font-icons.css" type="text/css" />
	<link rel="stylesheet" href="css/abhinav/animate.css" type="text/css" />
	<link rel="stylesheet" href="css/abhinav/magnific-popup.css" type="text/css" />

	<link rel="stylesheet" href="css/abhinav/responsive.css" type="text/css" />
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<!--[if lt IE 9]>
		<script src="http://css3-mediaqueries-js.googlecode.com/svn/trunk/css3-mediaqueries.js"></script>
	<![endif]-->

	<!-- SLIDER REVOLUTION 5.x CSS SETTINGS -->
	<link rel="stylesheet" type="text/css" href="css/abhinav/include/rs-plugin/css/settings.css" media="screen" />
	<link rel="stylesheet" type="text/css" href="css/abhinav/include/rs-plugin/css/layers.css">
	<link rel="stylesheet" type="text/css" href="css/abhinav/include/rs-plugin/css/navigation.css">

	<!-- Document Title
	============================================= -->
	<title>Resale Mart | ABHINAV GUPTA</title>

	<style>

		.revo-slider-emphasis-text {
			font-size: 64px;
			font-weight: 700;
			letter-spacing: -1px;
			font-family: 'Raleway', sans-serif;
			padding: 15px 20px;
			border-top: 2px solid #FFF;
			border-bottom: 2px solid #FFF;
		}

		.revo-slider-desc-text {
			font-size: 20px;
			font-family: 'Lato', sans-serif;
			width: 650px;
			text-align: center;
			line-height: 1.5;
		}

		.revo-slider-caps-text {
			font-size: 16px;
			font-weight: 400;
			letter-spacing: 3px;
			font-family: 'Raleway', sans-serif;
		}
		.tp-video-play-button { display: none !important; }

		.tp-caption { white-space: nowrap; }

	</style>

</head>

<body class="stretched">

	<!-- Document Wrapper
	============================================= -->
	<div id="wrapper" class="clearfix">
		<!-- Header
		============================================= -->
		<header id="header" class="transparent-header full-header" data-sticky-class="not-dark">

			<div id="header-wrap">

				<div class="container clearfix">

					<div id="primary-menu-trigger"><i class="icon-reorder"></i></div>

					<!-- Logo
					============================================= -->
					<div id="logo">
						<a href="index.jsp" class="standard-logo" data-dark-logo="images/abhinav/logo-dark.png"><img src="images/abhinav/logo.png" alt="Resale Mart"></a>
						<a href="index.jsp" class="retina-logo" data-dark-logo="images/abhinav/logo-dark@2x.png"><img src="images/abhinav/logo@2x.png" alt="Resale Mart"></a>
					</div><!-- #logo end -->
                                        <%if (session.getAttribute("email")!=null){%>
                                        <div id="top-account" class="dropdown">
						<a href="#" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true"><i class="icon-user"></i><i class="icon-angle-down"></i></a>
					 	<ul class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdownMenu1">
							<li><a href="profile.jsp">Profile</a></li>
							<li><a href="inbox.jsp">Messages <span class="badge"><%=session.getAttribute("msg_view").toString()%></span></a></li>
							<li><a href="#">Settings</a></li>
							<li role="separator" class="divider"></li>
							<li><a href="logout">Logout <i class="icon-signout"></i></a></li>
						</ul>
                    </div>   
                                                        <%}%>    
					<!-- Primary Navigation
					============================================= -->
					<nav id="primary-menu">

						<ul>
							<li>
								<a href="index.jsp"><div>Home</div></a>
							</li>
                                                        <li>
                                                            <a href="profile.jsp"><div>Profile</div></a>
                                                        </li>
							<li>
								<a href="classifiedsearch.jsp?t4=<%=email%>"><div>My ads</div></a>
							</li>
							
							<li><a href=""><div>Ads</div></a>
								<ul>
									<li><a href="all-classifieds.jsp"><div>All Ads</div></a></li>
									<li><a href=""><div>Books, Sports, and Hobbies </div></a>
										<ul>
											<li><a href="classifiedsearch.jsp?t2=books"><div>Books</div></a></li>
											<li><a href="classifiedsearch.jsp?t2=books"><div>Sports</div></a></li>
											<li><a href="classifiedsearch.jsp?t2=books"><div>Hobbies</div></a></li>
										</ul>
									</li>									
									<li><a href="classifiedsearch.jsp?t2=mobiles"><div>Mobiles</div></a></li>
									<li><a href="classifiedsearch.jsp?t2=cars"><div>Cars</div></a></li>
									<li><a href="classifiedsearch.jsp?t2=electronics"><div>Electronics and appliances</div></a>
									<!--	<ul>
											<li><a href=""><div>DBDKNJD</div></a></li>
											<li><a href=""><div>BBAJK</div></a></li>
											<li><a href=""><div>KJDJKK</div></a></li>
											<li><a href=""><div>JJKD</div></a></li>
										</ul>-->
									</li>
									<li><a href="classifiedsearch.jsp?t2=bikes"><div>Bikes</div></a></li>
									<li><a href="classifiedsearch.jsp?t2=furniture"><div>Furniture</div></a></li>
                                                                        <li><a href="classifiedsearch.jsp?t2=pets"><div>Pets</div></a></li>
                                                                        <li><a href="classifiedsearch.jsp?t2=kids"><div>Kids</div></a></li>
                                                                        <li><a href="classifiedsearch.jsp?t2=services"><div>Services</div></a></li>
                                                                        <li><a href="classifiedsearch.jsp?t2=fashion"><div>Fashion</div></a></li>
                                                                        <li><a href="classifiedsearch.jsp?t2=jobs"><div>Jobs</div></a></li>
                                                                        <li><a href="classifiedsearch.jsp?t2=realestate"><div>Real Estate</div></a></li>
                                                                </ul>
                                                        </li>
						</ul>
						<!-- Top Search
						============================================= -->
						<div id="top-search">
							<a href="#" id="top-search-trigger"><i class="icon-search3"></i><i class="icon-line-cross"></i></a>
							<form action="classifiedsearch.jsp" method="get">
								<input type="text" id="t3" name="t3" class="form-control" value="" placeholder="Type &amp; Hit Enter.. To Search ads">
							</form>
						</div><!-- #top-search end -->

					</nav><!-- #primary-menu end -->

				</div>

			</div>

		</header><!-- #header end -->

		<section id="slider" class="slider-parallax revslider-wrap clearfix">
			<div class="slider-parallax-inner">

				<!--
				#################################
					- THEMEPUNCH BANNER -
				#################################
				-->
				<div class="tp-banner-container">
					<div class="tp-banner" >
						<ul>    <!-- SLIDE  -->
							<li class="dark" data-transition="fade" data-slotamount="1" data-masterspeed="1500" data-thumb="images/abhinav/slider/rev/ken-1-thumb.jpg" data-delay="10000"  data-saveperformance="off" data-title="Responsive Design">
								<!-- MAIN IMAGE -->
								<img src="images/abhinav/slider/rev/ken-1.jpg"  alt="kenburns1"  data-bgposition="center bottom" data-kenburns="on" data-duration="10000" data-ease="Linear.easeNone" data-scale="100" data-scaleend="120" data-bgpositionend="center top">
								<!-- LAYERS -->

								<!-- LAYER NR. 2 -->
								<div class="tp-caption customin ltl tp-resizeme revo-slider-caps-text uppercase"
								data-x="355"
								data-y="215"
								data-customin="x:0;y:150;z:0;rotationZ:0;scaleX:1;scaleY:1;skewX:0;skewY:0;s:800;e:Power4.easeOutQuad;"
								data-speed="800"
								data-start="1000"
								data-easing="easeOutQuad"
								data-splitin="none"
								data-splitout="none"
								data-elementdelay="0.01"
								data-endelementdelay="0.1"
								data-endspeed="1000"
								data-endeasing="Power4.easeIn" style="z-index: 3; white-space: nowrap;">RESALE MART</div>

								<div class="tp-caption customin ltl tp-resizeme revo-slider-emphasis-text nopadding noborder"
								data-x="200"
								data-y="230"
								data-customin="x:0;y:150;z:0;rotationZ:0;scaleX:1;scaleY:1;skewX:0;skewY:0;s:800;e:Power4.easeOutQuad;"
								data-speed="800"
								data-start="1200"
								data-easing="easeOutQuad"
								data-splitin="none"
								data-splitout="none"
								data-elementdelay="0.01"
								data-endelementdelay="0.1"
								data-endspeed="1000"
								data-endeasing="Power4.easeIn" style="z-index: 3; white-space: nowrap;">ONLY BY ABHINAV GUPTA</div>

								<div class="tp-caption customin ltl tp-resizeme revo-slider-desc-text"
								data-x="245"
								data-y="340"
								data-customin="x:0;y:150;z:0;rotationZ:0;scaleX:1;scaleY:1;skewX:0;skewY:0;s:800;e:Power4.easeOutQuad;"
								data-speed="800"
								data-start="1400"
								data-easing="easeOutQuad"
								data-splitin="none"
								data-splitout="none"
								data-elementdelay="0.01"
								data-endelementdelay="0.1"
								data-endspeed="1000"
								data-endeasing="Power4.easeIn" style="z-index: 3; max-width: 650px; white-space: normal;">I have created it to increase knowledge &amp; test JSPs.</div>

								<div class="tp-caption customin ltl tp-resizeme"
								data-x="496"
								data-y="450"
								data-customin="x:0;y:150;z:0;rotationZ:0;scaleX:1;scaleY:1;skewX:0;skewY:0;s:800;e:Power4.easeOutQuad;"
								data-speed="800"
								data-start="1550"
								data-easing="easeOutQuad"
								data-splitin="none"
								data-splitout="none"
								data-elementdelay="0.01"
								data-endelementdelay="0.1"
								data-endspeed="1000"
								data-endeasing="Power4.easeIn" style="z-index: 3;"><a href="all-classifieds.jsp" class="button button-border button-white button-light button-large button-rounded tright nomargin"><span>All Ads</span> <i class="icon-angle-right"></i></a></div>

							</li>
							<!-- SLIDE  -->
							<li data-transition="slideup" data-slotamount="1" data-masterspeed="1500" data-thumb="images/abhinav/slider/rev/ken-2-thumb.jpg" data-delay="10000"  data-saveperformance="off"  data-title="Unlimited Possibilities">
								<!-- MAIN IMAGE -->
								<img src="images/abhinav/slider/rev/ken-2.jpg"  alt="kenburns6"  data-bgposition="center bottom" data-kenburns="on" data-duration="10000" data-ease="Linear.easeNone" data-scale="100" data-scaleend="120" data-bgpositionend="center top">
								<!-- LAYERS -->

								<!-- LAYER NR. 2 -->
								<div class="tp-caption customin ltl tp-resizeme revo-slider-caps-text uppercase"
								data-x="453"
								data-y="215"
								data-customin="x:0;y:150;z:0;rotationZ:0;scaleX:1;scaleY:1;skewX:0;skewY:0;s:800;e:Power4.easeOutQuad;"
								data-speed="800"
								data-start="1000"
								data-easing="easeOutQuad"
								data-splitin="none"
								data-splitout="none"
								data-elementdelay="0.01"
								data-endelementdelay="0.1"
								data-endspeed="1000"
								data-endeasing="Power4.easeIn" style="z-index: 3; color: #333; white-space: nowrap;">Why Choose us?</div>

								<div class="tp-caption customin ltl tp-resizeme revo-slider-emphasis-text nopadding noborder"
								data-x="264"
								data-y="230"
								data-customin="x:0;y:150;z:0;rotationZ:0;scaleX:1;scaleY:1;skewX:0;skewY:0;s:800;e:Power4.easeOutQuad;"
								data-speed="800"
								data-start="1200"
								data-easing="easeOutQuad"
								data-splitin="none"
								data-splitout="none"
								data-elementdelay="0.01"
								data-endelementdelay="0.1"
								data-endspeed="1000"
								data-endeasing="Power4.easeIn" style="z-index: 3; color: #333; white-space: nowrap;">We Are FAST to Respond.</div>

								<div class="tp-caption customin ltl tp-resizeme revo-slider-desc-text"
								data-x="245"
								data-y="340"
								data-customin="x:0;y:150;z:0;rotationZ:0;scaleX:1;scaleY:1;skewX:0;skewY:0;s:800;e:Power4.easeOutQuad;"
								data-speed="800"
								data-start="1400"
								data-easing="easeOutQuad"
								data-splitin="none"
								data-splitout="none"
								data-elementdelay="0.01"
								data-endelementdelay="0.1"
								data-endspeed="1000"
								data-endeasing="Power4.easeIn" style="z-index: 3; color: #333; max-width: 650px; white-space: normal;">Post &amp; Search whatever you require for your Business or Personal use.</div>

								<div class="tp-caption customin ltl tp-resizeme"
								data-x="508"
								data-y="450"
								data-customin="x:0;y:150;z:0;rotationZ:0;scaleX:1;scaleY:1;skewX:0;skewY:0;s:800;e:Power4.easeOutQuad;"
								data-speed="800"
								data-start="1550"
								data-easing="easeOutQuad"
								data-splitin="none"
								data-splitout="none"
								data-elementdelay="0.01"
								data-endelementdelay="0.1"
								data-endspeed="1000"
								data-endeasing="Power4.easeIn" style="z-index: 3;"><a href="post-ad.jsp" class="button button-border button-large button-rounded tright nomargin"><span>Post Ad</span><i class="icon-angle-right"></i></a></div>

							</li>
						</ul>
					</div>
				</div><!-- END REVOLUTION SLIDER -->

			</div>
		</section>
	<!-- content-starts-here -->
            <section id="content">
		<!--<div class="content-wrap">-->
			<div class="categories">
				<div class="container">
					<div class="col-md-2 focus-grid">
						<a href="categories.jsp">
							<div class="focus-border">
								<div class="focus-layout">
									<div class="focus-image"><i class="fa fa-mobile"></i></div>
									<h4 class="clrchg">Mobiles</h4>
								</div>
							</div>
						</a>
					</div>
					<div class="col-md-2 focus-grid">
						<a href="categories.jsp#parentVerticalTab2">
							<div class="focus-border">
								<div class="focus-layout">
									<div class="focus-image"><i class="fa fa-laptop"></i></div>
									<h4 class="clrchg"> Electronics & Appliances</h4>
								</div>
							</div>
						</a>
					</div>
					<div class="col-md-2 focus-grid">
						<a href="categories.jsp#parentVerticalTab3">
							<div class="focus-border">
								<div class="focus-layout">
									<div class="focus-image"><i class="fa fa-car"></i></div>
									<h4 class="clrchg">Cars</h4>
								</div>
							</div>
						</a>
					</div>	
					<div class="col-md-2 focus-grid">
						<a href="categories.jsp#parentVerticalTab4">
							<div class="focus-border">
								<div class="focus-layout">
									<div class="focus-image"><i class="fa fa-motorcycle"></i></div>
									<h4 class="clrchg">Bikes</h4>
								</div>
							</div>
						</a>
					</div>	
					<div class="col-md-2 focus-grid">
						<a href="categories.jsp#parentVerticalTab5">
							<div class="focus-border">
								<div class="focus-layout">
									<div class="focus-image"><i class="fa fa-wheelchair"></i></div>
									<h4 class="clrchg">Furnitures</h4>
								</div>
							</div>
						</a>
					</div>
					<div class="col-md-2 focus-grid">
						<a href="categories.jsp#parentVerticalTab6">
							<div class="focus-border">
								<div class="focus-layout">
									<div class="focus-image"><i class="fa fa-paw"></i></div>
									<h4 class="clrchg">Pets</h4>
								</div>
							</div>
						</a>
					</div>	
					
					<div class="clearfix"></div>
				</div>
			</div>
			
			<div class="mobile-app">
				<div class="container">
					<div class="col-md-5 app-left">
						<a href="mobileapp.jsp"><img src="images/app.png" alt=""></a>
					</div>
					<div class="col-md-7 app-right">
						<h3>Resale App is the <span>Easiest</span> way for Selling and buying second-hand goods</h3>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam auctor Sed bibendum varius euismod. Integer eget turpis sit amet lorem rutrum ullamcorper sed sed dui. vestibulum odio at elementum. Suspendisse et condimentum nibh.</p>
						<div class="app-buttons">
							<div class="app-button">
								<a href="#"><img src="images/1.png" alt=""></a>
							</div>
							<div class="app-button">
								<a href="#"><img src="images/2.png" alt=""></a>
							</div>
							<div class="clearfix"> </div>
						</div>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
		<!--</div>-->
            </section>  
                <!-- Footer
		============================================= -->
		<footer id="footer" class="dark">

			<div class="container">

				<!-- Footer Widgets
				============================================= -->
				<div class="footer-widgets-wrap clearfix">

					<div class="col_two_third">

						<div class="col_one_third">

							<div class="widget clearfix">

								<img src="images/abhinav/footer-widget-logo.png" alt="" class="footer-logo">

								<p>We believe in <strong>Simple</strong>, <strong>Creative</strong> &amp; <strong>Flexible</strong> Design Standards.</p>

								<div style="background: url('images/abhinav/world-map.png') no-repeat center center; background-size: 100%;">
									<address>
										<strong>Headquarters:</strong><br>
										502 Main Market, Hallomajra<br>
										Chandigarh, India 160002<br>
									</address>
									<abbr title="Phone Number"><strong>Phone:</strong></abbr> +91 7696 244723<br>
									<abbr title="Fax"><strong>Alt:</strong></abbr> +91 8567 018991<br>
									<abbr title="Email Address"><strong>Email:</strong></abbr> abhig605@gmail.com
								</div>

							</div>

						</div>

						<div class="col_one_third">

							<div class="widget widget_links clearfix">

								<h4>Blogroll</h4>

								<ul>
									<li><a href="all-classifieds.jsp">All ads</a></li>
									<li><a href="feedback.jsp">Feedback</a></li>
									<li><a href="post-ad.jsp">Post ad</a></li>
									<li><a href="support.jsp">Support Forums</a></li>
								</ul>

							</div>

						</div>
                                                <%@include file="recentposts.jsp" %>	
						
					</div>

					<div class="col_one_third col_last">

						

						<div class="widget subscribe-widget clearfix">
							<h5><strong>Subscribe</strong> to Our Newsletter to get Important News, Amazing Offers &amp; Inside Scoops:</h5>
							<div class="widget-subscribe-form-result"></div>
							<form id="widget-subscribe-form" action="subscribe" role="form" method="post" class="nobottommargin">
								<div class="input-group divcenter">
									<span class="input-group-addon"><i class="icon-email2"></i></span>
									<input type="email" id="widget-subscribe-form-email" name="widget-subscribe-form-email" class="form-control required email" placeholder="Enter your Email">
									<span class="input-group-btn">
										<button class="btn btn-success" type="submit">Subscribe</button>
									</span>
								</div>
							</form>
						</div>

						<div class="widget clearfix" style="margin-bottom: -20px;">

							<div class="row">

								<div class="col-md-6 clearfix bottommargin-sm">
									<a href="#" class="social-icon si-dark si-colored si-facebook nobottommargin" style="margin-right: 10px;">
										<i class="icon-facebook"></i>
										<i class="icon-facebook"></i>
									</a>
									<a href="http://fb.com/abhig605"><small style="display: block; margin-top: 3px;"><strong>Like us</strong><br>on Facebook</small></a>
								</div>
								<div class="col-md-6 clearfix">
									<a href="#" class="social-icon si-dark si-colored si-rss nobottommargin" style="margin-right: 10px;">
										<i class="icon-rss"></i>
										<i class="icon-rss"></i>
									</a>
									<a href="#"><small style="display: block; margin-top: 3px;"><strong>Subscribe</strong><br>to RSS Feeds</small></a>
								</div>

							</div>

						</div>

					</div>

				</div><!-- .footer-widgets-wrap end -->

			</div>

			<!-- Copyrights
			============================================= -->
			<div id="copyrights">

				<div class="container clearfix">

					<div class="col_half">
						Copyrights &copy; 2016 All Rights Reserved by ABHINAV GUPTA<br>
						<div class="copyright-links"><a href="#">Terms of Use</a> / <a href="#">Privacy Policy</a></div>
					</div>

					<div class="col_half col_last tright">
						<div class="fright clearfix">
							<a href="#" class="social-icon si-small si-borderless si-facebook">
								<i class="icon-facebook"></i>
								<i class="icon-facebook"></i>
							</a>

							<a href="#" class="social-icon si-small si-borderless si-twitter">
								<i class="icon-twitter"></i>
								<i class="icon-twitter"></i>
							</a>

							<a href="#" class="social-icon si-small si-borderless si-gplus">
								<i class="icon-gplus"></i>
								<i class="icon-gplus"></i>
							</a>

							<a href="#" class="social-icon si-small si-borderless si-pinterest">
								<i class="icon-pinterest"></i>
								<i class="icon-pinterest"></i>
							</a>

							<a href="#" class="social-icon si-small si-borderless si-vimeo">
								<i class="icon-vimeo"></i>
								<i class="icon-vimeo"></i>
							</a>

							<a href="#" class="social-icon si-small si-borderless si-github">
								<i class="icon-github"></i>
								<i class="icon-github"></i>
							</a>

							<a href="#" class="social-icon si-small si-borderless si-yahoo">
								<i class="icon-yahoo"></i>
								<i class="icon-yahoo"></i>
							</a>

							<a href="#" class="social-icon si-small si-borderless si-linkedin">
								<i class="icon-linkedin"></i>
								<i class="icon-linkedin"></i>
							</a>
						</div>

						<div class="clear"></div>

						<i class="icon-envelope2"></i> abhig605@gmail.com <span class="middot">&middot;</span> <i class="icon-headphones"></i> +91-76-9624-4723 <span class="middot">&middot;</span> <i class="icon-skype2"></i> abhinavonskype
					</div>

				</div>

			</div><!-- #copyrights end -->

		</footer><!-- #footer end -->
	<!-- Go To Top
	============================================= -->
	<div id="gotoTop" class="icon-angle-up"></div>

	<!-- External JavaScripts
	============================================= -->
	<script type="text/javascript" src="js/abhinav/jquery.js"></script>
	<script type="text/javascript" src="js/abhinav/plugins.js"></script>

	<!-- Footer Scripts
	============================================= -->
	<script type="text/javascript" src="js/abhinav/functions.js"></script>

	<!-- SLIDER REVOLUTION 5.x SCRIPTS  -->
	<script type="text/javascript" src="css/abhinav/include/rs-plugin/js/jquery.themepunch.tools.min.js"></script>
	<script type="text/javascript" src="css/abhinav/include/rs-plugin/js/jquery.themepunch.revolution.min.js"></script>

	<script type="text/javascript" src="css/abhinav/include/rs-plugin/js/extensions/revolution.extension.video.min.js"></script>
	<script type="text/javascript" src="css/abhinav/include/rs-plugin/js/extensions/revolution.extension.slideanims.min.js"></script>
	<script type="text/javascript" src="css/abhinav/include/rs-plugin/js/extensions/revolution.extension.actions.min.js"></script>
	<script type="text/javascript" src="css/abhinav/include/rs-plugin/js/extensions/revolution.extension.layeranimation.min.js"></script>
	<script type="text/javascript" src="css/abhinav/include/rs-plugin/js/extensions/revolution.extension.kenburn.min.js"></script>
	<script type="text/javascript" src="css/abhinav/include/rs-plugin/js/extensions/revolution.extension.navigation.min.js"></script>
	<script type="text/javascript" src="css/abhinav/include/rs-plugin/js/extensions/revolution.extension.migration.min.js"></script>
	<script type="text/javascript" src="css/abhinav/include/rs-plugin/js/extensions/revolution.extension.parallax.min.js"></script>

	<script type="text/javascript">

		var tpj=jQuery;
		tpj.noConflict();

		tpj(document).ready(function() {

			var apiRevoSlider = tpj('.tp-banner').show().revolution(
			{
				sliderType:"standard",
				jsFileLocation:"include/rs-plugin/js/",
				dottedOverlay:"none",
				delay:16000,
				startwidth:1140,
				startheight:600,
				hideThumbs:200,

				thumbWidth:100,
				thumbHeight:50,
				thumbAmount:5,

				navigation: {
                    keyboardNavigation: "on",
                    keyboard_direction: "horizontal",
                    mouseScrollNavigation: "off",
                    onHoverStop: "off",
                    touch: {
                        touchenabled: "on",
                        swipe_threshold: 75,
                        swipe_min_touches: 1,
                        swipe_direction: "horizontal",
                        drag_block_vertical: false
                    },
                    arrows: {
                        style: "hades",
                        enable: true,
                        hide_onmobile: false,
                        hide_onleave: false,
                        tmp: '<div class="tp-arr-allwrapper">	<div class="tp-arr-imgholder"></div></div>',
                        left: {
                            h_align: "left",
                            v_align: "center",
                            h_offset: 10,
                            v_offset: 0
                        },
                        right: {
                            h_align: "right",
                            v_align: "center",
                            h_offset: 10,
                            v_offset: 0
                        }
                    },
                },

				touchenabled:"on",
				onHoverStop:"on",

				swipe_velocity: 0.7,
				swipe_min_touches: 1,
				swipe_max_touches: 1,
				drag_block_vertical: false,

										parallax:"mouse",
				parallaxBgFreeze:"on",
				parallaxLevels:[7,4,3,2,5,4,3,2,1,0],

				keyboardNavigation:"off",

				navigationHAlign:"center",
				navigationVAlign:"bottom",
				navigationHOffset:0,
				navigationVOffset:20,

				soloArrowLeftHalign:"left",
				soloArrowLeftValign:"center",
				soloArrowLeftHOffset:20,
				soloArrowLeftVOffset:0,

				soloArrowRightHalign:"right",
				soloArrowRightValign:"center",
				soloArrowRightHOffset:20,
				soloArrowRightVOffset:0,

				shadow:0,
				fullWidth:"off",
				fullScreen:"on",

				spinner:"spinner4",

				stopLoop:"off",
				stopAfterLoops:-1,
				stopAtSlide:-1,

				shuffle:"off",

				autoHeight:"off",
				forceFullWidth:"off",



				hideThumbsOnMobile:"off",
				hideNavDelayOnMobile:1500,
				hideBulletsOnMobile:"off",
				hideArrowsOnMobile:"off",
				hideThumbsUnderResolution:0,

				hideSliderAtLimit:0,
				hideCaptionAtLimit:0,
				hideAllCaptionAtLilmit:0,
				startWithSlide:0,
			});

			apiRevoSlider.bind("revolution.slide.onloaded",function (e) {
				setTimeout( function(){ SEMICOLON.slider.sliderParallaxDimensions(); }, 200 );
			});

			apiRevoSlider.bind("revolution.slide.onchange",function (e,data) {
				SEMICOLON.slider.revolutionSliderMenu();
			});

		}); //ready

	</script>
</div><!-- #wrapper end -->
</body>
</html>