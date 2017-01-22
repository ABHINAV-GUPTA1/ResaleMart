<!DOCTYPE html>
<html>
<head>
<%@include file="template_header.jsp" %>
<%@include file="template_header_body.jsp" %>
<!-- Page Title
		============================================= -->
	<section id="page-title">        
            <div class="container clearfix">
                <h1>Contact Us / Feedback</h1>
                <span>Contact Us / Feedback today</span>
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

				<div class="container clearfix">

					<!-- Contact Form
					============================================= -->
					<div class="postcontent nobottommargin">

						<div class="fancy-title title-dotted-border">
							<h3>Send us an Email</h3>
						</div>

						<div class="contact-widget">

							<div class="contact-form-result"></div>

							<form class="nobottommargin" id="template-contactform" name="template-contactform" action="include/sendemail.php" method="post">

								<div class="form-process"></div>

								<div class="col_one_third">
									<label for="template-contactform-name">Name <small>*</small></label>
									<input type="text" id="template-contactform-name" name="template-contactform-name" value="" class="sm-form-control required" />
								</div>

								<div class="col_one_third">
									<label for="template-contactform-email">Email <small>*</small></label>
									<input type="email" id="template-contactform-email" name="template-contactform-email" value="" class="required email sm-form-control" />
								</div>

								<div class="col_one_third col_last">
									<label for="template-contactform-phone">Phone</label>
									<input type="text" id="template-contactform-phone" name="template-contactform-phone" value="" class="sm-form-control" />
								</div>

								<div class="clear"></div>

								<div class="col_two_third">
									<label for="template-contactform-subject">Subject <small>*</small></label>
									<input type="text" id="template-contactform-subject" name="template-contactform-subject" value="" class="required sm-form-control" />
								</div>

								<div class="col_one_third col_last">
									<label for="template-contactform-service">Services</label>
									<select id="template-contactform-service" name="template-contactform-service" class="sm-form-control">
										<option value="">-- Select One --</option>
										<option value="Feedback">Feedback</option>
										<option value="Contact">Contact</option>
									</select>
								</div>

								<div class="clear"></div>

								<div class="col_full">
									<label for="template-contactform-message">Message <small>*</small></label>
									<textarea class="required sm-form-control" id="template-contactform-message" name="template-contactform-message" rows="6" cols="30"></textarea>
								</div>

								<div class="col_full hidden">
									<input type="text" id="template-contactform-botcheck" name="template-contactform-botcheck" value="" class="sm-form-control" />
								</div>

								<div class="col_full">
									<button name="submit" type="submit" id="submit-button" tabindex="5" value="Submit" class="button button-3d nomargin">Submit Comment</button>
								</div>

							</form>
						</div>

					</div><!-- Contact Form End -->

					<!-- Google Map
					============================================= -->
					<!--
					<div class="col_half col_last">

						<section id="google-map" class="gmap" style="height: 410px;"></section>

					</div>-->
					<!-- Google Map End -->
                                        <!-- Sidebar
					============================================= -->
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
								<h3>Our Headquarters<span class="subtitle">Melbourne, Australia</span></h3>
							</div>
						</div>

						<div class="col-md-3 col-sm-6 bottommargin clearfix">
							<div class="feature-box fbox-center fbox-bg fbox-plain">
								<div class="fbox-icon">
									<a href="#"><i class="icon-phone3"></i></a>
								</div>
								<h3>Speak to Us<span class="subtitle">(123) 456 7890</span></h3>
							</div>
						</div>

						<div class="col-md-3 col-sm-6 bottommargin clearfix">
							<div class="feature-box fbox-center fbox-bg fbox-plain">
								<div class="fbox-icon">
									<a href="#"><i class="icon-skype2"></i></a>
								</div>
								<h3>Make a Video Call<span class="subtitle">CanvasOnSkype</span></h3>
							</div>
						</div>

						<div class="col-md-3 col-sm-6 bottommargin clearfix">
							<div class="feature-box fbox-center fbox-bg fbox-plain">
								<div class="fbox-icon">
									<a href="#"><i class="icon-twitter2"></i></a>
								</div>
								<h3>Follow on Twitter<span class="subtitle">2.3M Followers</span></h3>
							</div>
						</div>

					</div><!-- Contact Info End -->

				</div>

			</div>

		</section><!-- #content end -->
<%@include file="template_footer.jsp" %>