<%@include file="secure-jsp.jsp" %>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%
/*if(session.getAttribute("email")==null)
    response.sendRedirect("login.jsp");*/
String email1=session.getAttribute("email").toString();
String bio="",about="",l_info="",l_info1="",regdate="",pic="",viewed="",name="";
try{
    %><%@include file="dbConnection.jsp" %>
    <%PreparedStatement smt = (PreparedStatement) con.prepareStatement("select * from resale1 a join loginfo b on a.email=b.email where a.email=?");
    smt.setString(1,email1);
    ResultSet rs=smt.executeQuery();
    if(rs.next()){
        name=rs.getString("first_name");
        bio=rs.getString("bio");
        about=rs.getString("about");
        l_info=rs.getString("done");
        l_info1=rs.getString("lastsignin");
        regdate=rs.getString("dateofreg");
        pic=rs.getString("pic");
        try{
            PreparedStatement smt1=con.prepareStatement("select count(viewed) from message where to5=? and viewed=?");
            smt1.setString(1,email1);
            smt1.setString(2,"0");
            ResultSet rs1=smt1.executeQuery();
            if(rs1.next())
                viewed=rs1.getString(1);
        }catch(Exception e){}
    }else{
        out.println("Username doesnot exist");
    }
    smt.close();
    rs.close();
    con.close();
}
catch(Exception e)
{
    out.println("<br/>Error with database : ");
}
%>
<html>
<head>
<%@include file="template_header.jsp" %>        
<%@include file="template_header_body.jsp" %>
					<!-- Content
					============================================= -->
					<section id="content">
						<div class="content-wrap">
							<div class="container clearfix">
								<div class="row clearfix">
									<div class="col-sm-9">
										<img src="<%=pic%>" class="alignleft img-circle img-thumbnail notopmargin nobottommargin" alt="Avatar" style="max-width: 84px;">
										<div class="heading-block noborder">
                                                                                    <h3><%=name%> <small><%=email1%></small> </h3>
											<span><%=bio%></span>
										</div>
										<div class="clear"></div>
									<div class="row clearfix">
										<div class="col-md-12">
											<div class="tabs tabs-alt clearfix" id="tabs-profile">
												<ul class="tab-nav clearfix">
													<li><a href="#tab-feeds"><i class="icon-rss2"></i> Feeds</a></li>
													<li><a href="#tab-posts"><i class="icon-pencil2"></i> Posts</a></li>
													<li><a href="#tab-replies"><i class="icon-reply"></i> Messages</a></li>
													<li><a href="#tab-connections"><i class="icon-users"></i> Settings</a></li>
												</ul>
												<div class="tab-container">
													<div class="tab-content clearfix" id="tab-feeds">
														<p class="">This will contains when you have logged in and info regarding registration.</p>
														<div class="table-responsive">
															<table class="table table-bordered table-striped">
																<colgroup>
																	<col class="col-xs-1">
																	<col class="col-xs-7">
																</colgroup>
																<thead>
																	<tr>
																		<th>Time</th>
																		<th>Activity</th>
																	</tr>
																</thead>
																<tbody>
																	<tr>
																		<td>
																			<code><%=regdate%></code>
																		</td>
																		<td>Date of Registration</td>
																	</tr>
																	<tr>
																		<td>
																			<code><%=l_info1%></code>
																		</td>
																		<td><%=email1%> is now <%=l_info%></td>
																	</tr>
																</tbody>
															</table>
														</div>
													</div><!--posts tab -->
													<div class="tab-content clearfix" id="tab-posts">
														<div class="row topmargin-sm clearfix">
<%
try{
    String post_pic="",post_id="",post_date="",post_views="",post_messages="",post_title="",post_pic_1="",post_pic_2="",post_desc="";
    %><%@include file="dbConnection.jsp" %>
    <%
    PreparedStatement smt = (PreparedStatement) con.prepareStatement("select * from post_ad where post_ad.email=?");
    smt.setString(1, email1);
    ResultSet rs=smt.executeQuery();
    while(rs.next()){
        post_pic_1=rs.getString("photo_1");
	post_pic_2=rs.getString("photo_2");
	post_desc=rs.getString("description");
        post_pic=rs.getString("photo");
        post_id=rs.getString("post_id");
        post_date=rs.getString("date");
        post_views=rs.getString("ad_view");
        //post_messages=rs.getString("cnt");
        post_title=rs.getString("title");	
	try{
            Connection con1 = (Connection) DriverManager.getConnection("jdbc:mysql:///abhi","root","");
		PreparedStatement smt1 = (PreparedStatement) con1.prepareStatement("select count(mesg) cnt from message where post_id=?");
		smt1.setString(1,post_id);
		ResultSet rs1=smt1.executeQuery();
		if(rs1.next()){
			post_messages=rs1.getString("cnt");
		}else{
			post_messages="0";
		}
        }catch(Exception e){}
        out.println("<div class='col-xs-12 bottommargin-sm'>");
        out.println("<div class='ipost clearfix'>");
        out.println("<div class='row clearfix'>");
        out.println("<div class='col-sm-4'>");
        out.println("<div class='entry-image'>");
        out.println("<a href='' data-lightbox='image'><img class='image_fade' src='"+post_pic+"' alt='Standard Post with Image'></a>");
        out.println("</div>");
        out.println("</div>");
        out.println("<div class='col-sm-8'>");
        out.println("<div class='entry-title'>");
        out.println("<h3><a href='single.jsp?x="+post_id+"'>"+post_title+"</a></h3>");
        out.println("</div>");
        out.println("<ul class='entry-meta clearfix'>");
        out.println("<li><i class='icon-calendar3'></i> "+post_date+"</li>");
        out.println("<li><a href='blog-single.html#comments'><i class='icon-comments'></i>"+ post_messages+"</a></li>");
        out.println("<li><a href='#'><i class='icon-camera-retro'></i></a></li>");
        out.println("</ul>");
        out.println("<div class='entry-content'>");
        out.println("<p>"+post_desc+".</p>");
        out.println("</div>");
        out.println("</div>");
        out.println("</div>");
        out.println("</div>");
        out.println("</div>");
		
	}
	smt.close();
	rs.close();
	con.close();
}
catch(Exception e)
{
	out.println("<br/>Error with database : ");
}
out.println("</div>");
		out.println("</div>");
%>
<!--replies tab-->
											<div class="tab-content clearfix" id="tab-replies">
												<div class="clear topmargin-sm"></div>
													<ol class="commentlist noborder nomargin nopadding clearfix">
														<li class="comment even thread-even depth-1" id="li-comment-1">
														<%
														
try{
    
	%><%@include file="dbConnection.jsp" %>
    <%
PreparedStatement smt = (PreparedStatement)con.prepareStatement("select * from message where from5=? or to5=? order by Year(date),Month(date), Day(date)");
	smt.setString(1,email1);
	smt.setString(2,email1);
	ResultSet rs=smt.executeQuery();
	while(rs.next()){
		if(!(rs.getString("from5").equals(email1))){
			out.println("<div id='comment-1' class='comment-wrap clearfix'>");
			out.println("<div class='comment-meta'>");
			out.println("<div class='comment-author vcard'>");
			out.println("<span class='comment-avatar clearfix'>");
			out.println("<img alt='' src='"+rs.getString("picf")+"' class='avatar avatar-60 photo avatar-default' height='60' width='60' /></span>");
			out.println("</div>");
			out.println("</div>");
			out.println("<div class='comment-content clearfix'>");
			out.println("<div class='comment-author'>"+rs.getString("from5")+"<span><a href='#' title='Permalink to this comment'>"+rs.getString("date")+"</a></span></div>");
			out.println("<p>"+rs.getString("mesg")+".</p>");
			out.println("<a class='comment-reply-link' href='replier.jsp?x="+rs.getString("post_id")+"&y="+rs.getString("from5")+"'><i class='icon-reply'></i></a>");
			out.println("</div>");
			out.println("<div class='clear'></div>");
			out.println("</div>");
		}else if(rs.getString("from5").equals(email1)){
                        out.println("<ul class='children'>");
			out.println("<li class='comment byuser comment-author-_smcl_admin odd alt depth-2' id='li-comment-3'>");
			out.println("<div id='comment-3' class='comment-wrap clearfix'>");
			out.println("<div class='comment-meta'>");
			out.println("<div class='comment-author vcard'>");
			out.println("<span class='comment-avatar clearfix'><img alt='' src='"+rs.getString("picf")+"' class='avatar avatar-40 photo' height='40' width='40' /></span>");
			out.println("</div>");
			out.println("</div>");
			out.println("<div class='comment-content clearfix'>");
			out.println("<div class='comment-author'><a href='#' rel='external nofollow' class='url'>"+email1+"</a><span><a href='#' title='Permalink to this comment'>"+rs.getString("date")+"</a></span></div>");
			out.println("<p>"+rs.getString("mesg")+".</p>");
			out.println("<a class='comment-reply-link' href='replier.jsp?x="+rs.getString("post_id")+"&y="+rs.getString("to5")+"'><i class='icon-reply'></i></a>");
			out.println("</div>");
			out.println("<div class='clear'></div>");
			out.println("</div>");
			out.println("</li>");
			out.println("</ul>");	
		}}
		smt.close();
		rs.close();
		con.close();
}
catch(Exception e)
{
	out.println("<br/>Error with database : "+e);
}
%>
													</li>											
												</ol>

											</div>
											<div class="tab-content clearfix" id="tab-connections">

												<div class="row topmargin-sm">
													<!--ENTER YOUR CONN-->
												</div>

											</div>

											</div><!--//tab container-->

									</div><!--//tab profile-->

								</div><!--//col-md-12-->

							</div><!--//clearfix-->

						</div><!--col-sm-9(pic with bio tabs)-->

						<div class="line visible-xs-block"></div>

						<div class="col-sm-3 clearfix">

							<div class="list-group">
								<a href="profile.jsp" class="list-group-item clearfix">Profile <i class="icon-user pull-right"></i></a>
							<!--	<a href="#" class="list-group-item clearfix">More info <i class="icon-laptop2 pull-right"></i></a>-->
								<a href="inbox.jsp" class="list-group-item clearfix">Messages <i class="icon-envelope2 pull-right"></i></a>
							<!--	<a href="#" class="list-group-item clearfix">More info <i class="icon-credit-cards pull-right"></i></a>-->
								<a href="#" class="list-group-item clearfix">Settings <i class="icon-cog pull-right"></i></a>
								<a href="logout" class="list-group-item clearfix">Logout <i class="icon-line2-logout pull-right"></i></a>
							</div>

							<div class="fancy-title topmargin title-border">
								<h4>About Me</h4>
							</div>

							<p><%=about%></p>

							<div class="fancy-title topmargin title-border">
								<h4>Social Profiles of creater</h4>
							</div>

							<a href="http://fb.com/abhig605" class="social-icon si-facebook si-small si-rounded si-light" title="Facebook">
								<i class="icon-facebook"></i>
								<i class="icon-facebook"></i>
							</a>

							<a href="#" class="social-icon si-gplus si-small si-rounded si-light" title="Google+">
								<i class="icon-gplus"></i>
								<i class="icon-gplus"></i>
							</a>

							<a href="#" class="social-icon si-dribbble si-small si-rounded si-light" title="Dribbble">
								<i class="icon-dribbble"></i>
								<i class="icon-dribbble"></i>
							</a>

							<a href="#" class="social-icon si-flickr si-small si-rounded si-light" title="Flickr">
								<i class="icon-flickr"></i>
								<i class="icon-flickr"></i>
							</a>

							<a href="#" class="social-icon si-linkedin si-small si-rounded si-light" title="LinkedIn">
								<i class="icon-linkedin"></i>
								<i class="icon-linkedin"></i>
							</a>

							<a href="#" class="social-icon si-twitter si-small si-rounded si-light" title="Twitter">
								<i class="icon-twitter"></i>
								<i class="icon-twitter"></i>
							</a>

						</div>

					</div><!--//rowclearfix ends-->

				</div><!--//containerclearfix ends-->

			</div><!--//container wrapends-->

		</section><!-- #content end -->
<%@include file="template_footer.jsp" %>