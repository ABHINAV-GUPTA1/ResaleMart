
<%@page import="java.text.SimpleDateFormat"%>
<!--
Author: ABHINAV GUPTA
Author URL: http://ABHINAVgupta.com
-->
<!DOCTYPE html>
<html>
<head>

<!--ABHINAV GUPTA-->
<style>
#abhi{
	padding: 20px;
	
	font-weight: bold;
}
#ab{
         padding: 20px;
	font-weight: bold;
}
.padd2{
    padding: 20px;
}
.padd1{
    padding:20px;
}
</style>
<%@include file="template_header.jsp" %>
<%@include file="template_header_body_black.jsp" %>
<%@ page import="com.oreilly.servlet.MultipartRequest" %>    
<%@ page import="java.io.*,java.util.*" %>
<%@ page import="javax.servlet.*,java.text.*" %>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
    <%
        String name="", email1="", pass="", address="", dob="", contact="", bio="", about="", pc="", p=""; 
try{
    ServletContext px = this.getServletContext();
    name=session.getAttribute("name").toString();
    email1=session.getAttribute("mymail").toString();
    pass=session.getAttribute("pwd").toString();
    address=session.getAttribute("cy").toString();
    dob=session.getAttribute("dob1").toString();
    contact=session.getAttribute("mob").toString();
    bio=session.getAttribute("b").toString();
    about=session.getAttribute("abt").toString();
    //pc = "";
    session.removeAttribute("mymail");
    session.removeAttribute("pwd");
    session.removeAttribute("cy");
    session.removeAttribute("dob1");
    session.removeAttribute("mob");
    session.removeAttribute("b");
    session.removeAttribute("abt");
    session.removeAttribute("name");
    String root = px.getRealPath("/");
    File path = new File(root +"/impdata/"+email1);
    if(!path.exists()) 
    {
        boolean status = path.mkdirs();	
    }
    p=root+"/impdata/"+email1;
    MultipartRequest m = new MultipartRequest(request,p,10*1024*1024);

    Enumeration x8=m.getFileNames();

    while(x8.hasMoreElements())
    {
        String n1=x8.nextElement().toString();
        pc=m.getFilesystemName(n1);
    }

    p="impdata/"+email1+"/"+pc;

    //System.out.println(p);         
    //out.print("successfully uploaded <br/>Email: "+email1+"<br/>ADDRESS: "+address+"<br/>DOB: "+dob+"<br/>Contact: "+contact+"<br/>");
    //String r=m.getParameter("picture");
    //out.println(r);
    Date dNow =new Date();
    DateFormat d=DateFormat.getInstance();
try
{
Class.forName("com.mysql.jdbc.Driver"); // Load Driver

Connection con = DriverManager.getConnection("jdbc:mysql:///abhi","root","");

PreparedStatement smt = con.prepareStatement("insert into resale1 values(?,?,?,?,?,?,?,?,?,?)");
smt.setString(1,name);
smt.setString(2,email1);
smt.setString(3,pass);
smt.setString(4,address);
smt.setString(5,dob);
smt.setString(6,contact);
smt.setString(7,p);
smt.setString(8,d.format(dNow));
smt.setString(9,bio);
smt.setString(10,about);
smt.executeUpdate();
smt.close();
try{
    smt=con.prepareStatement("insert into loginfo(email,done) values(?,?)");
    smt.setString(1, email1);
    smt.setString(2, "Registration");
    smt.executeUpdate();
    smt.close();
}catch(Exception e)
{
out.print("<br/>Error with database : "+e);
%>
            <div class='row' >
                <div class="control-label col-md-2 col-md-offset-2 padd2">
		<a href="register.jsp">Register Here</a>
            </div>
                </div>
            <%@include file="template_footer.jsp" %>
        <%
        return;
}

}
catch(Exception e)
{
out.print("<br/><h1>Error with database : register again</h1>");
%>
            <div class='row' >
                <div class="control-label col-md-2 col-md-offset-2 padd2">
		<a href="register.jsp">Register Here</a>
            </div>
                </div>
            <%@include file="template_footer.jsp" %>
        <%
        return;
}
} catch(Exception e11) {out.print("<br/><h1>Error with database : register again</h1>");
%>
            <div class='row' >
                <div class="control-label col-md-2 col-md-offset-2 padd2">
		<a href="register.jsp">Register Here</a>
            </div>
                </div>
            <%@include file="template_footer.jsp" %>
        <%
        return;
}
//String name="ABHINAV", p="images/abhinav/n_check.jpg",email1="abc@a.com", pass="jdjk", address="dkdkd", dob="192222", contact="1323247677575757757575772";
%> 
            
<!-- Content
		============================================= -->
		<section id="content">

			<div class="content-wrap">

				<div class="container clearfix">

					<!-- Contact Form
					============================================= -->
					<div class="col_half">

						<div class="fancy-title title-dotted-border">
							<h3>Registered Successfully</h3>
						</div>

						<div class="contact-widget">

							<div class="contact-form-result"></div>

							<form class="nobottommargin" id="template-contactform" name="template-contactform" action="login.jsp" method="post">
								<div class="col_one_third">		
										<label for='name'>Name</label>
											<input class="sm-form-control" value='<%=name%>' id='name' name='name' readonly type='text'>
									</div>
									<div class="col_one_third">		
										<label for='email'>Email</label>
											<input class="sm-form-control" value='<%=email1%>' id='email' name='email' readonly type='email'>
									</div>
									<div class="col_one_third col_last">		
										<label for='password'>Password</label>
											<input class="sm-form-control" value='<%=pass%>' id='password' name='password' readonly type='text'>
									</div>
									<div class="clear"></div>
									<div class="col_full">		
										<label for='address'>Address</label>
                                                                                <textarea class="sm-form-control" name='addr' id='address' readonly cols="30" rows="6"> <%=address%> </textarea>
									</div>
                                                                        <div class="clear"></div>

									<div class="col_one_third">		
										<label for='date'>Date Of Birth</label>
											<input class="sm-form-control" id='date' value='<%=dob%>' readonly name='date12' type="text" />
									</div>
									<div class="col_one_third">		
										<label for='contact'>Contact Number</label>
											<input class="sm-form-control" name='con' value='<%=contact%>' id='contact' readonly type='text'>
									</div>
									<div class="col_one_third hidden col_last">		
											<input type='text'>
									</div>
									
									<div class='col_full' >
										<a href="login.jsp" class="button button-3d nomargin">Login Here</a>
									</div>
							</form>
						</div>

					</div><!-- Contact Form End -->

					<!-- Google Map
					============================================= -->
					<div class="col_half col_last">

						<section id="google-map" class="gmap" style="height: 410px;">
							<img src='<%=p%>' width="430px" height="410px" class="img img-rounded">
						</section>

					</div><!-- Google Map End -->

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
								<h3>Speak to Us<span class="subtitle">(+91) 7696244723</span></h3>
							</div>
						</div>

						<div class="col-md-3 col-sm-6 bottommargin clearfix">
							<div class="feature-box fbox-center fbox-bg fbox-plain">
								<div class="fbox-icon">
									<a href="#"><i class="icon-skype2"></i></a>
								</div>
								<h3>Make a Video Call<span class="subtitle">abhinavOnSkype</span></h3>
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

<%@include file="template_footer.jsp" %>