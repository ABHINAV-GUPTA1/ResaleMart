<%@include file="secure-jsp.jsp" %>
<!--
Author: ABHINAV GUPTA
Author URL: http://ABHINAVgupta.com
-->
<!DOCTYPE html>
<html>
<head>
<%@include file="template_header.jsp" %>
<link rel="stylesheet" href="css/abhinav/bs-filestyle.css" type="text/css" />
<%@include file="template_header_body.jsp" %>
	<!-- Submit Ad -->
	<!-- Content
		============================================= -->
		<section id="content">

			<div class="content-wrap">

				<div class="container clearfix">

					<!-- Contact Form
					============================================= -->
					<div class="postcontent nobottommargin">

						<div class="fancy-title title-dotted-border">
							<h3>Upload Photos for AD</h3>
						</div>

						<div class="contact-widget">

							<div class="contact-form-result"></div>

							<form class="nobottommargin" id="PostAdform" name="PostAdform" enctype="multipart/form-data" action="postAd_complete.jsp" method="post">

								<div class="form-process"></div>
			
								<div class="col_full">
									<label for="picture">Photo 1: <small>*</small></label>
									<input accept="image/*" class="file-loading upload1" data-allowed-file-extensions='[]' type="file" id="picture" name="picture" />
								</div>
								<div class="clear"></div>
								<div class="col_full">
									<label for="picture_2">Photo 2: <small>*</small></label>
									<input accept="image/*" class="file-loading upload1" data-allowed-file-extensions='[]' type="file" id="picture_2" name="picture_2" />
								</div>
								<div class="clear"></div>
								<div class="col_full">
									<label for="picture_3">Photo 3: <small>*</small></label>
									<input accept="image/*" class="file-loading upload1" data-allowed-file-extensions='[]' type="file" id="picture_3" name="picture_3" />
								</div>
								<div class="clear"></div>
								<div class="col_full">
									<p class="post-terms">By clicking <strong>post Button</strong> you accept our <a href="terms.jsp" target="_blank">Terms of Use </a> and <a href="privacy.jsp" target="_blank">Privacy Policy</a></p>		
								</div>
								<div class="col_full hidden">
									<input type="text" id="template-contactform-botcheck" name="template-contactform-botcheck" value="" class="sm-form-control" />
								</div>

								<div class="col_full">
									<button name="submit" type="submit" id="submit-button" value="Submit" class="button button-3d nomargin">Submit Pics</button>
								</div>

							</form>
						</div>

					</div><!-- Contact Form End -->
					
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

		</section><!-- #content end -->

	<!-- // Submit Ad -->
	<%@include file="template_footer.jsp" %>