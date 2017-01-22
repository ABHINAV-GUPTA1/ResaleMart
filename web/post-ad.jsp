<%@include file="secure-jsp.jsp" %>
<%  
    String email1=(String)request.getSession().getAttribute("email");
    String address=(String)request.getSession().getAttribute("address");
    String contact=(String)request.getSession().getAttribute("contact");
%>
<!--
Author: ABHINAV GUPTA
Author URL: http://ABHINAVgupta.com
-->
<!DOCTYPE html>
<html>
<head>
<%@include file="template_header.jsp" %>
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
							<h3>POST AD</h3>
						</div>

						<div class="contact-widget">

							<div class="contact-form-result"></div>

							<form class="nobottommargin" id="PostAdform" name="PostAdform" action="postAd" method="post">

								<div class="form-process"></div>

								<div class="col_one_third">
									<label for="title">Ad Title <small>*</small></label>
									<input type="text" id="title" name="title" value="" class="sm-form-control required" />
								</div>

								<div class="col_one_third">
									<label for="brand">Brand <small>*</small></label>
									<input type="text" id="brand" name="brand" value="" class="required sm-form-control" />
								</div>

								<div class="col_one_third col_last">
									<label for="condition">Condition</label>
									<input type="text" id="condition" name="condition" value="" class="required sm-form-control" />
								</div>

								<div class="clear"></div>

								<div class="col_two_third">
									<label for="cost">Cost <small>*</small></label>
									<input type="text" id="cost" name="cost" value="" class="required sm-form-control" />
								</div>

								<div class="col_one_third col_last">
									<label for="sel">Select Category <small>*</small></label>
									<select id="sel" name="sel" class="sm-form-control">
										<option>-- Select Category --</option>
										<option value="mobiles">Mobiles</option>
										<option value="electronics">Electronics and Appliances</option>
										<option value="cars">Cars</option>
										<option value="bikes">Bikes</option>
										<option value="furniture">Furniture</option>
										<option value="pets">Pets</option>
									</select>
								</div>

								<div class="clear"></div>
			
								<div class="col_full">
									<label for="desc">Ad Description <small>*</small></label>
									<textarea class="required sm-form-control" id="desc" name="desc" rows="6" cols="30"></textarea>
								</div>
								<div class="clear"></div>
								
								<div class="col_one_third">
									<label for="email">Email</label>
									<input type="text" id="email" name="email" readonly value="<%=email1%>" class="sm-form-control readonly" />
								</div>

								<div class="col_one_third">
									<label for="phone">Your Mobile No <small>*</small></label>
									<input type="text" id="phone" name="phone" readonly value="<%=contact%>" class="sm-form-control" />
								</div>

								<div class="col_one_third col_last">
									<label for="city">Your City</label>
									<input type="text" id="city" name="city" value="<%=address%>" readonly class="sm-form-control" />
								</div>
								<div class="clear"></div>	
								<div class="col_full hidden">
									<input type="text" id="template-contactform-botcheck" name="template-contactform-botcheck" value="" class="sm-form-control" />
								</div>

								<div class="col_full">
									<button name="submit" type="submit" id="submit-button" tabindex="5" value="Submit" class="button button-3d nomargin">Submit</button>
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