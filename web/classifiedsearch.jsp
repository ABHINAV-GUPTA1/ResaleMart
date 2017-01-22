<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>

<%@ page import="java.util.*,pager.*" %>  
<!--
Author: ABHINAV GUPTA
Author URL: http://ABHINAVgupta.com
-->
<!DOCTYPE html>
<html>
<head>
<%@include file="template_header1.jsp" %>
<%
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
String spageid;
if(request.getParameter("page")==null){
    spageid="1";
} else {
    spageid=request.getParameter("page");
}
int pageid=Integer.parseInt(spageid);  
int total=5;  
if(pageid==1){
} else {  
    pageid=pageid-1;  
    pageid=pageid*total+1;  
}
String t1="",t2="",t3="",t4="";
if(request.getParameter("t4")!=null){
    t4=request.getParameter("t4");
    t1="all";
    t2="all";
    t3="";
}else
{
    if(request.getParameter("t1")==null)
        t1="all";
    else
        t1=request.getParameter("t1");
    if(request.getParameter("t2")==null)
        t2="all";
    else
        t2=request.getParameter("t2");
    if(request.getParameter("t3")==null)
        t3="";
    else
        t3=request.getParameter("t3");
}
String arr[]={"mobiles","electronics","cars","bikes","furniture","pets","books","fashion","kids","services","jobs","realestate"};
int sum_total_array=0;
try{
    Class.forName("com.mysql.jdbc.Driver"); // Load Driver
    Connection con = (Connection) DriverManager.getConnection("jdbc:mysql:///abhi","root","");
    int i=0;
    while(i<arr.length){
        PreparedStatement smt = (PreparedStatement) con.prepareStatement("select count(*) from post_ad where category=?");
        smt.setString(1, arr[i]);
        ResultSet rs=smt.executeQuery();
        if(rs.next()){
            session.setAttribute(arr[i],rs.getString(1));
            sum_total_array += Integer.parseInt(rs.getString(1));
        }else{
            session.setAttribute(arr[i],"0");
        }
        i++;
        rs.close();
        smt.close();
    }
    
    }
    catch(Exception e)
    {
        out.println("<br/>Error with database : ");
    }
if (t1.equals("all") && t2.equals("all")) {
    %>
    <script>
    $(document).ready(function(){
        document.getElementsClassName('<%=t1%>')[0].selected = true;
        document.getElementsClassName('<%=t2%>')[1].selected = true;
        
    });
    </script>
<%    
} else  if (t1.equals("all")){%>
    <script>
    $(document).ready(function(){
        document.getElementById('<%=t1%>').selected = true;
        document.getElementById('<%=t2%>').selected = true;
        
    });
    </script>
<%
}else{
%>
<script>
    $(document).ready(function(){
        
        document.getElementById('<%=t2%>').selected = true;
        document.getElementById('<%=t1%>').selected = true;
    });
    </script>
<%}%>
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
							<!--<script type='text/javascript'>//<![CDATA[ 
							$(window).load(function(){
							 $( "#slider-range" ).slider({
										range: true,
										min: 0,
										max: 9000,
										values: [ 50, 6000 ],
										slide: function( event, ui ) {  $( "#amount" ).val( "$" + ui.values[ 0 ] + " - $" + ui.values[ 1 ] );
										}
							 });
							$( "#amount" ).val( "$" + $( "#slider-range" ).slider( "values", 0 ) + " - $" + $( "#slider-range" ).slider( "values", 1 ) );

							});//]]>  

							</script> -->  
<!-- Products -->
	<div class="total-ads main-grid-border">
		<div class="container">
            <form action="classifiedsearch.jsp" method="get">
				<div class="select-box">
					<div class="select-city-for-local-ads ads-list">
						<label>Select your city to see local ads</label>
                            <select name="t1" id="t1">
                                <option class="all" value='all'>All</option>
                                <optgroup label="Punjab">
                                    <option id="Amritsar" value='Amritsar'>Amritsar</option>
                                    <option id="Chandigarh" value='Chandigarh'>Chandigarh</option>
                                </optgroup>
                            </select>
                    </div>
                    <div class="browse-category ads-list">
						<label>Browse Categories</label>
						<select name="t2" id="t2">
							<option class="all" id="all" value="all">All</option>
							<option id="mobiles" value="mobiles">Mobiles</option>
							<option id="electronics" value="electronics">Electronics & Appliances</option>
							<option id="cars" value="cars">Cars</option>
							<option id="bikes" value="bikes">Bikes</option>
							<option id="furniture" value="furniture">Furniture</option>
							<option id="pets" value="pets">Pets</option>
							<option id="books" value="books">Books, Sports & Hobbies</option>
							<option id="fashion" value="fashion">Fashion</option>
							<option id="kids" value="kids">Kids</option>
							<option id="services" value="services">Services</option>
							<option id="jobs" value="jobs">Jobs</option>
							<option id="realestate" value="realestate">Real Estate</option>
						</select>
					</div>
					<div class="search-product ads-list">
						<label>Search for a specific product</label>
						<div class="search">
							<div id="custom-search-input">
								<div class="input-group">
                                                                    <input value='<%=t3%>' name="t3" type="text" class='form-control input-sm' id="t3" placeholder="Search" />
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
                    <li><a href="classifiedsearch.jsp?t1=all&t2=all&t3=">All <span class="num-of-ads">(<%=sum_total_array%>)</span></a></li>
					<li><a href="classifiedsearch.jsp?t1=all&t2=mobiles&t3=">Mobiles <span class="num-of-ads">(<%=session.getAttribute(arr[0])%>)</span></a></li>
					<li><a href="classifiedsearch.jsp?t1=all&t2=electronics&t3=">Electronics & Appliances  <span class="num-of-ads">(<%=session.getAttribute(arr[1])%>)</span></a></li>
					<li><a href="classifiedsearch.jsp?t1=all&t2=realestate&t3=">Real Estate  <span class="num-of-ads">(<%=session.getAttribute(arr[11])%>)</span></a></li>
					<li><a href="classifiedsearch.jsp?t1=all&t2=furniture&t3=">Furniture    <span class="num-of-ads">(<%=session.getAttribute(arr[4])%>)</span></a></li>
					<li><a href="classifiedsearch.jsp?t1=all&t2=pets&t3=">Pets   <span class="num-of-ads">(<%=session.getAttribute(arr[5])%>)</span></a></li>
					<li><a href="classifiedsearch.jsp?t1=all&t2=books&t3=">Books, Sports & Hobbies    <span class="num-of-ads">(<%=session.getAttribute(arr[6])%>)</span></a></li>
					<li><a href="classifiedsearch.jsp?t1=all&t2=fashion&t3=">Fashion   <span class="num-of-ads">(<%=session.getAttribute(arr[7])%>)</span></a></li>
					<li><a href="classifiedsearch.jsp?t1=all&t2=kids&t3=">Kids   <span class="num-of-ads">(<%=session.getAttribute(arr[8])%>)</span></a></li>
					<li><a href="classifiedsearch.jsp?t1=all&t2=services&t3=">Services   <span class="num-of-ads">(<%=session.getAttribute(arr[9])%>)</span></a></li>
					<li><a href="classifiedsearch.jsp?t1=all&t2=cars&t3=">Cars   <span class="num-of-ads">(<%=session.getAttribute(arr[2])%>)</span></a></li>
                    <li><a href="classifiedsearch.jsp?t1=all&t2=bikes&t3=">Bikes   <span class="num-of-ads">(<%=session.getAttribute(arr[3])%>)</span></a></li>
                    <li><a href="classifiedsearch.jsp?t1=all&t2=jobs&t3=">Jobs   <span class="num-of-ads">(<%=session.getAttribute(arr[10])%>)</span></a></li>
				</ul>
			</div>                 
			<div class="ads-grid">
                <div class="side-bar col-md-3">                
					<div class="search-hotel">
						<h3 class="sear-head">Name contains</h3>
                        <form action="classifiedsearch.jsp" method="get">
							<input type="text" name ="t3" value="Product name..." onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Product name...';}">
							<input type="submit" value=" ">
                        </form>
					</div>
                    <!--
					<div class="range">
						<h3 class="sear-head">Price range</h3>
							<ul class="dropdown-menu6">
								<li>	                
									<div id="slider-range"></div>							
									<input type="text" id="amount" style="border: 0; color: #ffffff; font-weight: normal;" />
								</li>			
                            </ul>    
                    #DIV CLOSED AT SCRIPT END
					-->
							<!---->
					
				<!--<script type='text/javascript'>//<![CDATA[ 
						$(window).load(function(){
							 $( "#slider-range" ).slider({
										range: true,
										min: 0,
										max: 9000,
										values: [ 50, 6000 ],
										slide: function( event, ui ) {  $( "#amount" ).val( "Rs." + ui.values[ 0 ] + " - Rs." + ui.values[ 1 ] );
										}
							 });
							$( "#amount" ).val( "Rs." + $( "#slider-range" ).slider( "values", 0 ) + " - Rs." + $( "#slider-range" ).slider( "values", 1 ) );

							});//]]>  

							</script>
					</div>			
				-->    
					<div class="featured-ads">
						<h2 class="sear-head fer">Featured Ads</h2>
						<%			
							try{
								Class.forName("com.mysql.jdbc.Driver"); // Load Driver
								Connection con = (Connection) DriverManager.getConnection("jdbc:mysql:///abhi","root","");
								PreparedStatement smt;
								smt=con.prepareStatement("select * from post_ad LIMIT 0, 3");
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
								}
							}
							catch(Exception e){
								out.println("Error in fetured ads");
							}
						%>	
						<div class="clearfix"></div>		
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
															List<search> s = pageGet.getRecords(pageid, total, t1, t2, t3, t4);
															for(search s1:s)
                                                                                                                        {
                                                                                                                            out.println("<div class='line'></div>");
																String n=s1.getPost_id();
																out.println("<a href=single.jsp?x="+n+">");
																	out.println("<li>");
																		out.println("<img src='"+s1.getPhoto()+"' title='' alt='' />");
																		out.println("<section class='list-left'>");
																			out.println("<h5 class='title'>");
																				out.println(s1.getTitle());
																			out.println("</h5>");
																			out.println("<span class='adprice'>Rs. "+s1.getCost()+"/-</span>");
																			out.println("<p class='catpath'>Category: "+ s1.getCategory() +"</p>");
																		out.println("</section>");
																		out.println("<section class='list-right'>");
																			out.println("<span class='date'>");
																				out.println( s1.getDate() );
																			out.println("</span>");
																			out.println("<span class='cityname'>"+ s1.getCity() +"</span>");
																		out.println("</section>");
																		out.println("<div class='clearfix'></div>");
																	out.println("</li>"); 
																out.println("</a>");
															}
														}
														catch(Exception e){
															out.println("Error IN ads display");
														}
													%>
											</ul>
										</div>
									</div>
								</div>
                                                                                        <div class="line"></div>
                                                                <ul class="pagination pagination-sm">
									<!--<li><a href=>Prev</a></li> -->
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