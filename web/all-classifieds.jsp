<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page import="java.util.*" %>  
<!--
Author: ABHINAV GUPTA
Author URL: http://ABHINAVgupta.com
-->  
<%
/*String t1="",t2="",t3="";
if(request.getParameter("t1")!=null ||request.getParameter("t2")!=null||request.getParameter("t3")!=null){
    t1=request.getParameter("t1");
    t2=request.getParameter("t2");
    t3=request.getParameter("t3");
}else{
    t1="amritsar";
    t2="all";
    t3="";
}*/
String str=request.getRequestURL()+"?";
Enumeration<String> paramNames = request.getParameterNames();
while (paramNames.hasMoreElements())
{
    String paramName = paramNames.nextElement();
    String[] paramValues = request.getParameterValues(paramName);
    for (int i = 0; i < paramValues.length; i++) 
    {
        String paramValue = paramValues[i];
        if (!paramName.equals("page")) 
            str=str + paramName + "=" + paramValue;
    }
    str=str+"&";
}
String url=str.substring(0,str.length()-1);
if (!url.contains("?")){
    url = url + "?"; 
}
String backurl=request.getHeader("Referer");
String arr[]={"mobiles","electronics","cars","bikes","furniture","pets","books","fashion","kids","services","jobs","realestate"};    
try{
 %><%@include file="dbConnection.jsp" %>
    <%
    int i=0;
    int total_ads=0;
    String tot_ads="total_ads";
    while(i<arr.length){
        PreparedStatement smt = (PreparedStatement) con.prepareStatement("select count(*) from post_ad where category=?");
        smt.setString(1, arr[i]);
        ResultSet rs=smt.executeQuery();
        if(rs.next()){
            session.setAttribute(arr[i],rs.getString(1));
            total_ads += Integer.parseInt(rs.getString(1));
        }else{
            session.setAttribute(arr[i],"0");
        }
        i++;
        rs.close();
        smt.close();
    }
    session.setAttribute(tot_ads,new Integer(total_ads).toString());
    }
    catch(Exception e)
    {
        out.println("<br/>Error with database : "+e);
    }
%>
<!DOCTYPE html>
<html>
<head>
<%@include file="template_header1.jsp" %>	

<%@include file="template_header.jsp" %>
        <!--Content design-->
        <style>
            #page-title {
                position: relative;
                padding: 50px 0;
                background-color: #F5F5F5;
                border-bottom: 1px solid #EEE;
            }
            </style>
<%@include file="template_header_body.jsp" %>
<!-- Page Title
		============================================= -->
	<section id="page-title">        
            <div class="container clearfix">
                <h1>Search</h1>
                <span>Search Ads</span>
                <ol class="breadcrumb">
					<li><a href="index.jsp">Home</a></li>
					<li class="active">Search</li>
				</ol>
            </div>
        </section><!-- #page-title end -->
<!---->
<script type="text/javascript" src="js/jquery-ui.js"></script>
<script type="text/javascript" src="js/jquery-1.10.2.js"></script>							
 <!-- Products -->
	<div class="total-ads main-grid-border">
		<div class="container">
                    <form action="classifiedsearch.jsp" method="get">
			<div class="select-box">
				<div class="select-city-for-local-ads ads-list">
					<label>Select your city to see local ads</label>
                                        <select name="t1" id="t1">
                                                    <option selected value='all'>All</option>
                                            <optgroup label="Punjab">
                                                    <option value='Amritsar'>Amritsar</option>
                                                    <option value='Chandigarh'>Chandigarh</option>
                                            </optgroup>
                                        </select>
                                                    
				</div>
                            <div class="browse-category ads-list">
					<label>Browse Categories</label>
					<select name="t2" id="t2">
					  <option value="all">All</option>
					  <option value="mobiles">Mobiles</option>
					  <option value="electronics">Electronics & Appliances</option>
					  <option value="cars">Cars</option>
					  <option value="bikes">Bikes</option>
					  <option value="furniture">Furniture</option>
					  <option value="pets">Pets</option>
					  <option value="books">Books, Sports & Hobbies</option>
					  <option value="fashion">Fashion</option>
					  <option value="kids">Kids</option>
					  <option value="services">Services</option>
					  <option value="jobs">Jobs</option>
					  <option value="realestate">Real Estate</option>
					</select>
				</div>
				<div class="search-product ads-list">
					<label>Search for a specific product</label>
					<div class="search">
						<div id="custom-search-input">
						<div class="input-group">
							<input name="t3" type="text" class='form-control input-sm' id="t3" placeholder="Search" />
							<span class="input-group-btn">
								<button class="btn btn-info btn-lg" type="button">
                                                                    <input type="submit" value="search"/>
								</button>
							</span>
						</div>
					</div>
					</div>
				</div>
				<div class="clearfix"></div>
                 </div>
                        </form>
			<div class="all-categories">
				<h3> Select your category and find the perfect ad</h3>
				<ul class="all-cat-list">
                                        <li><a href="mobiles.jsp">All <span class="num-of-ads">(<%=session.getAttribute("total_ads")%>)</span></a></li>
					<li><a href="mobiles.jsp">Mobiles <span class="num-of-ads">(<%=session.getAttribute(arr[0])%>)</span></a></li>
					<li><a href="electronics-appliances.jsp">Electronics & Appliances  <span class="num-of-ads">(<%=session.getAttribute(arr[1])%>)</span></a></li>
					<li><a href="real-estate.jsp">Real Estate  <span class="num-of-ads">(<%=session.getAttribute(arr[11])%>)</span></a></li>
					<li><a href="furnitures.jsp">Furniture    <span class="num-of-ads">(<%=session.getAttribute(arr[4])%>)</span></a></li>
					<li><a href="pets.jsp">Pets   <span class="num-of-ads">(<%=session.getAttribute(arr[5])%>)</span></a></li>
					<li><a href="books-sports-hobbies.jsp">Books, Sports & Hobbies    <span class="num-of-ads">(<%=session.getAttribute(arr[6])%>)</span></a></li>
					<li><a href="fashion.jsp">Fashion   <span class="num-of-ads">(<%=session.getAttribute(arr[7])%>)</span></a></li>
					<li><a href="kids.jsp">Kids   <span class="num-of-ads">(<%=session.getAttribute(arr[8])%>)</span></a></li>
					<li><a href="services.jsp">Services   <span class="num-of-ads">(<%=session.getAttribute(arr[9])%>)</span></a></li>
					<li><a href="cars.jsp">Cars   <span class="num-of-ads">(<%=session.getAttribute(arr[2])%>)</span></a></li>
                    <li><a href="bikes.jsp">Bikes   <span class="num-of-ads">(<%=session.getAttribute(arr[3])%>)</span></a></li>
                    <li><a href="jobs.jsp">Jobs   <span class="num-of-ads">(<%=session.getAttribute(arr[10])%>)</span></a></li>
				</ul>
			</div>                    
			<div class="ads-grid">
                            
                            <div class="side-bar col-md-3">
					<div class="search-hotel">
					<h3 class="sear-head">Name contains</h3>
					<form>
						<input type="text" value="Product name..." onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Product name...';}" required="">
						<input type="submit" value=" ">
					</form>
				</div>
				
				
							<!---->
			<script type="text/javascript" src="js/jquery-ui.js"></script>
							
				<div class="featured-ads">
				
                                    <h2 class="sear-head fer">Featured Ads</h2>
                                        <div class='clearfix'></div>
<%			
try{
Class.forName("com.mysql.jdbc.Driver"); // Load Driver
Connection con = (Connection) DriverManager.getConnection("jdbc:mysql:///abhi","root","");
PreparedStatement smt;
smt=con.prepareStatement("select * from post_ad LIMIT 0, 5");
ResultSet rs=smt.executeQuery();
while(rs.next())
{
String n=rs.getString("post_id");
out.println("<div class='featured-ad'>");
out.println("<a href=single.jsp?x="+n+">");
out.println("<div class='featured-ad-left'>");
out.println("<img src='"+rs.getString("photo")+"' title='adv images' alt='Adv. Images' />");
out.println("</div>");
out.println("<div class='featured-ad-right'><h4>");
out.println(rs.getString("title"));
out.println("</h4>");
out.println("<p>Rs. "+rs.getString("cost")+"/-</p>");
out.println("</div>");
out.println("<div class='clearfix'></div>");
out.println("</a>");
out.println("</div>");
out.println("<div class='clearfix'></div>");
}
}
catch(Exception e){
out.println("Error"+e);
}
%>					
				</div>
                                </div>
				<div class="ads-display col-md-9">
					<div class="wrapper">					
					<div class="bs-example bs-example-tabs" role="tabpanel" data-example-id="togglable-tabs">
					  <ul id="myTab" class="nav nav-tabs nav-tabs-responsive" role="tablist">
						<li role="presentation" class="active">
						  <a href="#home" id="home-tab" role="tab" data-toggle="tab" aria-controls="home" aria-expanded="true">
							<span class="text">All Ads</span>
						  </a>
						</li>
								  </ul>
					  <div id="myTabContent" class="tab-content">
						<div role="tabpanel" class="tab-pane fade in active" id="home" aria-labelledby="home-tab">
						   <div>
												<div id="container">
								<!--<div class="view-controls-list" id="viewcontrols">
									<label>view :</label>
									<a class="gridview"><i class="glyphicon glyphicon-th"></i></a>
									<a class="listview active"><i class="glyphicon glyphicon-th-list"></i></a>
								</div>-->
								<div class="sort">
								   <div class="sort-by">
										<label>Sort By : </label>
										<select>
														<option value="">Most recent</option>
														<option value="">Price: Rs Low to High</option>
														<option value="">Price: Rs High to Low</option>
										</select>
									   </div>
									 </div>
								<div class="clearfix"></div>
                                                                <ul class="list">
<%			
try{
%><%@include file="dbConnection.jsp" %>
    <%
PreparedStatement smt;    
smt = (PreparedStatement) con.prepareStatement("select * from post_ad a join categories b on a.category=b.value_name");
ResultSet rs=smt.executeQuery();
while(rs.next())
{
String n=rs.getString("post_id");
out.println("<div class='line'></div>");
out.println("<a href=single.jsp?x="+n+">");
out.println("<li>");
out.println("<img src='"+rs.getString("photo")+"' title='' alt='' />");
out.println("<section class='list-left'>");
out.println("<h5 class='title'>");
out.println(rs.getString("title"));
out.println("</h5>");
out.println("<span class='adprice'>Rs. "+rs.getString("cost")+"/-</span>");
out.println("<p class='catpath'>"+rs.getString("categories")+"</p>");
out.println("</section>");
out.println("<section class='list-right'>");
out.println("<span class='date'>");
out.println(rs.getString("date"));
out.println("</span>");
out.println("<span class='cityname'>"+rs.getString("city")+"</span>");
out.println("</section>");
out.println("<div class='clearfix'></div>");
out.println("</li>"); 
out.println("</a>");

}
smt.close();
rs.close();
con.close();
}
catch(Exception e){
out.println("Error");
}
%>

							</ul>
						</div>
							</div>
						</div>
						
						<div class='line'></div>
						<ul class="pagination pagination-sm">
							<!--<li><a href="#">Prev</a></li>-->
							<li> <a href=<%=url+"page=1"%> >1</a></li>
                                                        <li><a href=<%=url+"page=2"%> >2</a></li>
                                                        <li><a href=<%=url+"page=3"%> >3</a></li>
                                                        <li><a href=<%=url+"page=4"%> >4</a></li>
                                                        <li><a href=<%=url+"page=5"%> >5</a></li>
                                                        <li><a href=<%=url+"page=6"%> >6</a></li>
                                                        <li><a href=<%=url+"page=7"%> >7</a></li>
                                                        <li><a href=<%=url+"page=8"%> >8</a></li>
							<!--<li><a href="#">Next</a></li>-->
						</ul>
					  </div>
					</div>
				</div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>	
	</div>
	<!-- // Products -->
<%@include file="template_footer.jsp" %>