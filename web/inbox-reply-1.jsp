<%@include file="secure-jsp.jsp" %>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<!--
Author: ABHINAV GUPTA
Author URL: http://ABHINAVGUPTA.COM
-->
<%
String email4=session.getAttribute("email").toString();
String bio="",about="",l_info="",l_info1="",regdate="",pic="",viewed="";
try{
    %><%@include file="dbConnection.jsp" %>
    <%PreparedStatement smt = (PreparedStatement) con.prepareStatement("select * from resale1 a join loginfo b on a.email=b.email where a.email=?");
    smt.setString(1,email4);
    ResultSet rs=smt.executeQuery();
    if(rs.next()){
        bio=rs.getString("bio");
        about=rs.getString("about");
        l_info=rs.getString("done");
        l_info1=rs.getString("lastsignin");
        regdate=rs.getString("dateofreg");
        pic=rs.getString("pic");
        try{
            PreparedStatement smt1=con.prepareStatement("select count(viewed) from message where to5=? and viewed=?");
            smt1.setString(1,email4);
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
<!DOCTYPE html>
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
											<h3><%=email4%></h3>
											<span><%=bio%></span>
										</div>
										<div class="clear"></div>
									<div class="row clearfix">
			<div class="col-md-12">
				<div class="tabs tabs-alt clearfix" id="tabs-profile">
					<ul class="tab-nav clearfix">
						<li><a href="#tab-inbox"><i class="icon-inbox"></i> Inbox</a></li>
						<li><a href="#tab-sent"><i class="icon-reply"></i> Sent</a></li>
						<li><a href="#tab-reply"><i class="icon-pencil2"></i> Reply</a></li>
						<li><a href="#tab-view"><i class="icon-folder-open"></i> View</a></li>
					</ul>
					<div class="tab-container">	
					<!--inbox starts--======================-->
						<div class="tab-content clearfix" id="tab-inbox">
							<div class="table-responsive">
								<table class="table table-bordered table-striped">
									<colgroup>
										<col class="col-xs-1">
										<col class="col-xs-1">
										<col class="col-xs-1">
										<col class="col-xs-2">
										<col class="col-xs-1">
										<col class="col-xs-1">
										<col class="col-xs-1">
									</colgroup>
									<thead>
										<tr>
											<th>From</th>
											<th>Post Id</th>
											<th>Category</th>
											<th>Message</th>
											<th>Date</th>
											<th>Action</th>
											<th>View</th>
										</tr>
									</thead>
									<tbody>
									<%
										String email2=session.getAttribute("email").toString();
										try{
											Class.forName("com.mysql.jdbc.Driver"); // Load Driver
											Connection con = (Connection) DriverManager.getConnection("jdbc:mysql:///abhi","root","");
											PreparedStatement smt = (PreparedStatement) con.prepareStatement("Update message set viewed='1' where to5=? and viewed=0");
											smt.setString(1, email2); 
											smt.executeUpdate();
											smt = (PreparedStatement) con.prepareStatement("select * from message a, post_ad b where a.to5=? and a.post_id=b.post_id");
											smt.setString(1, email2);
											//smt.setString(2, email2);
											ResultSet rs=smt.executeQuery();
											while(rs.next()){%>
											<tr>
												<td><%=rs.getString("from5")%></td>
												<td><%=rs.getString("post_id")%></td>
												<td><%=rs.getString("category")%></td>
												<td><%=rs.getString("mesg")%></td>
												<td><%=rs.getString("date")%></td>
												<td>
													<form action="inbox-reply.jsp" method="post">
														<input name="replyto" type="hidden" value="<%=rs.getString("post_id")%>" class='form-control input-sm' id="replyto" />
														<input name="msgno" type="hidden" value="<%=rs.getString("mesg_id")%>" class='form-control input-sm' id="msgno" />
														<span class="input-group-btn">
															<button class="btn btn-info btn-lg" type="button">
																<input type="submit" value="Reply"/>
															</button>
														</span>
													</form>	
												</td>
												<td>
													<form action="inbox-view.jsp" method="post">
														<input name="replyto" type="hidden" value="<%=rs.getString("post_id")%>" class='form-control input-sm' id="replyto" />
														<input name="msgno" type="hidden" value="<%=rs.getString("mesg_id")%>" class='form-control input-sm' id="msgno" />
														<span class="input-group-btn">
															<button class="btn btn-info btn-lg" type="button">
																<input type="submit" value="View"/>
															</button>
														</span>
													</form>
												</td>
											</tr>    
											<%}
											   
											//smt.setString(2, email2);
													
											//session.removeAttribute("msg_viw");
											//request.getSession().setAttribute("msg_view", "0");
											smt.close();
											con.close();
										}
										catch(Exception e)
										{
											out.println("<br/>Error with database : "+e);
										}
									%>
									</tbody>
								</table>
							</div>
						</div>
						<!--inbox ends--======================-->		
						<!--sent starts-=======================-->
						
						<div class="tab-content clearfix" id="tab-sent">
							<div class="table-responsive">
								<table class="table table-bordered table-striped">
									<colgroup>
										<col class="col-xs-1">
										<col class="col-xs-1">
										<col class="col-xs-1">
										<col class="col-xs-2">
										<col class="col-xs-1">
										<col class="col-xs-1">
										<col class="col-xs-1">
									</colgroup>
									<thead>
										<tr>
											<th>To</th>
											<th>Post Id</th>
											<th>Category</th>
											<th>Message</th>
											<th>Date</th>
											<th>Action</th>
											<th>View</th>
										</tr>
									</thead>
									<%
										String email3=session.getAttribute("email").toString();
										try{
											Class.forName("com.mysql.jdbc.Driver"); // Load Driver
											Connection con = (Connection) DriverManager.getConnection("jdbc:mysql:///abhi","root","");
											PreparedStatement smt = (PreparedStatement) con.prepareStatement("Update message set viewed='1' where to5=? and viewed=0");
											smt.setString(1, email3); 
											smt.executeUpdate();
											smt = (PreparedStatement) con.prepareStatement("select * from message a, post_ad b where a.from5=? and a.post_id=b.post_id");
											smt.setString(1, email3);
											//smt.setString(2, email3);
											ResultSet rs=smt.executeQuery();
											while(rs.next()){%>
											<tr>
												<td><%=rs.getString("to5")%></td>
												<td><%=rs.getString("post_id")%></td>
												<td><%=rs.getString("category")%></td>
												<td><%=rs.getString("mesg")%></td>
												<td><%=rs.getString("date")%></td>
												<td>
													<form action="inbox-reply.jsp" method="post">
														<input name="replyto" type="hidden" value="<%=rs.getString("post_id")%>" class='form-control input-sm' id="replyto" />
														<input name="msgno" type="hidden" value="<%=rs.getString("mesg_id")%>" class='form-control input-sm' id="msgno" />
														<span class="input-group-btn">
															<button class="btn btn-info btn-lg" type="button">
																<input type="submit" value="Reply"/>
															</button>
														</span>
													</form>	
												</td>
												<td>
													<form action="inbox-view.jsp" method="post">
														<input name="replyto" type="hidden" value="<%=rs.getString("post_id")%>" class='form-control input-sm' id="replyto" />
														<input name="msgno" type="hidden" value="<%=rs.getString("mesg_id")%>" class='form-control input-sm' id="msgno" />
														<span class="input-group-btn">
															<button class="btn btn-info btn-lg" type="button">
																<input type="submit" value="View"/>
															</button>
														</span>
													</form>
												</td>
											</tr>    
											<%}
											   
											//smt.setString(2, email3);
													
											//session.removeAttribute("msg_viw");
											//request.getSession().setAttribute("msg_view", "0");
											smt.close();
											con.close();
										}
										catch(Exception e)
										{
											out.println("<br/>Error with database : "+e);
										}
									%>
								</table>
							</div>
						</div>
						<div class="tab-content clearfix" id="tab-reply">

												<div class="row topmargin-sm">
													<!--ENTER YOUR CONN-->
                                                                                                        <p>Choose conversations to reply.</p>
												</div>

											</div>
                                                <div class="tab-content clearfix" id="tab-view">

												<div class="row topmargin-sm">
													<!--ENTER YOUR CONN-->
                                                                                                        <p>Choose conversations to view.</p>
												</div>

											</div>                
						<!--sent ends-=======================-->	
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