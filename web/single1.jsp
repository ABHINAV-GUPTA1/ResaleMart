<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<!--
Author: ABHINAV GUPTA
Author URL: http://ABHINAVgupta.com
-->
<%    
if(request.getParameter("x")==null)
    response.sendRedirect("all-classifieds.jsp");
String aview=request.getParameter("x");
Integer x=(Integer)application.getAttribute("ad_view"+aview);
if(x==null || x==0)
    x=1;
else
    x+=1;
application.setAttribute("ad_view"+aview,x);
String categories_name="",categories="",price="",condition="",brand="";
String state="",post_id=request.getParameter("x"),title="",description="",photo[]=new String[3],category="",email="",contact="",city="",date="",ad_view="";
try{
    Class.forName("com.mysql.jdbc.Driver"); // Load Driver
    Connection con = (Connection) DriverManager.getConnection("jdbc:mysql:///abhi","root","");
    PreparedStatement smt = (PreparedStatement) con.prepareStatement("select * from post_ad pa inner join state st on (pa.city=st.city) inner join categories cg on (pa.category=cg.value_name) where pa.post_id=?");
    smt.setString(1,post_id);
    ResultSet rs=smt.executeQuery();
    if(rs.next()){
        condition=rs.getString("condition1");
        brand=rs.getString("brand");
        price=rs.getString("cost");
        title=rs.getString("title");
        description=rs.getString("description");
        photo[0]=rs.getString("photo");
        photo[1]=rs.getString("photo_1");
        photo[2]=rs.getString("photo_2");
        category=rs.getString("category");
        email=rs.getString("email");
        city=rs.getString("city");
        if(session.getAttribute("email")!=null)
            contact=rs.getString("contact");
        else
            contact="Login to see contact details";
        date=rs.getString("date");
        ad_view=rs.getString("ad_view");
        state=rs.getString("state");
        categories=rs.getString("categories");
        categories_name=rs.getString("categories_name");
    }
    smt.close();
    rs.close();
    if( x > Integer.parseInt(ad_view)){
        smt = (PreparedStatement) con.prepareStatement("update post_ad set ad_view=? where post_id=?");
        smt.setString(1,String.valueOf(x));
        smt.setString(2,post_id);
        smt.executeUpdate();
        ad_view=String.valueOf(x);
    }else{
        application.setAttribute("ad_view"+aview,Integer.parseInt(ad_view));
        x=Integer.parseInt(ad_view);
    }
    con.close();
}
catch(Exception e)
{
    out.println("<br/>Error with database : ");
}

%>
<!DOCTYPE html>
<html>
<head>
<title>Resale a Business Category Flat Bootstrap Responsive Website Template | Single :: w3layouts</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/bootstrap-select.css">
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
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
		<link rel="stylesheet" href="css/flexslider.css" media="screen" />
</head>
<body>
    <%@include file="header.jsp" %>
	<div class="banner text-center">
	  <div class="container">    
			<h1>Sell or Advertise   <span class="segment-heading">    anything online </span> with Resale</h1>
			<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry</p>
			<a href="post-ad.jsp">Post Free Ad</a>
	  </div>
	</div>
	<!--single-page-->
	<div class="single-page main-grid-border">
		<div class="container">
			<ol class="breadcrumb" style="margin-bottom: 5px;">
				<li><a href="index.jsp">Home</a></li>
				<li><a href="all-classifieds.jsp">All Ads</a></li>
				<li class="active"><a href="classifiedsearch.jsp?t1=all&t2=<%=category%>"><%=categories%></a></li>
				<li class="active"><%=categories_name%></li>
			</ol>
			<div class="product-desc">
				<div class="col-md-7 product-view">
					<h2><%=title%></h2>
					<p> <i class="glyphicon glyphicon-map-marker"></i><a href="#"><%=state%></a>, <a href="#"><%=city%></a>| Added at <%=date%>, Ad ID: <%=post_id%></p>
					<div class="flexslider">
						<ul class="slides">
							<li data-thumb="<%=photo[0]%>">
                                                            <img alt="<%=photo[0]%>" src="<%=photo[0]%>" />
							</li>
							<li data-thumb="<%=photo[1]%>">
								<img alt="<%=photo[1]%>" src="<%=photo[1]%>" />
							</li>
							<li data-thumb="<%=photo[2]%>">
								<img alt="<%=photo[2]%>" src="<%=photo[2]%>" />
							</li>
						</ul>
					</div>
					<!-- FlexSlider -->
					  <script defer src="js/jquery.flexslider.js"></script>
					<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />

						<script>
					// Can also be used with $(document).ready()
					$(window).load(function() {
					  $('.flexslider').flexslider({
						animation: "slide",
						controlNav: "thumbnails"
					  });
					});
					</script>
					<!-- //FlexSlider -->
					<div class="product-details">
						<h4>Brand : <a href="#"><%=brand%></a></h4>
						<h4>Views : <strong><%=ad_view%></strong></h4>
						<!--<p><strong>Display </strong>: 1.5 inch HD LCD Touch Screen</p>-->
						<p><strong>Summary</strong> : <%=description%>.</p>
					
					</div>
				</div>
				<div class="col-md-5 product-details-grid">
					<div class="item-price">
						<div class="product-price">
							<p class="p-price">Price</p>
							<h3 class="rate">Rs. <%=price%>/-</h3>
							<div class="clearfix"></div>
						</div>
						<div class="condition">
							<p class="p-price">Condition</p>
							<h4><%=condition%></h4>
							<div class="clearfix"></div>
						</div>
						<div class="itemtype">
							<p class="p-price">Item Type</p>
							<h4><%=categories%></h4>
							<div class="clearfix"></div>
						</div>
					</div>
					<div class="interested text-center">
						<h4>Interested in this Ad?<small> Contact the Seller!</small></h4>
						<p>
                                                    <i class="glyphicon glyphicon-earphone"></i>
                                                    <%String ak="";
                                                      if(!contact.equals("Login to see contact details"))
                                                        ak="+91-";
                                                    %><%=ak%><%=contact%></p>
                                        </div>
                                        <div class="interested text-center">
                                                <h4>Message via site <small> Click to send message</small></h4>
                                                <p>
                                                    <button class="btn btn-info btn-lg" type="button">
                                                        <a href="message.jsp?x=<%=post_id%>">Message</a>
                                                    </button>
                                                </p>
					</div>
						<div class="tips">
						<h4>Safety Tips for Buyers</h4>
							<ol>
								<li><a href="#">Contrary to popular belief.</a></li>
								<li><a href="#">Contrary to popular belief.</a></li>
								<li><a href="#">Contrary to popular belief.</a></li>
								<li><a href="#">Contrary to popular belief.</a></li>
								<li><a href="#">Contrary to popular belief.</a></li>
								<li><a href="#">Contrary to popular belief.</a></li>
								<li><a href="#">Contrary to popular belief.</a></li>
								<li><a href="#">Contrary to popular belief.</a></li>
								<li><a href="#">Contrary to popular belief.</a></li>
							</ol>
						</div>
				</div>
			<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!--//single-page-->
	<%@include file="footer.jsp" %>