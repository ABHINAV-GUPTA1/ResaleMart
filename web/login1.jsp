<!--
Author: ABHINAV GUPTA
Author URL: http://ABHINAVGUPTA.COM
-->
<%@include file="secure-login.jsp" %>
<!DOCTYPE html>
<html dir="ltr" lang="en-US">
<head>

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

		<!-- Content
		============================================= -->
		<section id="content">

			<div class="content-wrap nopadding">

				<div class="section nopadding nomargin" style="width: 100%; height: 100%; position: absolute; left: 0; top: 0; background: url('images/abhinav/parallax/home/1.jpg') center center no-repeat; background-size: cover;"></div>

				<div class="section nobg full-screen nopadding nomargin">
					<div class="container vertical-middle divcenter clearfix">

						<div class="row center">
							<a href="index.jsp"><img src="images/abhinav/logo-dark.png" alt="Resale Mart ABHINAV GUPTA"></a>
						</div>

						<div class="panel panel-default divcenter noradius noborder" style="max-width: 400px; background-color: rgba(255,255,255,0.93);">
							<div class="panel-body" style="padding: 40px;">
								<form id="login-form" name="login-form" class="nobottommargin" action="one" method="post">
									<h3>Login to your Account</h3>

									<div class="col_full">
										<label for="login-form-username">Username:</label>
										<input type="text" id="login-form-username" name="email" value="" class="form-control not-dark" />
									</div>

									<div class="col_full">
										<label for="login-form-password">Password:</label>
										<input type="password" id="login-form-password" name="pass" value="" class="form-control not-dark" />
									</div>

									<div class="col_full nobottommargin">
										<button class="button button-3d button-black nomargin" id="login-form-submit" name="login-form-submit" value="login">Login</button>
										<a href="forgot.jsp" class="fright">Forgot Password?</a>
									</div>
								</form>

								<div class="line line-sm"></div>

								<div class="center">
									<h4 style="margin-bottom: 15px;">or Login with:</h4>
									<a href="#" class="button button-rounded si-facebook si-colored">Facebook</a>
									<span class="hidden-xs">or</span>
									<a href="#" class="button button-rounded si-twitter si-colored">Twitter</a>
								</div>
							</div>
						</div>

						<div class="row center dark"><small>Copyrights &copy; All Rights Reserved by ABHINAV GUPTA.</small></div>

					</div>
				</div>

			</div>

		</section><!-- #content end -->

	</div><!-- #wrapper end -->
<%@include file="login-modal.jsp" %>
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

</body>
</html>