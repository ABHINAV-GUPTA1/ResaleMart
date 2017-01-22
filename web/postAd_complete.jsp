<%@include file="secure-jsp.jsp" %>
<%@ page import="com.oreilly.servlet.MultipartRequest" %>  
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page import="java.io.*,java.util.*" %>
<%@ page import="javax.servlet.*,java.text.*" %>
<%
ServletContext px = this.getServletContext();

String email1=session.getAttribute("email").toString();
String b1=session.getAttribute("brnd").toString();
String b2=session.getAttribute("cond").toString();
String cost = session.getAttribute("cost").toString();
String select = session.getAttribute("sel").toString();
String title1 = session.getAttribute("ttl").toString();
String description = session.getAttribute("desc").toString();
session.removeAttribute("sel");
session.removeAttribute("ttl");
session.removeAttribute("desc");
session.removeAttribute("brnd");
session.removeAttribute("cond");
session.removeAttribute("cost");
String pc="";
String root = px.getRealPath("/");
File path = new File(root +"/impdata/"+email1);
    if(!path.exists()) 
    {
        out.println("<h1>Server error</h1>"+email1);
        return;
    }
    path=new File(root+"/impdata/"+email1+"/"+select+"/"+title1);
    if(!path.exists()) 
    {
        boolean status = path.mkdirs();	
    }
    String p=root+"/impdata/"+email1+"/"+select+"/"+title1;
    MultipartRequest m = new MultipartRequest(request,p,10*1024*1024);
    /*Enumeration x8=m.getFileNames();
    while(x8.hasMoreElements())
    {
        String n1=x8.nextElement().toString();
        pc=m.getFilesystemName(n1);
    }*/
    String p1="impdata/"+email1+"/"+select+"/"+title1;
    /*System.out.println(p);*/
Date dNow = new Date();
DateFormat d=DateFormat.getInstance();
//E=day of week,a=am,pm,zzz=gmt
    String pic[]={"","",""};
    File dir = new File(p);
    int i=0;
    for (File f : dir.listFiles()){
        pic[i++]=p1+"/"+f.getName();
    }
    
try{
    Class.forName("com.mysql.jdbc.Driver"); // Load Driver
    Connection con = (Connection) DriverManager.getConnection("jdbc:mysql:///abhi","root","");

    PreparedStatement smt = (PreparedStatement) con.prepareStatement("insert into post_ad(category,title,description,photo,photo_1,photo_2,email,contact,city,date,cost,condition1,brand) values (?,?,?,?,?,?,?,?,?,?,?,?,?)");
    
    smt.setString(1,select);
    smt.setString(2,title1);
    smt.setString(3,description);
    smt.setString(4,pic[0]);
    smt.setString(5,pic[1]);
    smt.setString(6,pic[2]);
    smt.setString(7,session.getAttribute("email").toString());
    smt.setString(8,session.getAttribute("contact").toString());
    smt.setString(9,session.getAttribute("address").toString());
    smt.setString(10,d.format(dNow));
    smt.setString(11,cost);
    smt.setString(12,b2);
    smt.setString(13,b1);
    smt.executeUpdate();
    smt.close();
    }
    catch(Exception e)
    {
        out.println("<br/>Error with database : "+e);
    %>
            <div class='row' >
                <div class="control-label col-md-2 col-md-offset-2 padd2">
		<a href="register.jsp">Register Here</a>
            </div>
                </div>
            <%@include file="footer.jsp" %>
        <%
        return;
}

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
<div class="clearfix"></div>
		<!-- Content
		============================================= -->
		<section id="content">

			<div class="content-wrap">

				<div class="promo promo-full promo-border header-stick bottommargin-lg">
					<div class="container clearfix">
						<h3>Your AD is<span> posted </span> Successfully.</h3>
						<span>Below is link to your ad</span>
                                                <a href="classifiedsearch.jsp?t4=<%=email1%>" class="button button-reveal button-xlarge button-rounded tright"><i class="icon-angle-right"></i><span>Browse Now</span></a>
					</div>
				</div>
			</div>
		</section>		
<!--Content
====================================================-->

	<%@include file="template_footer.jsp" %>