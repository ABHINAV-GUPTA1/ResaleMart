<%@include file="secure-register.jsp" %>
<!--
Author: ABHINAV GUPTA
Author URL: http://ABHINAVgupta.com
-->
<!DOCTYPE HTML>
<html>
<head>

	<!--ABHINAV GUPTA-->
<style>
#abhi{
	padding-top: 50px;
	
	font-weight: bold;
}
#ab{
	font-weight: bold;
}
#pad1{
	padding: 20px;
}
#pad2{
	padding: 20px;
}
</style>
<%@include file="template_header.jsp" %>
<!--ABHINAV GUPTA-->
<%@include file="template_header_body_black.jsp" %>
<!-- Page Title
		============================================= -->
	<section id="page-title">        
            <div class="container clearfix">
                <h1>Register</h1>
                <span>Register Today to post ads</span>
                <ol class="breadcrumb">
					<li><a href="index.jsp">Home</a></li>
					<li class="active">Register</li>
				</ol>
            </div>
        </section><!-- #page-title end -->
		<!-- Content
		============================================= -->
		<section id="content">

			<div class="content-wrap">
                            
                            <!--
        <div class="clearfix"></div>
        <div class="line"></div>-->
				<div class="container clearfix">
					<!-- Reg Form
					============================================= -->
					<div class="postcontent nobottommargin">

						<div class="fancy-title title-dotted-border">
							<h3>Register</h3>
						</div>

						<div class="contact-widget">

							<div class="contact-form-result"></div>

							<form data-redirect="index" class="nobottommargin" role="form" id="reg-form" name="reg-form" action="index" method="post">

								<div class="form-process"></div>

								<div class="col_one_third">
									<label for="name">First Name <small>*</small></label>
									<input type="text" id="name" name="name" value="" class="sm-form-control required" />
								</div>

								<div class="col_one_third">
									<label for="email">Email <small>*</small></label>
									<input type="email" id="email" name="email" value="" class="required email sm-form-control" />
								</div>

								<div class="col_one_third col_last">
									<label for="con">Phone</label>
									<input type="tel" id="con" name="con" value="" class="sm-form-control" />
								</div>

								<div class="clear"></div>

								<div class="col_one_third">
									<label for="password">Password <small>*</small></label>
									<input type="password" id="password" name="password" value="" class="required sm-form-control" />
								</div>
								<div class="col_one_third">
									<label for="date12">Date Of Birth <small>*</small></label>
									<input type="date" id="date12" name="date12" value="" class="required sm-form-control" />
								</div>
								<div class="col_one_third col_last">
									<label for="bio">Bio <small>*</small></label>
									<input type="text" id="bio" name="bio" value="" class="required sm-form-control" />
								</div>
								

								<div class="clear"></div>

								<div class="col_full">
									<label for="about">About Yourself <small>*</small></label>
									<textarea class="required sm-form-control" id="about" name="about" rows="6" cols="30"></textarea>
								</div>
								<div class="clear"></div>

								<div class="col_full">
									<label for="addr">Address <small>*</small></label>
									<textarea class="required sm-form-control" id="addr" name="addr" rows="6" cols="30"></textarea>
								</div>
								
								<div class="col_full hidden">
									<input type="text" id="botcheck" name="botcheck" value="" class="sm-form-control" />
								</div>
								
								<div class="col_full">
                                                                    <!--<button name="submit" type="submit" id="submit-button" tabindex="5" value="Submit" class="button button-3d nomargin">-->
                                                                     <input class="button button-3d nomargin" type="submit" value="Submit" />   
                                                                    <!--</button>-->
								</div>

							</form>
						</div>

					</div><!-- Reg Form End -->
					<div class="sidebar col_last nobottommargin">

						<address>
							<strong>Headquarters:</strong><br>
							502 Main Market, Hallomajra<br>
							Chandigarh, India 160002<br>
						</address>
						<abbr title="Phone Number"><strong>Phone:</strong></abbr> +91 7696 244723<br>
						<abbr title="Alternate Number"><strong>Alt:</strong></abbr> +91 8567 018991<br>
						<abbr title="Email Address"><strong>Email:</strong></abbr> abhig605@gmail.com
                                                <!--    
						<div class="widget noborder notoppadding">

							<div class="fslider customjs testimonial twitter-scroll twitter-feed" data-username="envato" data-count="3" data-animation="slide" data-arrows="false">
								<i class="i-plain i-small color icon-twitter nobottommargin" style="margin-right: 15px;"></i>
								<div class="flexslider" style="width: auto;">
									<div class="slider-wrap">
										<div class="slide"></div>
									</div>
								</div>
							</div>

						</div>-->

						<div class="widget noborder notoppadding">

							<a href="#" class="social-icon si-small si-dark si-facebook">
								<i class="icon-facebook"></i>
								<i class="icon-facebook"></i>
							</a>

							<a href="#" class="social-icon si-small si-dark si-twitter">
								<i class="icon-twitter"></i>
								<i class="icon-twitter"></i>
							</a>

							<a href="#" class="social-icon si-small si-dark si-dribbble">
								<i class="icon-dribbble"></i>
								<i class="icon-dribbble"></i>
							</a>

							<a href="#" class="social-icon si-small si-dark si-forrst">
								<i class="icon-forrst"></i>
								<i class="icon-forrst"></i>
							</a>

							<a href="#" class="social-icon si-small si-dark si-pinterest">
								<i class="icon-pinterest"></i>
								<i class="icon-pinterest"></i>
							</a>

							<a href="#" class="social-icon si-small si-dark si-gplus">
								<i class="icon-gplus"></i>
								<i class="icon-gplus"></i>
							</a>

						</div>

					</div><!-- .sidebar end -->
					
					<div class="clear"></div>

					<!-- Contact Info
					============================================= -->
					<div class="row clear-bottommargin">

						<div class="col-md-3 col-sm-6 bottommargin clearfix">
							<div class="feature-box fbox-center fbox-bg fbox-plain">
								<div class="fbox-icon">
									<a href="#"><i class="icon-map-marker2"></i></a>
								</div>
								<h3>Our Headquarters<span class="subtitle">HalloMajra, Chandigarh</span></h3>
							</div>
						</div>

						<div class="col-md-3 col-sm-6 bottommargin clearfix">
							<div class="feature-box fbox-center fbox-bg fbox-plain">
								<div class="fbox-icon">
									<a href="#"><i class="icon-phone3"></i></a>
								</div>
								<h3>Speak to Us<span class="subtitle">(+91) 7696 244 723</span></h3>
							</div>
						</div>

						<div class="col-md-3 col-sm-6 bottommargin clearfix">
							<div class="feature-box fbox-center fbox-bg fbox-plain">
								<div class="fbox-icon">
									<a href="#"><i class="icon-skype2"></i></a>
								</div>
								<h3>Make a Video Call<span class="subtitle">ABHINAVOnSkype</span></h3>
							</div>
						</div>

						<div class="col-md-3 col-sm-6 bottommargin clearfix">
							<div class="feature-box fbox-center fbox-bg fbox-plain">
								<div class="fbox-icon">
									<a href="http://twitter.com/abhig605"><i class="icon-twitter2"></i></a>
								</div>
								<h3>Follow on Twitter<span class="subtitle">2.3M Followers</span></h3>
							</div>
						</div>

					</div><!-- Contact Info End -->

				</div>

			</div>

		</section><!-- #reg end -->
<%@include file="template_footer.jsp" %>					