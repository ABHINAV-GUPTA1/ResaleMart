<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html>
<head>
<title>Resale a Business Category Flat Bootstrap Responsive Website Template | Popular-Search :: w3layouts</title>
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
		<link rel="stylesheet" type="text/css" href="css/easy-responsive-tabs.css " />
    <script src="js/easyResponsiveTabs.js"></script>
</head>
<body>
<div class="header">
		<div class="container">
			<div class="logo">
				<a href="index.jsp"><span>Re</span>sale</a>
			</div>
			<div class="header-right">
			<a class="account" href="login.jsp">My Account</a>
			<span class="active uls-trigger">Select language</span>
	<!-- Large modal -->
			<div class="selectregion">
				<button class="btn btn-primary" data-toggle="modal" data-target="#myModal">
				Select Your Region</button>
					<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel"
					aria-hidden="true">
						<div class="modal-dialog modal-lg">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
										&times;</button>
									<h4 class="modal-title" id="myModalLabel">
										Please Choose Your Location</h4>
								</div>
								<div class="modal-body">
									 <form class="form-horizontal" role="form">
										<div class="form-group">
											<select id="basic2" class="show-tick form-control" multiple>
												<optgroup label="Popular Cities">
													<option selected style="display:none;color:#eee;">Select City</option>
													<option>Birmingham</option>
													<option>Anchorage</option>
													<option>Phoenix</option>
													<option>Little Rock</option>
													<option>Los Angeles</option>
													<option>Denver</option>
													<option>Bridgeport</option>
													<option>Wilmington</option>
													<option>Jacksonville</option>
													<option>Atlanta</option>
													<option>Honolulu</option>
													<option>Boise</option>
													<option>Chicago</option>
													<option>Indianapolis</option>
												</optgroup>
												<optgroup label="More Cities">
													<optgroup label="Alabama">
														<option>Birmingham</option>
														<option>Montgomery</option>
														<option>Mobile</option>
														<option>Huntsville</option>
														<option>Tuscaloosa</option>
													</optgroup>
													<optgroup label="Alaska">
														<option>Anchorage</option>
														<option>Fairbanks</option>
														<option>Juneau</option>
														<option>Sitka</option>
														<option>Ketchikan</option>
													</optgroup>
													<optgroup label="Arizona">
														<option>Phoenix</option>
														<option>Tucson</option>
														<option>Mesa</option>
														<option>Chandler</option>
														<option>Glendale</option>
													</optgroup>
													<optgroup label="Arkansas">
														<option>Little Rock</option>
														<option>Fort Smith</option>
														<option>Fayetteville</option>
														<option>Springdale</option>
														<option>Jonesboro</option>
													</optgroup>
													<optgroup label="California">
														<option>Los Angeles</option>
														<option>San Diego</option>
														<option>San Jose</option>
														<option>San Francisco</option>
														<option>Fresno</option>
													</optgroup>
													<optgroup label="Colorado">
														<option>Denver</option>
														<option>Colorado</option>
														<option>Aurora</option>
														<option>Fort Collins</option>
														<option>Lakewood</option>
													</optgroup>
													<optgroup label="Connecticut">
														<option>Bridgeport</option>
														<option>New Haven</option>
														<option>Hartford</option>
														<option>Stamford</option>
														<option>Waterbury</option>
													</optgroup>
													<optgroup label="Delaware">
														<option>Wilmington</option>
														<option>Dover</option>
														<option>Newark</option>
														<option>Bear</option>
														<option>Middletown</option>
													</optgroup>
													<optgroup label="Florida">
														<option>Jacksonville</option>
														<option>Miami</option>
														<option>Tampa</option>
														<option>St. Petersburg</option>
														<option>Orlando</option>
													</optgroup>
													<optgroup label="Georgia">
														<option>Atlanta</option>
														<option>Augusta</option>
														<option>Columbus</option>
														<option>Savannah</option>
														<option>Athens</option>
													</optgroup>
													<optgroup label="Hawaii">
														<option>Honolulu</option>
														<option>Pearl City</option>
														<option>Hilo</option>
														<option>Kailua</option>
														<option>Waipahu</option>
													</optgroup>
													<optgroup label="Idaho">
														<option>Boise</option>
														<option>Nampa</option>
														<option>Meridian</option>
														<option>Idaho Falls</option>
														<option>Pocatello</option>
													</optgroup>
													<optgroup label="Illinois">
														<option>Chicago</option>
														<option>Aurora</option>
														<option>Rockford</option>
														<option>Joliet</option>
														<option>Naperville</option>
													</optgroup>
													<optgroup label="Indiana">
														<option>Indianapolis</option>
														<option>Fort Wayne</option>
														<option>Evansville</option>
														<option>South Bend</option>
														<option>Hammond</option>														       
													</optgroup>
													<optgroup label="Iowa">
														<option>Des Moines</option>
														<option>Cedar Rapids</option>
														<option>Davenport</option>
														<option>Sioux City</option>
														<option>Waterloo</option>       													
													</optgroup>
													<optgroup label="Kansas">
														<option>Wichita</option>
														<option>Overland Park</option>
														<option>Kansas City</option>
														<option>Topeka</option>
														<option>Olathe  </option>            													
													</optgroup>
													<optgroup label="Kentucky">
														<option>Louisville</option>
														<option>Lexington</option>
														<option>Bowling Green</option>
														<option>Owensboro</option>
														<option>Covington</option>        														
													</optgroup>
													<optgroup label="Louisiana">
														<option>New Orleans</option>
														<option>Baton Rouge</option>
														<option>Shreveport</option>
														<option>Metairie</option>
														<option>Lafayette</option>          														
													</optgroup>
													<optgroup label="Maine">
														<option>Portland</option>
														<option>Lewiston</option>
														<option>Bangor</option>
														<option>South Portland</option>
														<option>Auburn</option>         														
													</optgroup>
													<optgroup label="Maryland">
														<option>Baltimore</option>
														<option>Frederick</option>
														<option>Rockville</option>
														<option>Gaithersburg</option>
														<option>Bowie</option>         														
													</optgroup>
													<optgroup label="Massachusetts">
														<option>Boston</option>
														<option>Worcester</option>
														<option>Springfield</option>
														<option>Lowell</option>
														<option>Cambridge</option>  
													</optgroup>
													<optgroup label="Michigan">
														<option>Detroit</option>
														<option>Grand Rapids</option>
														<option>Warren</option>
														<option>Sterling Heights</option>
														<option>Lansing</option> 
													</optgroup>
													<optgroup label="Minnesota">
														<option>Minneapolis</option>
														<option>St. Paul</option>
														<option>Rochester</option>
														<option>Duluth</option>
														<option>Bloomington</option>      														
													</optgroup>
													<optgroup label="Mississippi">
														<option>Jackson</option>
														<option>Gulfport</option>
														<option>Southaven</option>
														<option>Hattiesburg</option>
														<option>Biloxi</option>         														
													</optgroup>
													<optgroup label="Missouri">
														<option>Kansas City</option>
														<option>St. Louis</option>
														<option>Springfield</option>
														<option>Independence</option>
														<option>Columbia</option>            														
													</optgroup>
													<optgroup label="Montana">
														<option>Billings</option>
														<option>Missoula</option>
														<option>Great Falls</option>
														<option>Bozeman</option>
														<option>Butte-Silver Bow</option>         														
													</optgroup>
													<optgroup label="Nebraska">
														<option>Omaha</option>
														<option>Lincoln</option>
														<option>Bellevue</option>
														<option>Grand Island</option>
														<option>Kearney</option>        													
													</optgroup>
													<optgroup label="Nevada">
														<option>Las Vegas</option>
														<option>Henderson</option>
														<option>North Las Vegas</option>
														<option>Reno</option>
														<option>Sunrise Manor</option>            													
													</optgroup>
													<optgroup label="New Hampshire">
														<option>Manchesters</option>
														<option>Nashua</option>
														<option>Concord</option>
														<option>Dover</option>
														<option>Rochester</option>              													
													</optgroup>
													<optgroup label="New Jersey">
														<option>Newark</option>
														<option>Jersey City</option>
														<option>Paterson</option>
														<option>Elizabeth</option>
														<option>Edison</option> 
													</optgroup>
													<optgroup label="New Mexico">
														<option>Albuquerque</option>
														<option>Las Cruces</option>
														<option>Rio Rancho</option>
														<option>Santa Fe</option>
														<option>Roswell</option>       
													</optgroup>
													<optgroup label="New York">
														<option>New York</option>
														<option>Buffalo</option>
														<option>Rochester</option>
														<option>Yonkers</option>
														<option>Syracuse</option>        														
													</optgroup>
													<optgroup label="North Carolina">
														<option>Charlotte</option>
														<option>Raleigh</option>
														<option>Greensboro</option>
														<option>Winston-Salem</option>
														<option>Durham</option>          														
													</optgroup>
													<optgroup label="North Dakota">
														<option>Fargo</option>
														<option>Bismarck</option>
														<option>Grand Forks</option>
														<option>Minot</option>
														<option>West Fargo</option>
													</optgroup>
													<optgroup label="Ohio">
														<option>Columbus</option>
														<option>Cleveland</option>
														<option>Cincinnati</option>
														<option>Toledo</option>
														<option>Akron</option>      
													</optgroup>
													<optgroup label="Oklahoma">
														<option>Oklahoma City</option>
														<option>Tulsa</option>
														<option>Norman</option>
														<option>Broken Arrow</option>
														<option>Lawton</option>        														
													</optgroup>
													<optgroup label="Oregon">
														<option>Portland</option>
														<option>Eugene</option>
														<option>Salem</option>
														<option>Gresham</option>
														<option>Hillsboro</option>          														
													</optgroup>
													<optgroup label="Pennsylvania">
														<option>Philadelphia</option>
														<option>Pittsburgh</option>
														<option>Allentown</option>
														<option>Erie</option>
														<option>Reading</option>         														
													</optgroup>
													<optgroup label="Rhode Island">
														<option>Providence</option>
														<option>Warwick</option>
														<option>Cranston</option>
														<option>Pawtucket</option>
														<option>East Providence</option>   
													</optgroup>
													<optgroup label="South Carolina">
														<option>Columbia</option>
														<option>Charleston</option>
														<option>North Charleston</option>
														<option>Mount Pleasant</option>
														<option>Rock Hill</option> 
													</optgroup>
													<optgroup label="South Dakota">
														<option>Sioux Falls</option>
														<option>Rapid City</option>
														<option>Aberdeen</option>
														<option>Brookings</option>
														<option>Watertown</option> 
													</optgroup>
													<optgroup label="Tennessee">
														<option>Memphis</option>
														<option>Nashville</option>
														<option>Knoxville</option>
														<option>Chattanooga</option>
														<option>Clarksville</option>       
													</optgroup>
													<optgroup label="Texas">
														<option>Houston</option>
														<option>San Antonio</option>
														<option>Dallas</option>
														<option>Austin</option>
														<option>Fort Worth</option>   
													</optgroup>
													<optgroup label="Utah">
														<option>Salt Lake City</option>
														<option>West Valley City</option>
														<option>Provo</option>
														<option>West Jordan</option>
														<option>Orem</option>   
													</optgroup>	
													<optgroup label="Vermont">
														<option>Burlington</option>
														<option>Essex</option>
														<option>South Burlington</option>
														<option>Colchester</option>
														<option>Rutland</option>   
													</optgroup>
													<optgroup label="Virginia">
														<option>Virginia Beach</option>
														<option>Norfolk</option>
														<option>Chesapeake</option>
														<option>Arlington</option>
														<option>Richmond</option> 
													</optgroup>	
													<optgroup label="Washington">
														<option>Seattle</option>
														<option>Spokane</option>
														<option>Tacoma</option>
														<option>Vancouver</option>
														<option>Bellevue</option> 
													</optgroup>	
													<optgroup label="West Virginia">
														<option>Charleston</option>
														<option>Huntington</option>
														<option>Parkersburg</option>
														<option>Morgantown</option>
														<option>Wheeling</option> 
													</optgroup>	
													<optgroup label="Wisconsin">
														<option>Milwaukee</option>
														<option>Madison</option>
														<option>Green Bay</option>
														<option>Kenosha</option>
														<option>Racine</option>
													</optgroup>
													<optgroup label="Wyoming">
														<option>Cheyenne</option>
														<option>Casper</option>
														<option>Laramie</option>
														<option>Gillette</option>
														<option>Rock Springs</option>
													</optgroup>			
												</optgroup>
											</select>
										</div>
									  </form>    
								</div>
							</div>
						</div>
					</div>
				<script>
				$('#myModal').modal('');
				</script>
			</div>
		</div>
		</div>
	</div>
	<div class="banner text-center">
	  <div class="container">    
			<h1>Sell or Advertise   <span class="segment-heading">    anything online </span> with Resale</h1>
			<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry</p>
			<a href="post-ad.jsp">Post Free Ad</a>
	  </div>
	</div>
	<!-- Popular-search -->
	<div class="popular-search main-grid-border">
		<div class="container">
			<h2 class="head">Most popular search phrases</h2>
				<div class="tags">
					<p>
					<a class="tag1" href="single.jsp">At vero eos</a>
					<a class="tag2" href="single.jsp">doloremque</a>
					<a class="tag3" href="single.jsp">On the other</a>
					<a class="tag4" href="single.jsp">pain was</a>
					<a class="tag5" href="single.jsp">rationally encounter</a>
					<a class="tag6" href="single.jsp">praesentium voluptatum</a>
					<a class="tag7" href="single.jsp">est, omnis</a>
					<a class="tag8" href="single.jsp">who are so beguiled</a>
					<a class="tag9" href="single.jsp">when nothing</a>
					<a class="tag10" href="single.jsp">owing to the</a>
					<a class="tag11" href="single.jsp">pains to avoid</a>
					<a class="tag12" href="single.jsp">tempora incidunt</a>
					<a class="tag13" href="single.jsp">pursues or desires</a>
					<a class="tag14" href="single.jsp">Bonorum et</a>
					<a class="tag15" href="single.jsp">written by Cicero</a>
					<a class="tag16" href="single.jsp">Ipsum passage</a>
					<a class="tag17" href="single.jsp">exercitationem ullam</a>
					<a class="tag18" href="single.jsp">mistaken idea</a>
					<a class="tag19" href="single.jsp">ducimus qui</a>
					<a class="tag20" href="single.jsp">holds in these</a>
					</p>
				</div>
		</div>
		<div class="popular-regions">
			<div class="container">
				<h4>Regions</h4>
				<ul>
					<li><a href="regions.jsp">Alabama</a></li>
					<li><a href="regions.jsp">Alaska</a></li>
					<li><a href="regions.jsp">Arizona</a></li>
					<li><a href="regions.jsp">Arkansas</a></li>
					<li><a href="regions.jsp">California</a></li>
					<li><a href="regions.jsp">Colorado</a></li>
					<li><a href="regions.jsp">Connecticut</a></li>
					<li><a href="regions.jsp">Delaware</a></li>
					<li><a href="regions.jsp">Florida</a></li>
					<li><a href="regions.jsp">Georgia</a></li>
					<li><a href="regions.jsp">Hawaii</a></li>
					<li><a href="regions.jsp">Idaho</a></li>
					<li><a href="regions.jsp">Illinois</a></li>
					<li><a href="regions.jsp">Indiana</a></li>
					<li><a href="regions.jsp">Iowa</a></li>
					<li><a href="regions.jsp">Kansas</a></li>
					<li><a href="regions.jsp">Kentucky</a></li>
					<li><a href="regions.jsp">Louisiana</a></li>
					<li><a href="regions.jsp">Maine</a></li>
					<li><a href="regions.jsp">Maryland</a></li>
					<li><a href="regions.jsp">Massachusetts</a></li>
					<li><a href="regions.jsp">Michigan</a></li>
					<li><a href="regions.jsp">Minnesota</a></li>
					<li><a href="regions.jsp">Mississippi</a></li>
					<li><a href="regions.jsp">Missouri</a></li>
					<li><a href="regions.jsp">Montana</a></li>
					<li><a href="regions.jsp">Nebraska</a></li>
					<li><a href="regions.jsp">Nevada</a></li>
					<li><a href="regions.jsp">New Hampshire</a></li>
					<li><a href="regions.jsp">New Jersey</a></li>
					<li><a href="regions.html#">New Mexico</a></li>
					<li><a href="regions.jsp">New York</a></li>
					<li><a href="regions.jsp">North Carolina</a></li>
					<li><a href="regions.jsp">North Dakota</a></li>
					<li><a href="regions.jsp">Ohio</a></li>
					<li><a href="regions.jsp">Oklahoma</a></li>
					<li><a href="regions.jsp">Oregon</a></li>
					<li><a href="regions.jsp">Pennsylvania</a></li>
					<li><a href="regions.jsp">Rhode Island</a></li>
					<li><a href="regions.jsp">South Carolina</a></li>
					<li><a href="regions.jsp">South Dakota</a></li>
					<li><a href="regions.jsp">Tennessee</a></li>
					<li><a href="regions.jsp">Texas</a></li>
					<li><a href="regions.jsp">Utah</a></li>
					<li><a href="regions.jsp">Vermont</a></li>
					<li><a href="regions.jsp">Virginia</a></li>
					<li><a href="regions.jsp">Washington</a></li>
					<li><a href="regions.jsp">West Virginia</a></li>
					<li><a href="regions.jsp">Wisconsin</a></li>
					<li><a href="regions.jsp">Wyoming</a></li>
					<div class="clearfix"></div>
				</ul>
				<h4 class="mpcwc">Most popular cities in whole country</h4>
				<ul>
					<li><a href="all-classifieds.jsp">Birmingham</a></li>
					<li><a href="all-classifieds.jsp">Anchorage</a></li>
					<li><a href="all-classifieds.jsp">Phoenix</a></li>
					<li><a href="all-classifieds.jsp">Little Rock</a></li>
					<li><a href="all-classifieds.jsp">Los Angeles</a></li>
					<li><a href="all-classifieds.jsp">Denver</a></li>
					<li><a href="all-classifieds.jsp">Bridgeport</a></li>
					<li><a href="all-classifieds.jsp">Wilmington</a></li>
					<li><a href="all-classifieds.jsp">Jacksonville</a></li>
					<li><a href="all-classifieds.jsp">Atlanta</a></li>
					<li><a href="all-classifieds.jsp">Honolulu</a></li>
					<li><a href="all-classifieds.jsp">Boise</a></li>
					<li><a href="all-classifieds.jsp">Chicago</a></li>
					<li><a href="all-classifieds.jsp">Indianapolis</a></li>
					<div class="clearfix"></div>
				</ul>
			</div>
		</div>
		<div class="popular-categories">
			<div class="container">
				<div class="popular-category">
					<h4>Mobiles</h4>
					<ul>
						<li><a href="mobiles.jsp">Iphone</a></li>
						<li><a href="mobiles.jsp">Samsung</a></li>
						<li><a href="mobiles.jsp">Iphone 6</a></li>
						<li><a href="mobiles.jsp">Iphone 5s</a></li>
						<li><a href="mobiles.jsp">Exchange</a></li>
						<li><a href="mobiles.jsp">Nokia</a></li>
						<li><a href="mobiles.jsp">Sony</a></li>
						<li><a href="mobiles.jsp">Htc</a></li>
						<li><a href="mobiles.jsp">I phone</a></li>
						<li><a href="mobiles.jsp">Iphone 5</a></li>
						<li><a href="mobiles.jsp">Blackberry</a></li>
						<li><a href="mobiles.jsp">Cdma</a></li>
						<li><a href="mobiles.jsp">Micromax</a></li>
						<li><a href="mobiles.jsp">Iphone 4s</a></li>
						<li><a href="mobiles.jsp">Lenovo</a></li>
						<li><a href="mobiles.jsp">Apple</a></li>
						<li><a href="mobiles.jsp">Mi</a></li>
						<li><a href="mobiles.jsp">I phone 6</a></li>
						<li><a href="mobiles.jsp">I phone 5s</a></li>
						<li><a href="mobiles.jsp">Moto</a></li>
					</ul>
				</div>
				<div class="popular-category">
					<h4>Electronics & Appliances</h4>
					<ul>
						<li><a href="electronics-appliances.jsp">Laptop</a></li>
						<li><a href="electronics-appliances.jsp">Dj</a></li>
						<li><a href="electronics-appliances.jsp">Tv</a></li>
						<li><a href="electronics-appliances.jsp">Projector</a></li>
						<li><a href="electronics-appliances.jsp">Led tv</a></li>
						<li><a href="electronics-appliances.jsp">Speakers</a></li>
						<li><a href="electronics-appliances.jsp">Home theater</a></li>
						<li><a href="electronics-appliances.jsp">Laptops</a></li>
						<li><a href="electronics-appliances.jsp">Printer</a></li>
						<li><a href="electronics-appliances.jsp">Speaker</a></li>
						<li><a href="electronics-appliances.jsp">Led</a></li>
						<li><a href="electronics-appliances.jsp">Amplifier</a></li>
						<li><a href="electronics-appliances.jsp">Generator</a></li>
						<li><a href="electronics-appliances.jsp">Music system</a></li>
						<li><a href="electronics-appliances.jsp">Washing machine</a></li>
						<li><a href="electronics-appliances.jsp">Camera</a></li>
						<li><a href="electronics-appliances.jsp">Sony</a></li>
						<li><a href="electronics-appliances.jsp">Fridge</a></li>
						<li><a href="electronics-appliances.jsp">Cpu</a></li>
						<li><a href="electronics-appliances.jsp">Ac</a></li>
					</ul>
				</div>
				<div class="popular-category">
					<h4>Cars</h4>
					<ul>
						<li><a href="cars.jsp">Innova</a></li>
						<li><a href="cars.jsp">Scorpio</a></li>
						<li><a href="cars.jsp">Jeep</a></li>
						<li><a href="cars.jsp">Alto</a></li>
						<li><a href="cars.jsp">Maruti 800</a></li>
						<li><a href="cars.jsp">Bolero</a></li>
						<li><a href="cars.jsp">Zen</a></li>
						<li><a href="cars.jsp">Honda city</a></li>
						<li><a href="cars.jsp">Delhi</a></li>
						<li><a href="cars.jsp">Omni</a></li>
						<li><a href="cars.jsp">Tavera</a></li>
						<li><a href="cars.jsp">Indica</a></li>
						<li><a href="cars.jsp">Santro</a></li>
						<li><a href="cars.jsp">Bmw</a></li>
						<li><a href="cars.jsp">Mumbai</a></li>
						<li><a href="cars.jsp">Tata sumo</a></li>
						<li><a href="cars.jsp">Kerala</a></li>
						<li><a href="cars.jsp">Swift vdi</a></li>
						<li><a href="cars.jsp">Fortuner</a></li>
					</ul>
				</div>
				<div class="popular-category">
					<h4>Bikes</h4>
					<ul>
						<li><a href="bikes.jsp">Bullet</a></li>
						<li><a href="bikes.jsp">Royal enfield</a></li>
						<li><a href="bikes.jsp">R15</a></li>
						<li><a href="bikes.jsp">Fz</a></li>
						<li><a href="bikes.jsp">Activa</a></li>
						<li><a href="bikes.jsp">Pulsar</a></li>
						<li><a href="bikes.jsp">Yamaha</a></li>
						<li><a href="bikes.jsp">Mumbai</a></li>
						<li><a href="bikes.jsp">Ktm</a></li>
						<li><a href="bikes.jsp">Pulsar 220</a></li>
						<li><a href="bikes.jsp">Bangalore</a></li>
						<li><a href="bikes.jsp">Rx</a></li>
						<li><a href="bikes.jsp">Pune</a></li>
						<li><a href="bikes.jsp">Apache</a></li>
						<li><a href="bikes.jsp">Harley davidson</a></li>
						<li><a href="bikes.jsp">Delhi</a></li>
						<li><a href="bikes.jsp">Kolkata</a></li>
						<li><a href="bikes.jsp">Hyderabad</a></li>
						<li><a href="bikes.jsp">Karizma</a></li>
						<li><a href="bikes.jsp">Unicorn</a></li>
					</ul>
				</div>
				<div class="popular-category">
					<h4>Furniture</h4>
					<ul>
						<li><a href="furnitures.jsp">Sofa</a></li>
						<li><a href="furnitures.jsp">Bed</a></li>
						<li><a href="furnitures.jsp">Dining table</a></li>
						<li><a href="furnitures.jsp">Sofa set</a></li>
						<li><a href="furnitures.jsp">Almirah</a></li>
						<li><a href="furnitures.jsp">Table</a></li>
						<li><a href="furnitures.jsp">Sofa cum bed</a></li>
						<li><a href="furnitures.jsp">Chair</a></li>
						<li><a href="furnitures.jsp">Double bed</a></li>
						<li><a href="furnitures.jsp">Computer table</a></li>
						<li><a href="furnitures.jsp">Antique</a></li>
						<li><a href="furnitures.jsp">Chairs</a></li>
						<li><a href="furnitures.jsp">Study table</a></li>
						<li><a href="furnitures.jsp">Office table</a></li>
						<li><a href="furnitures.jsp">Dressing table</a></li>
						<li><a href="furnitures.jsp">Tv stand</a></li>
						<li><a href="furnitures.jsp">Mumbai</a></li>
						<li><a href="furnitures.jsp">Wardrobe</a></li>
						<li><a href="furnitures.jsp">Cupboard</a></li>
						<li><a href="furnitures.jsp">Pune</a></li>
					</ul>
				</div>
				<div class="popular-category">
					<h4>Pets</h4>
					<ul>
						<li><a href="pets.jsp">Cow</a></li>
						<li><a href="pets.jsp">Cows</a></li>
						<li><a href="pets.jsp">Goat</a></li>
						<li><a href="pets.jsp">Cat</a></li>
						<li><a href="pets.jsp">Aseel</a></li>
						<li><a href="pets.jsp">Horse</a></li>
						<li><a href="pets.jsp">Pigeons</a></li>
						<li><a href="pets.jsp">Pigeon</a></li>
						<li><a href="pets.jsp">Goats</a></li>
						<li><a href="pets.jsp">Cats</a></li>
						<li><a href="pets.jsp">Birds</a></li>
						<li><a href="pets.jsp">Rottweiler</a></li>
						<li><a href="pets.jsp">Rabbit</a></li>
						<li><a href="pets.jsp">Pug</a></li>
						<li><a href="pets.jsp">Pitbull</a></li>
						<li><a href="pets.jsp">German shepherd</a></li>
						<li><a href="pets.jsp">Buffalo</a></li>
						<li><a href="pets.jsp">Labrador</a></li>
						<li><a href="pets.jsp">Dog</a></li>
						<li><a href="pets.jsp">Hens</a></li>
					</ul>
				</div>
				<div class="popular-category">
					<h4>Books, Sports & Hobbies</h4>
					<ul>
						<li><a href="books-sports-hobbies.jsp">Coin</a></li>
						<li><a href="books-sports-hobbies.jsp">Books</a></li>
						<li><a href="books-sports-hobbies.jsp">Bat</a></li>
						<li><a href="books-sports-hobbies.jsp">Football</a></li>
						<li><a href="books-sports-hobbies.jsp">Treadmill</a></li>
						<li><a href="books-sports-hobbies.jsp">Guitar</a></li>
						<li><a href="books-sports-hobbies.jsp">Coins</a></li>
						<li><a href="books-sports-hobbies.jsp">Moradabad</a></li>
						<li><a href="books-sports-hobbies.jsp">Cycle</a></li>
						<li><a href="books-sports-hobbies.jsp">Antique</a></li>
						<li><a href="books-sports-hobbies.jsp">Gym</a></li>
						<li><a href="books-sports-hobbies.jsp">Carrom board</a></li>
						<li><a href="books-sports-hobbies.jsp">Book</a></li>
						<li><a href="books-sports-hobbies.jsp">Shoes</a></li>
						<li><a href="books-sports-hobbies.jsp">Cricket bat</a></li>
						<li><a href="books-sports-hobbies.jsp">Sport</a></li>
						<li><a href="books-sports-hobbies.jsp">East india</a></li>
						<li><a href="books-sports-hobbies.jsp">Skates</a></li>
						<li><a href="books-sports-hobbies.jsp">Cricket bats</a></li>
						<li><a href="books-sports-hobbies.jsp">Sports</a></li>
					</ul>
				</div>	
				<div class="popular-category">
					<h4>Fashion</h4>
					<ul>
						<li><a href="fashion.jsp">Watch</a></li>
						<li><a href="fashion.jsp">Watches</a></li>
						<li><a href="fashion.jsp">Mumbai</a></li>
						<li><a href="fashion.jsp">Shoes</a></li>
						<li><a href="fashion.jsp">Jewellery</a></li>
						<li><a href="fashion.jsp">Bag</a></li>
						<li><a href="fashion.jsp">Saree</a></li>
						<li><a href="fashion.jsp">Jacket</a></li>
						<li><a href="fashion.jsp">Hyderabad</a></li>
						<li><a href="fashion.jsp">Kolkata</a></li>
						<li><a href="fashion.jsp">Kerala</a></li>
						<li><a href="fashion.jsp">Delhi</a></li>
						<li><a href="fashion.jsp">Bra</a></li>
						<li><a href="fashion.jsp">Bags</a></li>
						<li><a href="fashion.jsp">Ahmedabad</a></li>
						<li><a href="fashion.jsp">Bangalore</a></li>
						<li><a href="fashion.jsp">Sarees</a></li>
						<li><a href="fashion.jsp">Sunglasses</a></li>
						<li><a href="fashion.jsp">Gold</a></li>
						<li><a href="fashion.jsp">Nike</a></li>
					</ul>
				</div>
				<div class="popular-category">
					<h4>Kids</h4>
					<ul>
						<li><a href="kids.jsp">Car</a></li>
						<li><a href="kids.jsp">Cycle</a></li>
						<li><a href="kids.jsp">Mumbai</a></li>
						<li><a href="kids.jsp">Toys</a></li>
						<li><a href="kids.jsp">Bike</a></li>
						<li><a href="kids.jsp">High chair</a></li>
						<li><a href="kids.jsp">Delhi</a></li>
						<li><a href="kids.jsp">Cycles</a></li>
						<li><a href="kids.jsp">Pune</a></li>
						<li><a href="kids.jsp">Stroller</a></li>
						<li><a href="kids.jsp">Hyderabad</a></li>
						<li><a href="kids.jsp">Cars</a></li>
						<li><a href="kids.jsp">Walker</a></li>
						<li><a href="kids.jsp">Tricycle</a></li>
						<li><a href="kids.jsp">Baby walker</a></li>
						<li><a href="kids.jsp">Car seat</a></li>
						<li><a href="kids.jsp">Cradle</a></li>
						<li><a href="kids.jsp">Kids cycle</a></li>
						<li><a href="kids.jsp">Kolkata baby</a></li>
						<li><a href="kids.jsp">Battery car</a></li>
					</ul>
				</div>
				<div class="popular-category">
					<h4>Services</h4>
					<ul>
						<li><a href="services.jsp">Vip numbers</a></li>
						<li><a href="services.jsp">Fancy number</a></li>
						<li><a href="services.jsp">Insurance</a></li>
						<li><a href="services.jsp">Rent a car</a></li>
						<li><a href="services.jsp">Massage</a></li>
						<li><a href="services.jsp">Driver</a></li>
						<li><a href="services.jsp">Fancy numbers</a></li>
						<li><a href="services.jsp">Service</a></li>
						<li><a href="services.jsp">Vip number</a></li>
						<li><a href="services.jsp">Business</a></li>
						<li><a href="services.jsp">Loans</a></li>
						<li><a href="services.jsp">Cook</a></li>
						<li><a href="services.jsp">Distributors</a></li>
						<li><a href="services.jsp">Travel</a></li>
						<li><a href="services.jsp">Services</a></li>
						<li><a href="services.jsp">Pop up calls</a></li>
						<li><a href="services.jsp">Icloud</a></li>
						<li><a href="services.jsp">Visa</a></li>
						<li><a href="services.jsp">Kerala rent car</a></li>
						<li><a href="services.jsp">Partners</a></li>
					</ul>
				</div>	
				<div class="popular-category">
					<h4>Jobs</h4>
					<ul>
						<li><a href="jobs.jsp">Driver</a></li>
						<li><a href="jobs.jsp">Fresher</a></li>
						<li><a href="jobs.jsp">Driver job</a></li>
						<li><a href="jobs.jsp">Delivery boy</a></li>
						<li><a href="jobs.jsp">Kolkata</a></li>
						<li><a href="jobs.jsp">Part time</a></li>
						<li><a href="jobs.jsp">Teacher</a></li>
						<li><a href="jobs.jsp">Driver jobs</a></li>
						<li><a href="jobs.jsp">Office boy</a></li>
						<li><a href="jobs.jsp">Data entry</a></li>
						<li><a href="jobs.jsp">Delhi</a></li>
						<li><a href="jobs.jsp">Computer operator</a></li>
						<li><a href="jobs.jsp">Data entry</a></li>
						<li><a href="jobs.jsp">Graphic designer</a></li>
						<li><a href="jobs.jsp">Receptionist</a></li>
						<li><a href="jobs.jsp">Mumbai</a></li>
						<li><a href="jobs.jsp">Part time job</a></li>
						<li><a href="jobs.jsp">Work from home</a></li>
						<li><a href="jobs.jsp">Accounting finance</a></li>
						<li><a href="jobs.jsp">Cook</a></li>
						<li><a href="jobs.jsp">Airport	</a></li>
					</ul>
				</div>	
				<div class="popular-category">
					<h4>Real Estate</h4>
					<ul>
						<li><a href="real-estate.jsp">House for sale</a></li>
						<li><a href="real-estate.jsp">Rent</a></li>
						<li><a href="real-estate.jsp">Wayanad</a></li>
						<li><a href="real-estate.jsp">Thodupuzha</a></li>
						<li><a href="real-estate.jsp">Kothamangalam</a></li>
						<li><a href="real-estate.jsp">Muvattupuzha</a></li>
						<li><a href="real-estate.jsp">Pala</a></li>
						<li><a href="real-estate.jsp">Sale</a></li>
						<li><a href="real-estate.jsp">Agriculture land</a></li>
						<li><a href="real-estate.jsp">House for rent</a></li>
						<li><a href="real-estate.jsp">Irinjalakuda</a></li>
						<li><a href="real-estate.jsp">Kottayam</a></li>
						<li><a href="real-estate.jsp">Powai</a></li>
						<li><a href="real-estate.jsp">Changanacherry</a></li>
						<li><a href="real-estate.jsp">Aluva</a></li>
						<li><a href="real-estate.jsp">Shop</a></li>
						<li><a href="real-estate.jsp">Land</a></li>
						<li><a href="real-estate.jsp">House</a></li>
						<li><a href="real-estate.jsp">Hyderabad</a></li>
						<li><a href="real-estate.jsp">Pathanamthitta</a></li>
					</ul>
				</div>					
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!-- //Popular-search -->
	<!--footer section start-->		
		<footer>
			<div class="footer-top">
				<div class="container">
					<div class="foo-grids">
						<div class="col-md-3 footer-grid">
							<h4 class="footer-head">Who We Are</h4>
							<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.</p>
							<p>The point of using Lorem Ipsum is that it has a more-or-less normal letters, as opposed to using 'Content here.</p>
						</div>
						<div class="col-md-3 footer-grid">
							<h4 class="footer-head">Help</h4>
							<ul>
								<li><a href="howitworks.jsp">How it Works</a></li>						
								<li><a href="sitemap.jsp">Sitemap</a></li>
								<li><a href="faq.jsp">Faq</a></li>
								<li><a href="feedback.jsp">Feedback</a></li>
								<li><a href="contact.jsp">Contact</a></li>
								<li><a href="typography.jsp">Shortcodes</a></li>
							</ul>
						</div>
						<div class="col-md-3 footer-grid">
							<h4 class="footer-head">Information</h4>
							<ul>
								<li><a href="regions.jsp">Locations Map</a></li>	
								<li><a href="terms.jsp">Terms of Use</a></li>
								<li><a href="popular-search.jsp">Popular searches</a></li>	
								<li><a href="privacy.jsp">Privacy Policy</a></li>	
							</ul>
						</div>
						<div class="col-md-3 footer-grid">
							<h4 class="footer-head">Contact Us</h4>
							<span class="hq">Our headquarters</span>
							<address>
								<ul class="location">
									<li><span class="glyphicon glyphicon-map-marker"></span></li>
									<li>CENTER FOR FINANCIAL ASSISTANCE TO DEPOSED NIGERIAN ROYALTY</li>
									<div class="clearfix"></div>
								</ul>	
								<ul class="location">
									<li><span class="glyphicon glyphicon-earphone"></span></li>
									<li>+0 561 111 235</li>
									<div class="clearfix"></div>
								</ul>	
								<ul class="location">
									<li><span class="glyphicon glyphicon-envelope"></span></li>
									<li><a href="mailto:info@example.com">mail@example.com</a></li>
									<div class="clearfix"></div>
								</ul>						
							</address>
						</div>
						<div class="clearfix"></div>
					</div>						
				</div>	
			</div>	
			<div class="footer-bottom text-center">
			<div class="container">
				<div class="footer-logo">
					<a href="index.jsp"><span>Re</span>sale</a>
				</div>
				<div class="footer-social-icons">
					<ul>
						<li><a class="facebook" href="#"><span>Facebook</span></a></li>
						<li><a class="twitter" href="#"><span>Twitter</span></a></li>
						<li><a class="flickr" href="#"><span>Flickr</span></a></li>
						<li><a class="googleplus" href="#"><span>Google+</span></a></li>
						<li><a class="dribbble" href="#"><span>Dribbble</span></a></li>
					</ul>
				</div>
				<div class="copyrights">
					<p> © 2016 Resale. All Rights Reserved | Design by  <a href="http://w3layouts.com/"> W3layouts</a></p>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		</footer>
        <!--footer section end-->
</body>
</html>