<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<!--
Author: ABHINAV GUPTA
Author URL: http://ABHINAVgupta.com
-->
<%
/*String t1="",t2="",t3="";
if(request.getParameter("t1")!=null ||request.getParameter("t2")!=null||request.getParameter("t3")!=null){
    t1=request.getParameter("t1");
    t2=request.getParameter("t2");
    t3=request.getParameter("t3");
}else{
    t1="amritsar";
    t2="all";
    t3="";
}*/
String arr[]={"mobiles","electronics","cars","bikes","furniture","pets","books","fashion","kids","services","jobs","realestate"};    
try{
 %><%@include file="dbConnection.jsp" %>
    <%
    int i=0;
    int total_ads=0;
    String tot_ads="total_ads";
    while(i<arr.length){
        PreparedStatement smt = (PreparedStatement) con.prepareStatement("select count(*) from post_ad where category=?");
        smt.setString(1, arr[i]);
        ResultSet rs=smt.executeQuery();
        if(rs.next()){
            session.setAttribute(arr[i],rs.getString(1));
            total_ads += Integer.parseInt(rs.getString(1));
        }else{
            session.setAttribute(arr[i],"0");
        }
        i++;
        rs.close();
        smt.close();
    }
    session.setAttribute(tot_ads,new Integer(total_ads).toString());
    }
    catch(Exception e)
    {
        out.println("<br/>Error with database : "+e);
    }
%>
<!DOCTYPE html>
<html dir="ltr" lang="en-US">
<head>
	<!--Content design-->
        <link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/bootstrap-select.css">
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link rel="stylesheet" type="text/css" href="css/jquery-ui1.css">
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
<script type="text/javascript" src="js/abhinav/jquery.js"></script>
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
<script>
			$( document ).ready( function() {
				$( '.uls-trigger' ).uls( {
					onSelect : function( language ) {
						var languageName = $.uls.data.getAutonym( language );
						$( '.uls-trigger' ).text( languageName );
					},
					quickList: ['en', 'hi', 'he', 'ml', 'ta', 'fr'] //FIXME
				} );
			} );
		</script>
    <script src="js/tabs.js"></script>
	
<script type="text/javascript">
$(document).ready(function () {        
var elem=$('#container ul');      
	$('#viewcontrols a').on('click',function(e) {
		if ($(this).hasClass('gridview')) {
			elem.fadeOut(1000, function () {
				$('#container ul').removeClass('list').addClass('grid');
				$('#viewcontrols').removeClass('view-controls-list').addClass('view-controls-grid');
				$('#viewcontrols .gridview').addClass('active');
				$('#viewcontrols .listview').removeClass('active');
				elem.fadeIn(1000);
			});						
		}
		else if($(this).hasClass('listview')) {
			elem.fadeOut(1000, function () {
				$('#container ul').removeClass('grid').addClass('list');
				$('#viewcontrols').removeClass('view-controls-grid').addClass('view-controls-list');
				$('#viewcontrols .gridview').removeClass('active');
				$('#viewcontrols .listview').addClass('active');
				elem.fadeIn(1000);
			});									
		}
	});
});

</script>
        <!--Content design-->
        <style>
            #page-title {
                position: relative;
                padding: 50px 0;
                background-color: #F5F5F5;
                border-bottom: 1px solid #EEE;
            }
            
            </style>
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
	<title>Resale Mart | ABHINAV GUPTA</title>

</head>
<body class="stretched">
<!--Wrapper-->
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
							<%String email="", value="";
							if (session.getAttribute("email")!=null){email=session.getAttribute("email").toString();
							email="classifiedsearch.jsp?t4="+email; 
							value="My Ads";}
							else{value="Login | Register";email="register.jsp";}
							%>
								<a href=<%=email%> ><div><%=value%> </div></a>
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
<!---->
							<script type="text/javascript" src="js/jquery-ui.js"></script>
                                                        <script type="text/javascript" src="js/jquery-1.10.2.js"></script>
							<script type='text/javascript'>//<![CDATA[ 
							$(window).load(function(){
							 $( "#slider-range" ).slider({
										range: true,
										min: 0,
										max: 9000,
										values: [ 50, 6000 ],
										slide: function( event, ui ) {  $( "#amount" ).val( "$" + ui.values[ 0 ] + " - $" + ui.values[ 1 ] );
										}
							 });
							$( "#amount" ).val( "$" + $( "#slider-range" ).slider( "values", 0 ) + " - $" + $( "#slider-range" ).slider( "values", 1 ) );

							});//]]>  

							</script>
 <!-- Products -->
	<div class="total-ads main-grid-border">
		<div class="container">
                    <form action="classifiedsearch.jsp" method="get">
			<div class="select-box">
				<div class="select-city-for-local-ads ads-list">
					<label>Select your city to see local ads</label>
                                        <select name="t1" id="t1">
                                                    <option selected value='all'>All</option>
                                            <optgroup label="Punjab">
                                                    <option value='Amritsar'>Amritsar</option>
                                                    <option value='Chandigarh'>Chandigarh</option>
                                            </optgroup>
                                        </select>
                                                    
				</div>
                            <div class="browse-category ads-list">
					<label>Browse Categories</label>
					<select name="t2" id="t2">
					  <option value="all">All</option>
					  <option value="mobiles">Mobiles</option>
					  <option value="electronics">Electronics & Appliances</option>
					  <option value="cars">Cars</option>
					  <option value="bikes">Bikes</option>
					  <option value="furniture">Furniture</option>
					  <option value="pets">Pets</option>
					  <option value="books">Books, Sports & Hobbies</option>
					  <option value="fashion">Fashion</option>
					  <option value="kids">Kids</option>
					  <option value="services">Services</option>
					  <option value="jobs">Jobs</option>
					  <option value="realestate">Real Estate</option>
					</select>
				</div>
				<div class="search-product ads-list">
					<label>Search for a specific product</label>
					<div class="search">
						<div id="custom-search-input">
						<div class="input-group">
							<input name="t3" type="text" class='form-control input-sm' id="t3" placeholder="Search" />
							<span class="input-group-btn">
								<button class="btn btn-info btn-lg" type="button">
                                                                    <input type="submit" value="search"/>
								</button>
							</span>
						</div>
					</div>
					</div>
				</div>
				<div class="clearfix"></div>
                 </div>
                        </form>
			<div class="all-categories">
				<h3> Select your category and find the perfect ad</h3>
				<ul class="all-cat-list">
                                        <li><a href="mobiles.jsp">All <span class="num-of-ads">(<%=session.getAttribute("total_ads")%>)</span></a></li>
					<li><a href="mobiles.jsp">Mobiles <span class="num-of-ads">(<%=session.getAttribute(arr[0])%>)</span></a></li>
					<li><a href="electronics-appliances.jsp">Electronics & Appliances  <span class="num-of-ads">(<%=session.getAttribute(arr[1])%>)</span></a></li>
					<li><a href="real-estate.jsp">Real Estate  <span class="num-of-ads">(<%=session.getAttribute(arr[11])%>)</span></a></li>
					<li><a href="furnitures.jsp">Furniture    <span class="num-of-ads">(<%=session.getAttribute(arr[4])%>)</span></a></li>
					<li><a href="pets.jsp">Pets   <span class="num-of-ads">(<%=session.getAttribute(arr[5])%>)</span></a></li>
					<li><a href="books-sports-hobbies.jsp">Books, Sports & Hobbies    <span class="num-of-ads">(<%=session.getAttribute(arr[6])%>)</span></a></li>
					<li><a href="fashion.jsp">Fashion   <span class="num-of-ads">(<%=session.getAttribute(arr[7])%>)</span></a></li>
					<li><a href="kids.jsp">Kids   <span class="num-of-ads">(<%=session.getAttribute(arr[8])%>)</span></a></li>
					<li><a href="services.jsp">Services   <span class="num-of-ads">(<%=session.getAttribute(arr[9])%>)</span></a></li>
					<li><a href="cars.jsp">Cars   <span class="num-of-ads">(<%=session.getAttribute(arr[2])%>)</span></a></li>
                    <li><a href="bikes.jsp">Bikes   <span class="num-of-ads">(<%=session.getAttribute(arr[3])%>)</span></a></li>
                    <li><a href="jobs.jsp">Jobs   <span class="num-of-ads">(<%=session.getAttribute(arr[10])%>)</span></a></li>
				</ul>
			</div>
                        <!-- Page Title
		============================================= -->
		<section style="align:left;padding:0;margin:0;line-height:2;font-weight:600;letter-spacing:3px;position:relative;">        
                        <div class="container clearfix">
                            <ol class="breadcrumb">
			  <li><a href="index.jsp">Home</a></li>
			  <li class="active">All Ads</li>
			</ol>
                        </div>
                    </section><!-- #page-title end -->

			<div class="ads-grid">
				<div class="side-bar col-md-3">
					<div class="search-hotel">
					<h3 class="sear-head">Name contains</h3>
					<form>
						<input type="text" value="Product name..." onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Product name...';}" required="">
						<input type="submit" value=" ">
					</form>
				</div>
				
				
							<!---->
			<script type="text/javascript" src="js/jquery-ui.js"></script>
							
				<div class="featured-ads">
					<h2 class="sear-head fer">Featured Ads</h2>
<%			
try{
Class.forName("com.mysql.jdbc.Driver"); // Load Driver
Connection con = (Connection) DriverManager.getConnection("jdbc:mysql:///abhi","root","");
PreparedStatement smt;
smt=con.prepareStatement("select * from post_ad LIMIT 0, 3");
ResultSet rs=smt.executeQuery();
while(rs.next())
{
String n=rs.getString("post_id");
out.println("<div class='featured-ad'>");
out.println("<a href=single.jsp?x="+n+">");
out.println("<div class='featured-ad-left'>");
out.println("<img src='"+rs.getString("photo")+"' title='adv images' alt='Adv. Images' />");
out.println("</div>");
out.println("<div class='featured-ad-right'><h4>");
out.println(rs.getString("title"));
out.println("</h4>");
out.println("<span class='adprice'>Rs. "+rs.getString("cost")+"/-</span>");
out.println("</div>");
out.println("<div class='clearfix'></div>");
out.println("</a>");
out.println("</div>");
}
}
catch(Exception e){
out.println("Error"+e);
}
%>					
				</div>
				</div>
				<div class="ads-display col-md-9">
					<div class="wrapper">					
					<div class="bs-example bs-example-tabs" role="tabpanel" data-example-id="togglable-tabs">
					  <ul id="myTab" class="nav nav-tabs nav-tabs-responsive" role="tablist">
						<li role="presentation" class="active">
						  <a href="#home" id="home-tab" role="tab" data-toggle="tab" aria-controls="home" aria-expanded="true">
							<span class="text">All Ads</span>
						  </a>
						</li>
								  </ul>
					  <div id="myTabContent" class="tab-content">
						<div role="tabpanel" class="tab-pane fade in active" id="home" aria-labelledby="home-tab">
						   <div>
												<div id="container">
								<!--<div class="view-controls-list" id="viewcontrols">
									<label>view :</label>
									<a class="gridview"><i class="glyphicon glyphicon-th"></i></a>
									<a class="listview active"><i class="glyphicon glyphicon-th-list"></i></a>
								</div>-->
								<div class="sort">
								   <div class="sort-by">
										<label>Sort By : </label>
										<select>
														<option value="">Most recent</option>
														<option value="">Price: Rs Low to High</option>
														<option value="">Price: Rs High to Low</option>
										</select>
									   </div>
									 </div>
								<div class="clearfix"></div>
                                                                <ul class="list">
<%			
try{
%><%@include file="dbConnection.jsp" %>
    <%
PreparedStatement smt;    
smt = (PreparedStatement) con.prepareStatement("select * from post_ad a join categories b on a.category=b.value_name");
ResultSet rs=smt.executeQuery();
while(rs.next())
{
String n=rs.getString("post_id");
out.println("<a href=single.jsp?x="+n+">");
out.println("<li>");
out.println("<img src='"+rs.getString("photo")+"' title='' alt='' />");
out.println("<section class='list-left'>");
out.println("<h5 class='title'>");
out.println(rs.getString("title"));
out.println("</h5>");
out.println("<span class='adprice'>Rs. "+rs.getString("cost")+"/-</span>");
out.println("<p class='catpath'>"+rs.getString("categories")+"</p>");
out.println("</section>");
out.println("<section class='list-right'>");
out.println("<span class='date'>");
out.println(rs.getString("date"));
out.println("</span>");
out.println("<span class='cityname'>"+rs.getString("city")+"</span>");
out.println("</section>");
out.println("<div class='clearfix'></div>");
out.println("</li>"); 
out.println("</a>");
}
smt.close();
rs.close();
con.close();
}
catch(Exception e){
out.println("Error");
}
%>
							</ul>
						</div>
							</div>
						</div>
						
						
						<ul class="pagination pagination-sm">
							<li><a href="#">Prev</a></li>
							<li><a href="#">1</a></li>
							<li><a href="#">2</a></li>
							<li><a href="#">3</a></li>
							<li><a href="#">4</a></li>
							<li><a href="#">5</a></li>
							<li><a href="#">6</a></li>
							<li><a href="#">7</a></li>
							<li><a href="#">8</a></li>
							<li><a href="#">Next</a></li>
						</ul>
					  </div>
					</div>
				</div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>	
	</div>
	<!-- // Products -->
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
	