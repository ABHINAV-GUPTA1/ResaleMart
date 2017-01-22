<%@include file="secure-jsp.jsp" %>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<!--
Author: ABHINAV GUPTA
Author URL: http://ABHINAVGUPTA.COM
-->
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/bootstrap-select.css">
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />
<style>
table{
		font-size:200%;
}
table tr:hover{
		color:red;
}
</style>
<link rel="stylesheet" href="css/font-awesome.min.css" />
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Resale Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<!--fonts-->
<link href='//fonts.googleapis.com/css?family=Ubuntu+Condensed' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
<!--//fonts-->	
<!-- js -->
<script type="text/javascript" src="js/jquery.min.js"></script>
<!-- js -->
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/bootstrap.min.js"></script>
<script src="js/bootstrap-select.js"></script>
<script>
  $(document).ready(function () {
    var mySelect = $('#first-disabled2');

    $('#special').on('click', function () {
      mySelect.find('option:selected').prop('disabled', true);
      mySelect.selectpicker('refresh');
    });

    $('#special2').on('click', function () {
      mySelect.find('option:disabled').prop('disabled', false);
      mySelect.selectpicker('refresh');
    });

    $('#basic2').selectpicker({
      liveSearch: true,
      maxOptions: 1
    });
  });
</script>
<script type="text/javascript" src="js/jquery.leanModal.min.js"></script>
<link href="css/jquery.uls.css" rel="stylesheet"/>
<link href="css/jquery.uls.grid.css" rel="stylesheet"/>
<link href="css/jquery.uls.lcd.css" rel="stylesheet"/>
<!-- Source -->
<script src="js/jquery.uls.data.js"></script>
<script src="js/jquery.uls.data.utils.js"></script>
<script src="js/jquery.uls.lcd.js"></script>
<script src="js/jquery.uls.languagefilter.js"></script>
<script src="js/jquery.uls.regionfilter.js"></script>
<script src="js/jquery.uls.core.js"></script>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
	<meta name="author" content="ABHINAV GUPTA" />

	<!-- Stylesheets
	============================================= -->
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

	<!-- Document Title
	============================================= -->
	<title>Login | ABHINAV GUPTA</title>
</head>
<body class="stretched">
	<!-- Document Wrapper
	============================================= -->
        
	<div id="wrapper" class="clearfix">
		<!--Header-->
	<header id="header" class="full-header">
		<div id="header-wrap">
			<div class="container clearfix">
                <div id="primary-menu-trigger"><i class="icon-reorder"></i></div>
				<!-- Logo============================================= -->
				<div id="logo">
					<a href="index.jsp" class="standard-logo" data-dark-logo="images/abhinav/logo-dark.png"><img src="images/abhinav/logo.png" alt="abhinav Logo"></a>
					<a href="index.jsp" class="retina-logo" data-dark-logo="images/abhinav/logo-dark@2x.png"><img src="images/abhinav/logo@2x.png" alt="abhinav Logo"></a>
				</div><!-- #logo end -->                                 
				<!-- Primary Navigation
				============================================= -->
				<nav id="primary-menu">
					<ul>
						<li>
							<%
								String email1="", value="";
								if (session.getAttribute("email")!=null){email1=session.getAttribute("email").toString();
									email1="classifiedsearch.jsp?t4="+email1; 
									value="My Ads";}
								else{value="Register";email1="register.jsp";}
							%>
							<a href=<%=email1%> > <div><%=value%> </div></a>
						</li>
						<%
							String abcd="";
							if (session.getAttribute("email")!=null) {
						%>
						<li>
							<a href="profile.jsp"><div>Profile</div></a>
						</li>
						<%  
							} else {
								}
						%>
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
				</nav><!-- #primary-menu end -->
			</div>
		</div>
	</header>
 <!--Header END-->
 <div class="line"></div>
	<!-- Content
		============================================= -->
        <section id="content">
       
        <div class='container'>
            <div class='panel panel-primary dialog-panel'>
                <div class='panel-heading'>
                    <h5>Inbox</h5>
		</div>
                <div class='panel-body'>
                    <table class="table table-hover">
                        <tr>
                            <td>From</td>
                            <td>Post Id</td>
                            <td>Category</td>
                            <td>Message</td>
                            <td>date</td>
                            <td>Action</td>
                        </tr>
                        <%
                            String email=session.getAttribute("email").toString();
                            try{
                                Class.forName("com.mysql.jdbc.Driver"); // Load Driver
                                Connection con = (Connection) DriverManager.getConnection("jdbc:mysql:///abhi","root","");
                                PreparedStatement smt = (PreparedStatement) con.prepareStatement("Update message set viewed='1' where to5=? and viewed=0");
                                smt.setString(1, email); 
                                smt.executeUpdate();
                                smt = (PreparedStatement) con.prepareStatement("select * from message a, post_ad b where a.to5=? and a.post_id=b.post_id");
                                smt.setString(1, email);
                                //smt.setString(2, email);
                                ResultSet rs=smt.executeQuery();
                                while(rs.next()){%>
                                <tr>
                                    <td><%=rs.getString("from5")%></td>
                                    <td><%=rs.getString("post_id")%></td>
                                    <td><%=rs.getString("category")%></td>
                                    <td><%=rs.getString("mesg")%></td>
                                    <td><%=rs.getString("date")%></td>
                                    <td><a href="message.jsp?x=<%=rs.getString("post_id")%>">Reply</td>  
                                </tr>    
                                <%}
                                   
                                //smt.setString(2, email);
                                        
                                session.removeAttribute("msg_viw");
                                request.getSession().setAttribute("msg_view", "0");
                                smt.close();
                                con.close();
                            }
                            catch(Exception e)
                            {
                                out.println("<br/>Error with database : "+e);
                            }
                        %>
                    </table>
                </div>
            </div>
		</div>
        </section>
                    <div class="line"></div>
                    <div class="clearfix"></div> 
        <!--Content Ends
		==============================================-->
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
</div><!-- #wrapper end -->
</body>
</html>