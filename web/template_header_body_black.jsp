</head>
<body class="stretched">        
<!--
Author: ABHINAV GUPTA
Author URL: http://ABHINAVGUPTA.COM
-->
    <div id="wrapper" class="clearfix">
		<header id="header" class="full-header dark">
			<div id="header-wrap">
				<div class="container clearfix">
                    <div id="primary-menu-trigger"><i class="icon-reorder"></i></div>
                    <!-- Logo============================================= -->
					<div id="logo">
						<a href="index.jsp" class="standard-logo" data-dark-logo="images/abhinav/logo-dark.png"><img src="images/abhinav/logo.png" alt="abhinav Logo"></a>
						<a href="index.jsp" class="retina-logo" data-dark-logo="images/abhinav/logo-dark@2x.png"><img src="images/abhinav/logo@2x.png" alt="abhinav Logo"></a>
					</div><!-- #logo end -->
                                        <%if (session.getAttribute("email")!=null){%>
                                        <div id="top-account" class="dropdown">
						<a href="#" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true"><i class="icon-user"></i><i class="icon-angle-down"></i></a>
					 	<ul class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdownMenu1">
							<li><a href="profile.jsp">Profile</a></li>
							<li><a href="inbox.jsp">Messages <span class="badge"><%=session.getAttribute("msg_view").toString()%></span></a></li>
							<li><a href="#">Settings</a></li>
							<li role="separator" class="divider"></li>
							<li><a href="logout">Logout <i class="icon-signout"></i></a></li>
						</ul>
                    </div>   
                                                        <%}%>
            <!-- Primary Navigation
					============================================= -->
					<nav id="primary-menu">
						<ul>
							<li>
							<%String email="", value="";
							if (session.getAttribute("email")!=null){email=session.getAttribute("email").toString();
							email="classifiedsearch.jsp?t4="+email; 
							value="My Ads";
                                                        %>
                                                        <a href="index.jsp" > <div>Home</div></a>
                                                        </li>
                                                        <li>
                                                        <a href="profile.jsp" > <div>Profile</div></a>
                                                        </li>
                                                        <li>
                                                        <a href=<%=email%> > <div><%=value%> </div></a>
                                                        </li>
                                                        <%
                                                        }
							else{value="Login";email="login.jsp";
							%>
                                                        <a href=<%=email%> > <div><%=value%> </div></a>
								
							</li>
                                                        <li> 
                                                            <a href="register.jsp" ><div>Register</div> </a>
                                                        </li>
                                                        <%}%>
							<li><a href=""><div>Ads</div></a>
								<ul>
									<li><a href="all-classifieds.jsp"><div>All Ads</div></a></li>
									<li><a href=""><div>Books, Sports, and Hobbies </div></a>
										<ul>
											<li><a href="classifiedsearch.jsp?t2=books"><div>Books</div></a></li>
											<li><a href="classifiedsearch.jsp?t2=books"><div>Sports</div></a></li>
											<li><a href="classifiedsearch.jsp?t2=books"><div>Hobbies</div></a></li>
										</ul>
									</li>									
									<li><a href="classifiedsearch.jsp?t2=mobiles"><div>Mobiles</div></a></li>
									<li><a href="classifiedsearch.jsp?t2=cars"><div>Cars</div></a></li>
									<li><a href="classifiedsearch.jsp?t2=electronics"><div>Electronics and appliances</div></a>
									<!--	<ul>
											<li><a href=""><div>DBDKNJD</div></a></li>
											<li><a href=""><div>BBAJK</div></a></li>
											<li><a href=""><div>KJDJKK</div></a></li>
											<li><a href=""><div>JJKD</div></a></li>
										</ul>-->
									</li>
									<li><a href="classifiedsearch.jsp?t2=bikes"><div>Bikes</div></a></li>
									<li><a href="classifiedsearch.jsp?t2=furniture"><div>Furniture</div></a></li>
                                                                        <li><a href="classifiedsearch.jsp?t2=pets"><div>Pets</div></a></li>
                                                                        <li><a href="classifiedsearch.jsp?t2=kids"><div>Kids</div></a></li>
                                                                        <li><a href="classifiedsearch.jsp?t2=services"><div>Services</div></a></li>
                                                                        <li><a href="classifiedsearch.jsp?t2=fashion"><div>Fashion</div></a></li>
                                                                        <li><a href="classifiedsearch.jsp?t2=jobs"><div>Jobs</div></a></li>
                                                                        <li><a href="classifiedsearch.jsp?t2=realestate"><div>Real Estate</div></a></li>
                                                                </ul>
                                                        </li>
						</ul>
						<!-- Top Search
						============================================= -->
						<div id="top-search">
							<a href="#" id="top-search-trigger"><i class="icon-search3"></i><i class="icon-line-cross"></i></a>
							<form action="classifiedsearch.jsp" method="get">
								<input type="text" id="t3" name="t3" class="form-control" value="" placeholder="Type &amp; Hit Enter.. To Search ads">
							</form>
						</div><!-- #top-search end -->

					</nav><!-- #primary-menu end -->
				</div>
			</div>
		</header>