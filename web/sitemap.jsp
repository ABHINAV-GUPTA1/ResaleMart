<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html>
<head>
<title>Resale a Business Category Flat Bootstrap Responsive Website Template | Sitemap :: w3layouts</title>
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
	<!-- Regions -->
		<div class="container">
			<h2 class="head">Sitemap</h2>
		</div>
		<div class="sitemap-regions">
			<div class="container">
				<div class="sitemap-region-grid">
					<div class="sitemap-region">
						<h4>Furniture</h4>
						<ul>
							<li><a href="furnitures.jsp">Sofa & Dining</a></li>
							<li><a href="furnitures.jsp">Other Household Items</a></li>
							<li><a href="furnitures.jsp">Beds & Wardrobes</a></li>
							<li><a href="furnitures.jsp">Home Decor & Garden</a></li>
							<li><a href="furnitures.jsp">Kitchen & Other Appliances</a></li>
							<li><a href="furnitures.jsp">Fridge - AC - Washing Machine</a></li>
							<li class="left-gap"><a href="furnitures.jsp">Fridges</a></li>
							<li class="left-gap"><a href="furnitures.jsp">AC</a></li>
							<li class="left-gap"><a href="furnitures.jsp">Washing Machine</a></li>
						</ul>
					</div>
					<div class="sitemap-region">
						<h4>Services</h4>
						<ul>
							<li><a href="services.jsp">Other Services</a></li>
							<li><a href="services.jsp">Education & Classes</a></li>
							<li class="left-gap"><a href="services.jsp">Tutoring</a></li>
							<li class="left-gap"><a href="services.jsp">Other</a></li>
							<li class="left-gap"><a href="services.jsp">Computer</a></li>
							<li class="left-gap"><a href="services.jsp">Language Classes</a></li>
							<li class="left-gap"><a href="services.jsp">Music & Dance</a></li>
							<li><a href="services.jsp">Drivers & Taxi</a></li>
							<li><a href="services.jsp">Web Development</a></li>
							<li><a href="services.jsp">Electronics & Computer Repair</a></li>
							<li class="left-gap"><a href="services.jsp">Computer</a></li>
							<li class="left-gap"><a href="services.jsp">Home Appliances</a></li>
							<li class="left-gap"><a href="services.jsp">Other Electronics</a></li>
							<li class="left-gap"><a href="services.jsp">Mobile</a></li>
							<li><a href="services.jsp">Health & Beauty</a></li>
							<li><a href="services.jsp">Event Services</a></li>
							<li><a href="services.jsp">Movers & Packers</a></li>
							<li><a href="services.jsp">Maids & Domestic Help</a></li>
						</ul>
					</div>
					<div class="sitemap-region">
						<h4>Real Estate</h4>
						<ul>
							<li><a href="real-estate.jsp">Land & Plots</a></li>
							<li class="left-gap"><a href="real-estate.jsp">Sale</a></li>
							<li class="left-gap"><a href="real-estate.jsp">Rent</a></li>
							<li><a href="real-estate.jsp">Apartments</a></li>
							<li class="left-gap"><a href="real-estate.jsp">Rent</a></li>
							<li class="left-gap"><a href="real-estate.jsp">Sale</a></li>
							<li><a href="real-estate.jsp">Houses</a></li>
							<li class="left-gap"><a href="real-estate.jsp">Rent</a></li>
							<li class="left-gap"><a href="real-estate.jsp">Sale</a></li>
							<li><a href="real-estate.jsp">Shops - Offices - Commercial Space</a></li>
							<li class="left-gap"><a href="real-estate.jsp">Lease</a></li>
							<li class="left-gap"><a href="real-estate.jsp">Sale</a></li>
							<li><a href="real-estate.jsp">PG & Roommates</a></li>
							<li><a href="real-estate.jsp">Vacation Rentals - Guest Houses</a></li>
						</ul>
					</div>
					<div class="sitemap-region">
						<h4>Bikes</h4>
						<ul>
							<li><a href="bikes.jsp">Motorcycles</a></li>
							<li><a href="bikes.jsp">Bajaj</a></li>
							<li><a href="bikes.jsp">Hero Honda</a></li>
							<li><a href="bikes.jsp">Yamaha</a></li>
							<li><a href="bikes.jsp">Royal Enfield</a></li>
							<li><a href="bikes.jsp">Honda</a></li>
							<li><a href="bikes.jsp">Hero</a></li>
							<li><a href="bikes.jsp">TVS</a></li>
							<li><a href="bikes.jsp">Suzuki</a></li>
							<li><a href="bikes.jsp">Other Brands</a></li>
							<li><a href="bikes.jsp">KTM</a></li>
							<li><a href="bikes.jsp">Mahindra</a></li>
							<li><a href="bikes.jsp">Kawasaki</a></li>
							<li><a href="bikes.jsp">Harley Davidson</a></li>
							<li><a href="bikes.jsp">Spare Parts</a></li>
							<li><a href="bikes.jsp">Scooters</a></li>
							<li><a href="bikes.jsp">Honda</a></li>
							<li><a href="bikes.jsp">TVS </a></li>
							<li><a href="bikes.jsp">Bajaj</a></li>
							<li><a href="bikes.jsp">Hero</a></li>
							<li><a href="bikes.jsp">Suzuki</a></li>
							<li><a href="bikes.jsp">Mahindra</a></li>
							<li><a href="bikes.jsp">LML</a></li>
							<li><a href="bikes.jsp">Kinetic</a></li>
							<li><a href="bikes.jsp">Other Brands</a></li>
							<li><a href="bikes.jsp">Yamaha</a></li>
							<li><a href="bikes.jsp">Vespa</a></li>
							<li><a href="bikes.jsp">Lambretta</a></li>
							<li><a href="bikes.jsp">Bicycles</a></li>
							<li><a href="bikes.jsp">Hero</a></li>
							<li><a href="bikes.jsp">Other Brands</a></li>
							<li><a href="bikes.jsp">Hercules</a></li>
							<li><a href="bikes.jsp">BSA</a></li>
							<li><a href="bikes.jsp">Atlas</a></li>
							<li><a href="bikes.jsp">Avon</a></li>
							<li><a href="bikes.jsp">Firefox</a></li>
							<li><a href="bikes.jsp">Trek</a></li>
						</ul>
					</div>
				</div>
				<div class="sitemap-region-grid">
					<div class="sitemap-region">
						<h4>Jobs</h4>
						<ul>
							<li><a href="jobs.jsp">Online</a></li>
							<li><a href="jobs.jsp">Other Jobs</a></li>
							<li><a href="jobs.jsp">Customer Service</a></li>
							<li><a href="jobs.jsp">IT</a></li>
							<li><a href="jobs.jsp">Marketing</a></li>
							<li><a href="jobs.jsp">Sales</a></li>
							<li><a href="jobs.jsp">Manufacturing</a></li>
							<li><a href="jobs.jsp">Clerical & Administration</a></li>
							<li><a href="jobs.jsp">Hotels & Tourism</a></li>
							<li><a href="jobs.jsp">Accounting & Finance</a></li>
							<li><a href="jobs.jsp">Advertising & PR</a></li>
							<li><a href="jobs.jsp">Human Resources</a></li>
							<li><a href="jobs.jsp">Education</a></li>
						</ul>
					</div>				
					<div class="sitemap-region">
						<h4>Cars</h4>
						<ul>
							<li><a href="cars.jsp">Cars</a></li>
							<li class="left-gap"><a href="cars.jsp">Maruti Suzuki</a></li>
							<li class="left-gap"><a href="cars.jsp">Hyundai</a></li>
							<li class="left-gap"><a href="cars.jsp">Tata</a></li>
							<li class="left-gap"><a href="cars.jsp">Mahindra</a></li>
							<li class="left-gap"><a href="cars.jsp">Honda</a></li>
							<li class="left-gap"><a href="cars.jsp">Ford</a></li>
							<li class="left-gap"><a href="cars.jsp">Toyota</a></li>
							<li class="left-gap"><a href="cars.jsp">Chevrolet</a></li>
							<li class="left-gap"><a href="cars.jsp">Skoda</a></li>
							<li class="left-gap"><a href="cars.jsp">Volkswagen</a></li>
							<li class="left-gap"><a href="cars.jsp">Fiat</a></li>
							<li class="left-gap"><a href="cars.jsp">Mitsubishi</a></li>
							<li class="left-gap"><a href="cars.jsp">Other Brands</a></li>
							<li class="left-gap"><a href="cars.jsp">Mercedes-Benz</a></li>
							<li class="left-gap"><a href="cars.jsp">Nissan</a></li>
							<li class="left-gap"><a href="cars.jsp">BMW</a></li>
							<li class="left-gap"><a href="cars.jsp">Renault</a></li>
							<li class="left-gap"><a href="cars.jsp">Hindustan Motors</a></li>
							<li class="left-gap"><a href="cars.jsp">Audi</a></li>
							<li class="left-gap"><a href="cars.jsp">Mahindra Renault</a></li>
							<li class="left-gap"><a href="cars.jsp">Opel</a></li>
							<li class="left-gap"><a href="cars.jsp">Daewoo</a></li>
							<li class="left-gap"><a href="cars.jsp">Force Motors</a></li>
							<li class="left-gap"><a href="cars.jsp">Landrover</a></li>
							<li class="left-gap"><a href="cars.jsp">Premier</a></li>
							<li class="left-gap"><a href="cars.jsp">Jaguar</a></li>
							<li class="left-gap"><a href="cars.jsp">Volvo</a></li>
							<li class="left-gap"><a href="cars.jsp">Isuzu</a></li>
							<li class="left-gap"><a href="cars.jsp">Mini</a></li>
							<li class="left-gap"><a href="cars.jsp">Porsche</a></li>
							<li class="left-gap"><a href="cars.jsp">Ssangyong</a></li>
							<li class="left-gap"><a href="cars.jsp">Mahindra Reva</a></li>
							<li class="left-gap"><a href="cars.jsp">Rolls Royce</a></li>
							<li class="left-gap"><a href="cars.jsp">Bentley</a></li>
							<li class="left-gap"><a href="cars.jsp">Ferrari</a></li>
							<li class="left-gap"><a href="cars.jsp">Lamborghini </a></li>
							<li><a href="cars.jsp">Spare Parts</a></li>
							<li class="left-gap"><a href="cars.jsp">Car Parts</a></li>
							<li class="left-gap"><a href="cars.jsp">Other Parts</a></li>
							<li class="left-gap"><a href="cars.jsp">Spare Parts</a></li>
							<li><a href="cars.jsp">Commercial Vehicles</a></li>
							<li><a href="cars.jsp">Other Vehicles</a></li>
							<li><a href="cars.jsp">Motorcycles</a></li>
							<li class="left-gap"><a href="cars.jsp">Hero Honda</a></li>
							<li class="left-gap"><a href="cars.jsp">Honda</a></li>
							<li class="left-gap"><a href="cars.jsp">Bajaj</a></li>
							<li class="left-gap"><a href="cars.jsp">TVS</a></li>
							<li class="left-gap"><a href="cars.jsp">Royal Enfield</a></li>
							<li class="left-gap"><a href="cars.jsp">Suzuki</a></li>
							<li><a href="cars.jsp">Scooters</a></li>
							<li class="left-gap"><a href="cars.jsp">Honda</a></li>
							<li class="left-gap"><a href="cars.jsp">Bajaj</a></li>
							<li class="left-gap"><a href="cars.jsp">TVS</a></li>
							<li class="left-gap"><a href="cars.jsp">Suzuki</a></li>
							<li class="left-gap"><a href="cars.jsp">Kinetic</a></li>
							<li class="left-gap"><a href="cars.jsp">Mahindra</a></li>
							<li><a href="cars.jsp">Bicycles</a></li>
							<li class="left-gap"><a href="cars.jsp">Other Brands</a></li>
							<li class="left-gap"><a href="cars.jsp">Hero</a></li>
						</ul>
					</div>
					<div class="sitemap-region">
						<h4>Pets</h4>
						<ul>
							<li><a href="pets.jsp">Dogs</a></li>
							<li class="left-gap"><a href="pets.jsp">Other Breeds</a></li>
							<li class="left-gap"><a href="pets.jsp">Labrador</a></li>
							<li class="left-gap"><a href="pets.jsp">German Shepherd</a></li>
							<li class="left-gap"><a href="pets.jsp">Rottweiler</a></li>
							<li class="left-gap"><a href="pets.jsp">Pug</a></li>
							<li class="left-gap"><a href="pets.jsp">Mastiff</a></li>
							<li class="left-gap"><a href="pets.jsp">Saint Bernard</a></li>
							<li class="left-gap"><a href="pets.jsp">Golden Retriever</a></li>
							<li class="left-gap"><a href="pets.jsp">Beagle</a></li>
							<li class="left-gap"><a href="pets.jsp">Pomeranian</a></li>
							<li class="left-gap"><a href="pets.jsp">Doberman</a></li>
							<li class="left-gap"><a href="pets.jsp">Husky</a></li>
							<li class="left-gap"><a href="pets.jsp">Cocker Spaniel</a></li>
							<li class="left-gap"><a href="pets.jsp">Boxer</a></li>
							<li class="left-gap"><a href="pets.jsp">Bulldog</a></li>
							<li class="left-gap"a href="pets.jsp">Dalmatian</a></li>
							<li><a href="pets.jsp">Other Pets</a></li>
							<li><a href="pets.jsp">Aquariums</a></li>
							<li><a href="pets.jsp">Pet Food & Accessories</a></li>
						</ul>
					</div>
				</div>
				<div class="sitemap-region-grid">
					<div class="sitemap-region">					
						<h4>Mobiles</h4>
						<ul>
							<li><a href="mobiles.jsp">Mobile Phones</a></li>
							<li class="left-gap"><a href="mobiles.jsp">Samsung</a></li>
							<li class="left-gap"><a href="mobiles.jsp">Nokia</a></li>
							<li class="left-gap"><a href="mobiles.jsp">Other Mobiles</a></li>
							<li class="left-gap"><a href="mobiles.jsp">Micromax</a></li>
							<li class="left-gap"><a href="mobiles.jsp">iPhone</a></li>
							<li class="left-gap"><a href="mobiles.jsp">Sony</a></li>
							<li class="left-gap"><a href="mobiles.jsp">HTC</a></li>
							<li class="left-gap"><a href="mobiles.jsp">Lenovo</a></li>
							<li class="left-gap"><a href="mobiles.jsp">Intex</a></li>
							<li class="left-gap"><a href="mobiles.jsp">Motorola</a></li>
							<li class="left-gap"><a href="mobiles.jsp">Lava</a></li>
							<li class="left-gap"><a href="mobiles.jsp">LG</a></li>
							<li class="left-gap"><a href="mobiles.jsp">Mi</a></li>
							<li class="left-gap"><a href="mobiles.jsp">BlackBerry</a></li>
							<li class="left-gap"><a href="mobiles.jsp">Karbonn</a></li>
							<li class="left-gap"><a href="mobiles.jsp">Asus</a></li>
							<li><a href="mobiles.jsp">Accessories</a></li>
							<li class="left-gap"><a href="mobiles.jsp">Mobile</a></li>
							<li class="left-gap"><a href="mobiles.jsp">Tablets</a></li>
							<li><a href="mobiles.jsp">Tablets</a></li>
							<li class="left-gap"><a href="mobiles.jsp">Samsung</a></li>
							<li class="left-gap"><a href="mobiles.jsp">Other Tablets</a></li>
							<li class="left-gap"><a href="mobiles.jsp">iPads</a></li>
							<li class="left-gap"><a href="mobiles.jsp">iBall</a></li>
							<li class="left-gap"><a href="mobiles.jsp">Micromax</a></li>
							<li class="left-gap"><a href="mobiles.jsp">Lenovo</a></li>
							<li class="left-gap"><a href="mobiles.jsp">Asus</a></li>
							<li class="left-gap"><a href="mobiles.jsp">HP</a></li>
							<li class="left-gap"><a href="mobiles.jsp">Dell</a></li>
							<li class="left-gap"><a href="mobiles.jsp">HCL</a></li>
							<li class="left-gap"><a href="mobiles.jsp">Acer</a></li>
							<li class="left-gap"><a href="mobiles.jsp">Blackberry</a></li>
							<li class="left-gap"><a href="mobiles.jsp">Sony</a></li>
						</ul>
					</div>
					<div class="sitemap-region">					
						<h4>Kids</h4>
						<ul>
							<li><a href="kids.jsp">Furniture And Toys</a></li>
							<li><a href="kids.jsp">Accessories</a></li>
							<li><a href="kids.jsp">Prams & Walkers</a></li>
						</ul>
					</div>
					<div class="sitemap-region">
						<h4>Fashion</h4>
						<ul>
							<li><a href="fashion.jsp">Accessories</a></li>
							<li class="left-gap"><a href="fashion.jsp">Women</a></li>
							<li class="left-gap"><a href="fashion.jsp">Men</a></li>
							<li><a href="fashion.jsp">Clothes</a></li>
							<li class="left-gap"><a href="fashion.jsp">Women</a></li>
							<li class="left-gap"><a href="fashion.jsp">Men</a></li>
							<li><a href="fashion.jsp">Footwear</a></li>
							<li class="left-gap"><a href="fashion.jsp">Men</a></li>
							<li class="left-gap"><a href="fashion.jsp">Women</a></li>
						</ul>
					</div>
					<div class="sitemap-region">
						<h4>Electronics & Appliances</h4>
						<ul>
							<li><a href="electronics-appliances.jsp">Computers & Accessories</a></li>
							<li class="left-gap"><a href="electronics-appliances.jsp">Laptops</a></li>
							<li class="left-gap"><a href="electronics-appliances.jsp">Computers</a></li>
							<li class="left-gap"><a href="electronics-appliances.jsp">Other Accessories</a></li>
							<li class="left-gap"><a href="electronics-appliances.jsp">Internet</a></li>
							<li class="left-gap"><a href="electronics-appliances.jsp">Printers</a></li>
							<li class="left-gap"><a href="electronics-appliances.jsp">Monitors</a></li>
							<li class="left-gap"><a href="electronics-appliances.jsp">Hard Disk</a></li>
							<li><a href="electronics-appliances.jsp">Kitchen & Other Appliances</a></li>
							<li><a href="electronics-appliances.jsp">TV - Video - Audio</a></li>
							<li class="left-gap"><a href="electronics-appliances.jsp">Video - Audio</a></li>
							<li class="left-gap"><a href="electronics-appliances.jsp">TV</a></li>
							<li><a href="electronics-appliances.jsp">Cameras & Accessories</a></li>
							<li class="left-gap"><a href="electronics-appliances.jsp">Cameras</a></li>
							<li class="left-gap"><a href="electronics-appliances.jsp">Other Accessories</a></li>
							<li class="left-gap"><a href="electronics-appliances.jsp">Lenses</a></li>
							<li><a href="electronics-appliances.jsp">Games & Entertainment</a></li>
							<li><a href="electronics-appliances.jsp">Fridge - AC - Washing Machine</a></li>
							<li class="left-gap"><a href="electronics-appliances.jsp">Fridges</a></li>
							<li class="left-gap"><a href="electronics-appliances.jsp">Washing Machine</a></li>
							<li class="left-gap"><a href="electronics-appliances.jsp">AC</a></li>
						</ul>
					</div>
					<div class="sitemap-region">
						<h4>Books, Sports & Hobbies</h4>
						<ul>
							<li><a href="books-sports-hobbies.jsp">Gym & Fitness</a></li>
							<li><a href="books-sports-hobbies.jsp">Other Hobbies</a></li>
							<li><a href="books-sports-hobbies.jsp">Musical Instruments</a></li>
							<li><a href="books-sports-hobbies.jsp">Books & Magazines</a></li>
							<li class="left-gap"><a href="books-sports-hobbies.jsp">Education & Training</a></li>
							<li class="left-gap"><a href="books-sports-hobbies.jsp">Competitive Exam</a></li>
							<li class="left-gap"><a href="books-sports-hobbies.jsp">Literature & Fiction</a></li>
							<li class="left-gap"><a href="books-sports-hobbies.jsp">Professional & Technical</a></li>
							<li class="left-gap"><a href="books-sports-hobbies.jsp">Other Books</a></li>
							<li class="left-gap"><a href="books-sports-hobbies.jsp">School Books</a></li>
							<li class="left-gap"><a href="books-sports-hobbies.jsp">Children</a></li>
							<li><a href="books-sports-hobbies.jsp">Sports Equipment</a></li>
						</ul>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	<!-- //Regions -->
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